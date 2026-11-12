package ani.aayush262.dartotsu.channels

import android.app.Activity
import ani.aayush262.dartotsu.DownloadForegroundService
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerDownloads(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/downloads")
        .setMethodCallHandler { call, result ->
            when (call.method) {
                "start" -> try {
                    DownloadForegroundService.start(
                        this,
                        call.argument<String>("title") ?: "Downloads",
                        call.argument<String>("text") ?: "",
                        call.argument<Int>("percent") ?: -1,
                        call.argument<String>("sub"),
                    )
                    result.success(true)
                } catch (e: Exception) {
                    result.success(false)
                }
                "stop" -> {
                    DownloadForegroundService.stop(this)
                    result.success(true)
                }
                else -> result.notImplemented()
            }
        }
}
