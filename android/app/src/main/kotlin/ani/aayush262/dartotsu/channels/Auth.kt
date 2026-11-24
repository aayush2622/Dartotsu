package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.browser.customtabs.CustomTabsClient
import androidx.browser.customtabs.CustomTabsIntent
import ani.aayush262.dartotsu.MainActivity
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerAuth(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/auth")
        .setMethodCallHandler { call, result ->
            if (call.method != "openTab") return@setMethodCallHandler result.notImplemented()
            val url = call.argument<String>("url")
                ?: return@setMethodCallHandler result.error("args", "url required", null)
            result.success(openTab(url))
        }
}

private fun Activity.openTab(url: String): Boolean = try {
    val tab = CustomTabsIntent.Builder()
        .setShowTitle(true)
        .setShareState(CustomTabsIntent.SHARE_STATE_OFF)
        .build()
    CustomTabsClient.getPackageName(this, null)?.let { tab.intent.setPackage(it) }
    tab.launchUrl(this, Uri.parse(url))
    true
} catch (e: Exception) {
    false
}

class AuthCallbackActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        intent?.data?.let { data ->
            startActivity(
                Intent(this, MainActivity::class.java)
                    .setAction(Intent.ACTION_VIEW)
                    .setData(data)
                    .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP),
            )
        }
        finish()
    }
}
