package ani.aayush262.dartotsu

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(NativeLogger())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        CrashHandler.init(this)
        super.onCreate(savedInstanceState)
    }
}
