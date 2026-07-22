package ani.aayush262.dartotsu

import android.content.Context
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
    private val mainHandler = Handler(Looper.getMainLooper())
    private val appStartTime = System.currentTimeMillis()

    // batching state
    private val logBuffer = mutableListOf<String>()
    @Volatile private var flushScheduled = false

    private companion object {
        private const val TAG = "NativeLogger"
        private const val FLUSH_INTERVAL_MS = 250L
        private const val MAX_BATCH_SIZE = 100
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
                        "*:V",
                        "flutter:S",
                        "DartVM:S",
                        "FlutterJNI:S",
                        "FlutterActivity:S",
                        "io.flutter:S"
                    )
                )

                val reader = BufferedReader(InputStreamReader(process.inputStream))
                var line: String? = null

                while (!Thread.currentThread().isInterrupted &&
                    reader.readLine().also { line = it } != null
                ) {
                    val logLine = line ?: continue

                    val logTime = parseLogTime(logLine) ?: continue
                    if (logTime < appStartTime) continue

                    synchronized(logBuffer) {
                        logBuffer.add(logLine)

                        if (logBuffer.size >= MAX_BATCH_SIZE) {
                            scheduleFlush()
                        }
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
        logThread?.interrupt()
        logThread = null
    }
}