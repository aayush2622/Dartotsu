package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.pm.ActivityInfo
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerOrientation(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/orientation")
        .setMethodCallHandler { call, result ->
            val mode = when (call.method) {
                "sensorLandscape" -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
                "sensorAll" -> ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR
                else -> return@setMethodCallHandler result.notImplemented()
            }
            requestedOrientation = mode
            result.success(true)
        }
}
