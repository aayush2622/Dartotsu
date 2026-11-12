package ani.aayush262.dartotsu.channels

import android.view.KeyEvent
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class VolumeKeys {
    private var channel: MethodChannel? = null
    private var intercept = false

    fun register(messenger: BinaryMessenger) {
        channel = MethodChannel(messenger, "dartotsu/volumekeys").also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method != "setEnabled") return@setMethodCallHandler result.notImplemented()
                intercept = call.arguments as? Boolean ?: false
                result.success(null)
            }
        }
    }

    fun handle(event: KeyEvent): Boolean {
        val code = event.keyCode
        if (!intercept || (code != KeyEvent.KEYCODE_VOLUME_UP && code != KeyEvent.KEYCODE_VOLUME_DOWN)) {
            return false
        }
        if (event.action == KeyEvent.ACTION_DOWN && event.repeatCount == 0) {
            channel?.invokeMethod("key", if (code == KeyEvent.KEYCODE_VOLUME_UP) "up" else "down")
        }
        return true
    }
}
