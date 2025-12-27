package ani.aayush262.dartotsu

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.PersistableBundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(NativeLogger())
        flutterEngine.plugins.add(AndroidPaths())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        CrashHandler.init(this)
        super.onCreate(savedInstanceState)
    }
}
