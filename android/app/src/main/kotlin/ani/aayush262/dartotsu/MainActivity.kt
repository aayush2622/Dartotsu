package ani.aayush262.dartotsu

import android.content.res.Configuration
import android.os.Bundle
import android.view.KeyEvent
import ani.aayush262.dartotsu.channels.VolumeKeys
import ani.aayush262.dartotsu.channels.registerBiometric
import ani.aayush262.dartotsu.channels.registerContent
import ani.aayush262.dartotsu.channels.registerDownloads
import ani.aayush262.dartotsu.channels.registerExternal
import ani.aayush262.dartotsu.channels.registerLinks
import ani.aayush262.dartotsu.channels.registerMedia
import ani.aayush262.dartotsu.channels.registerNetwork
import ani.aayush262.dartotsu.channels.registerWidget
import ani.aayush262.dartotsu.pip.PipChannel
import ani.aayush262.dartotsu.pip.PipController
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    private val volumeKeys = VolumeKeys()
    private val pip = PipController(this)

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(NativeLogger())
        val messenger = flutterEngine.dartExecutor.binaryMessenger
        volumeKeys.register(messenger)
        PipChannel.register(messenger, pip)
        registerNetwork(messenger)
        registerWidget(messenger)
        registerDownloads(messenger)
        registerBiometric(messenger)
        registerMedia(messenger)
        registerContent(messenger)
        registerExternal(messenger)
        registerLinks(messenger)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        CrashHandler.init(this)
        super.onCreate(savedInstanceState)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean =
        volumeKeys.handle(event) || super.dispatchKeyEvent(event)

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()
        pip.onUserLeaveHint()
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: Configuration,
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)
        pip.onModeChanged(isInPictureInPictureMode)
    }

    override fun onResume() {
        super.onResume()
        pip.onResume()
    }

    override fun onStop() {
        super.onStop()
        pip.onStop()
    }

    override fun onDestroy() {
        pip.onDestroy()
        super.onDestroy()
    }
}
