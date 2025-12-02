package ani.aayush262.dartotsu
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel
import java.io.BufferedReader
import java.io.InputStreamReader

class NativeLogger : FlutterPlugin {
    private lateinit var channel: MethodChannel
    private var logThread: Thread? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.binaryMessenger, "native_logger")

        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "startLogs" -> {
                    startLogStreaming()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun startLogStreaming() {
        if (logThread != null) return
        logThread = Thread {
            try {
                val process = Runtime.getRuntime().exec("logcat -v time")
                val reader = BufferedReader(InputStreamReader(process.inputStream))
                var line: String?
                while (reader.readLine().also { line = it } != null) {
                    channel.invokeMethod("onLog", line)
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
