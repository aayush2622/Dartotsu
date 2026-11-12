package ani.aayush262.dartotsu.pip

import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.SystemClock
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

private const val DISMISS_WINDOW_MS = 600L

class PipController(private val activity: FlutterActivity) {
    private var channel: MethodChannel? = null
    private var state = PipState()
    private var applied: PipState? = null
    private var inPip = false
    private var leftAt = 0L
    private val receiver = PipReceiver { emit("action", it) }

    val supported: Boolean
        get() = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O &&
            activity.packageManager.hasSystemFeature(PackageManager.FEATURE_PICTURE_IN_PICTURE)

    fun attach(channel: MethodChannel) {
        this.channel = channel
    }

    fun configure(next: PipState) {
        state = next
        apply()
    }

    fun enter(next: PipState): Boolean {
        if (!supported || inPip) return false
        state = next
        return try {
            val entered = activity.enterPictureInPictureMode(buildParams(activity, state))
            if (entered) applied = state
            entered
        } catch (_: IllegalStateException) {
            false
        }
    }

    fun exit() {
        if (!inPip) return
        activity.startActivity(
            Intent(activity, activity.javaClass).addFlags(
                Intent.FLAG_ACTIVITY_REORDER_TO_FRONT or Intent.FLAG_ACTIVITY_SINGLE_TOP,
            ),
        )
    }

    fun onUserLeaveHint() {
        if (inPip || !state.auto || !state.playing) return
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) return
        enter(state)
    }

    fun onResume() {
        leftAt = 0
    }

    fun onModeChanged(active: Boolean) {
        if (inPip == active) return
        inPip = active
        if (active) {
            receiver.register(activity)
        } else {
            receiver.unregister(activity)
            leftAt = SystemClock.uptimeMillis()
        }
        emit("state", active)
    }

    fun onStop() {
        val recent = SystemClock.uptimeMillis() - leftAt < DISMISS_WINDOW_MS
        if (!inPip && !recent) return
        leftAt = 0
        if (inPip) {
            inPip = false
            receiver.unregister(activity)
            emit("state", false)
        }
        emit("dismissed", null)
    }

    fun onDestroy() {
        receiver.unregister(activity)
        channel?.setMethodCallHandler(null)
        channel = null
    }

    private fun apply() {
        if (!supported || applied == state) return
        try {
            activity.setPictureInPictureParams(buildParams(activity, state))
            applied = state
        } catch (_: IllegalStateException) {
        }
    }

    private fun emit(method: String, argument: Any?) {
        channel?.invokeMethod(method, argument)
    }
}
