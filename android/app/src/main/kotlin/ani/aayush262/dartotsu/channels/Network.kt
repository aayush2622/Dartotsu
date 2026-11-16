package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.Context
import android.net.ConnectivityManager
import android.net.wifi.WifiManager
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

private var multicastLock: WifiManager.MulticastLock? = null

fun Activity.registerNetwork(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/network")
        .setMethodCallHandler { call, result ->
            when (call.method) {
                "isMetered" -> {
                    val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
                    result.success(manager.isActiveNetworkMetered)
                }
                "acquireMulticastLock" -> {
                    try {
                        val manager = getSystemService(Context.WIFI_SERVICE) as? WifiManager
                        val lock = multicastLock ?: manager
                            ?.createMulticastLock("dartotsu-cast-discovery")
                            ?.apply { setReferenceCounted(false) }
                        if (lock == null) {
                            result.success(false)
                            return@setMethodCallHandler
                        }
                        if (!lock.isHeld) lock.acquire()
                        multicastLock = lock
                        result.success(true)
                    } catch (_: Exception) {
                        result.success(false)
                    }
                }
                "releaseMulticastLock" -> {
                    try {
                        multicastLock?.takeIf { it.isHeld }?.release()
                    } catch (_: Exception) {
                    } finally {
                        multicastLock = null
                    }
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
}
