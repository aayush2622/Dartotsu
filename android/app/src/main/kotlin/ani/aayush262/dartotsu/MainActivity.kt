package ani.aayush262.dartotsu

import android.content.Intent
import android.content.pm.verify.domain.DomainVerificationManager
import android.content.pm.verify.domain.DomainVerificationUserState
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(NativeLogger())
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/links")
            .setMethodCallHandler { call, result ->
                if (call.method == "isLinkHandlingEnabled") {
                    return@setMethodCallHandler result.success(isLinkHandlingEnabled())
                }
                if (call.method != "openLinkSettings") return@setMethodCallHandler result.notImplemented()
                val uri = Uri.parse("package:$packageName")
                val action = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S)
                    Settings.ACTION_APP_OPEN_BY_DEFAULT_SETTINGS
                else Settings.ACTION_APPLICATION_DETAILS_SETTINGS
                try {
                    startActivity(Intent(action, uri))
                    result.success(true)
                } catch (e: Exception) {
                    try {
                        startActivity(Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, uri))
                        result.success(true)
                    } catch (e: Exception) {
                        result.success(false)
                    }
                }
            }
    }

    private fun isLinkHandlingEnabled(): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S) return true
        return try {
            val manager = getSystemService(DomainVerificationManager::class.java)
            val state = manager.getDomainVerificationUserState(packageName)
            val hosts = state?.hostToStateMap ?: return true
            val value = hosts["anilist.co"] ?: return true
            value != DomainVerificationUserState.DOMAIN_STATE_NONE
        } catch (e: Exception) {
            true
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        CrashHandler.init(this)
        super.onCreate(savedInstanceState)
    }
}
