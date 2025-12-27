package ani.aayush262.dartotsu

import android.content.Context
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel


class AndroidPaths : FlutterPlugin {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext

        channel = MethodChannel(
            binding.binaryMessenger,
            CHANNEL
        )

        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "getFilesDir" -> {
                    result.success(context.filesDir.absolutePath)
                }
                "getCacheDir" -> {
                    result.success(context.cacheDir.absolutePath)
                }
                else -> result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    }

    companion object {
        private const val CHANNEL = "android_paths"
    }
}