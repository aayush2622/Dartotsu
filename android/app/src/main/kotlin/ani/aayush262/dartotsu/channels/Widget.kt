package ani.aayush262.dartotsu.channels

import android.app.Activity
import ani.aayush262.dartotsu.DartotsuWidget
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerWidget(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/widget")
        .setMethodCallHandler { call, result ->
            if (call.method != "update") return@setMethodCallHandler result.notImplemented()
            val json = call.arguments as? String
                ?: return@setMethodCallHandler result.error("args", "payload required", null)
            val context = applicationContext
            DartotsuWidget.store(context, json)
            Thread {
                try {
                    DartotsuWidget.refresh(context)
                } catch (_: Exception) {
                }
            }.start()
            result.success(null)
        }
}
