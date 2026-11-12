package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.pm.PackageManager
import android.hardware.biometrics.BiometricManager
import android.hardware.biometrics.BiometricPrompt
import android.os.Build
import android.os.CancellationSignal
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerBiometric(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/biometric")
        .setMethodCallHandler { call, result ->
            when (call.method) {
                "available" -> result.success(biometricAvailable())
                "authenticate" -> authenticate(
                    call.argument<String>("title") ?: "",
                    call.argument<String>("cancel") ?: "Cancel",
                    result,
                )
                else -> result.notImplemented()
            }
        }
}

private fun Activity.biometricAvailable(): Boolean {
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) return false
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
        return packageManager.hasSystemFeature(PackageManager.FEATURE_FINGERPRINT)
    }
    val manager = getSystemService(BiometricManager::class.java) ?: return false
    return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
        manager.canAuthenticate(BiometricManager.Authenticators.BIOMETRIC_WEAK) ==
            BiometricManager.BIOMETRIC_SUCCESS
    } else {
        @Suppress("DEPRECATION")
        manager.canAuthenticate() == BiometricManager.BIOMETRIC_SUCCESS
    }
}

private fun Activity.authenticate(title: String, cancel: String, result: MethodChannel.Result) {
    if (!biometricAvailable()) return result.success(false)
    var replied = false
    fun reply(ok: Boolean) {
        if (replied) return
        replied = true
        result.success(ok)
    }
    val builder = BiometricPrompt.Builder(this)
        .setTitle(title)
        .setNegativeButton(cancel, mainExecutor) { _, _ -> reply(false) }
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
        builder.setAllowedAuthenticators(BiometricManager.Authenticators.BIOMETRIC_WEAK)
    }
    builder.build().authenticate(
        CancellationSignal(),
        mainExecutor,
        object : BiometricPrompt.AuthenticationCallback() {
            override fun onAuthenticationSucceeded(r: BiometricPrompt.AuthenticationResult?) = reply(true)
            override fun onAuthenticationError(code: Int, message: CharSequence?) = reply(false)
        },
    )
}
