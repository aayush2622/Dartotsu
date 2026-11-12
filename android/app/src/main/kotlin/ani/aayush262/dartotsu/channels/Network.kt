package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.Context
import android.net.ConnectivityManager
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerNetwork(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/network")
        .setMethodCallHandler { call, result ->
            if (call.method != "isMetered") return@setMethodCallHandler result.notImplemented()
            val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            result.success(manager.isActiveNetworkMetered)
        }
}
