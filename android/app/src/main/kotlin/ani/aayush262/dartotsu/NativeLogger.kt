package ani.aayush262.dartotsu
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel
import java.io.BufferedReader
import java.io.InputStreamReader

class NativeLogger : FlutterPlugin {
    private lateinit var channel: MethodChannel
    private var logThread: Thread? = null
    private val mainHandler = Handler(Looper.getMainLooper())

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.binaryMessenger, "native_logger")

        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "startLogs" -> {
                    startLogStreaming(binding.applicationContext)
                    result.success(null)
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
                    arrayOf("logcat", "--uid=$uid", "-v", "time")
                )

                val reader = BufferedReader(InputStreamReader(process.inputStream))
                var line: String?

                while (reader.readLine().also { line = it } != null) {
                    val logLine = line ?: continue
                    mainHandler.post {
                        channel.invokeMethod("onLog", logLine)
                    }
                }
            } catch (e: Exception) {
                Log.e("NativeLogger", "Error reading logcat", e)
            }
        }

        logThread?.start()
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        logThread?.interrupt()
        logThread = null
    }
}
