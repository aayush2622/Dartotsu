package ani.aayush262.dartotsu

import android.app.ActivityManager
import android.app.ApplicationExitInfo
import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel
import java.io.BufferedReader
import java.io.InputStreamReader
import java.text.SimpleDateFormat
import java.util.Locale
import java.util.Calendar

class NativeLogger : FlutterPlugin {

    private lateinit var channel: MethodChannel
    private var logThread: Thread? = null
    @Volatile private var logProcess: Process? = null
    private val mainHandler = Handler(Looper.getMainLooper())
    private val appStartTime = System.currentTimeMillis()

    // batching state
    private val logBuffer = mutableListOf<String>()
    @Volatile private var flushScheduled = false

    private companion object {
        private const val TAG = "NativeLogger"
        private const val FLUSH_INTERVAL_MS = 250L
        private val NOISE = listOf(
            "avc:  denied",
            "Access denied finding property",
            "FlagStore",
            "Suspending all threads",
            "Already have a pending vsync"
        )
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        val context = binding.applicationContext

        channel = MethodChannel(binding.binaryMessenger, "native_logger")
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "startLogs" -> {
                    startLogStreaming(context)
                    result.success(null)
                }
                "getLastExit" -> {
                    result.success(lastExit(context))
                }
                "getCrashLogFileDir" -> {
                    result.success("${context.filesDir.absolutePath}/logs/JavaCrash.txt")
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun startLogStreaming(context: Context) {
        if (logThread != null) return

        val uid = context.applicationInfo.uid

        logThread = Thread {
            try {
                val process = Runtime.getRuntime().exec(
                    arrayOf(
                        "logcat",
                        "--uid=$uid",
                        "-v", "time",
                        "*:W",
                        "flutter:S",
                        "DartVM:S",
                        "FlutterJNI:S",
                        "FlutterActivity:S",
                        "io.flutter:S"
                    )
                )

                logProcess = process
                val reader = BufferedReader(InputStreamReader(process.inputStream))
                var line: String? = null

                while (!Thread.currentThread().isInterrupted &&
                    reader.readLine().also { line = it } != null
                ) {
                    val logLine = line ?: continue

                    val logTime = parseLogTime(logLine) ?: continue
                    if (logTime < appStartTime) continue
                    if (NOISE.any { logLine.contains(it) }) continue

                    synchronized(logBuffer) {
                        logBuffer.add(logLine)
                        scheduleFlush()
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error reading logcat", e)
            }
        }.apply { start() }
    }

    private fun scheduleFlush() {
        if (flushScheduled) return
        flushScheduled = true

        mainHandler.postDelayed({
            val batch: List<String>
            synchronized(logBuffer) {
                batch = logBuffer.toList()
                logBuffer.clear()
            }

            flushScheduled = false

            if (batch.isNotEmpty()) {
                channel.invokeMethod("onLogs", batch)
            }
        }, FLUSH_INTERVAL_MS)
    }

    private fun lastExit(context: Context): String? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) return null
        return try {
            val manager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val info = manager.getHistoricalProcessExitReasons(context.packageName, 0, 1)
                .firstOrNull() ?: return null
            val prefs = context.getSharedPreferences("native_logger", Context.MODE_PRIVATE)
            if (info.timestamp <= prefs.getLong("lastExit", 0L)) return null
            prefs.edit().putLong("lastExit", info.timestamp).apply()
            val reason = when (info.reason) {
                ApplicationExitInfo.REASON_CRASH -> "CRASH"
                ApplicationExitInfo.REASON_CRASH_NATIVE -> "CRASH_NATIVE"
                ApplicationExitInfo.REASON_ANR -> "ANR"
                ApplicationExitInfo.REASON_LOW_MEMORY -> "LOW_MEMORY"
                ApplicationExitInfo.REASON_SIGNALED -> "SIGNALED"
                ApplicationExitInfo.REASON_EXCESSIVE_RESOURCE_USAGE -> "EXCESSIVE_RESOURCE_USAGE"
                ApplicationExitInfo.REASON_INITIALIZATION_FAILURE -> "INITIALIZATION_FAILURE"
                ApplicationExitInfo.REASON_DEPENDENCY_DIED -> "DEPENDENCY_DIED"
                else -> return null
            }
            val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(info.timestamp)
            "reason=$reason status=${info.status} time=$time " +
                "rssKb=${info.rss} pssKb=${info.pss} importance=${info.importance}\n" +
                "description=${info.description ?: ""}"
        } catch (e: Exception) {
            Log.e(TAG, "Error reading exit info", e)
            null
        }
    }

    private fun parseLogTime(line: String): Long? {
        return try {
            val timePart = line.take(18) // MM-dd HH:mm:ss.SSS
            val now = Calendar.getInstance()

            val formatter = SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss.SSS",
                Locale.US
            )

            formatter.parse("${now.get(Calendar.YEAR)}-$timePart")?.time
        } catch (_: Exception) {
            null
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        logProcess?.destroy()
        logProcess = null
        logThread?.interrupt()
        logThread = null
    }
}