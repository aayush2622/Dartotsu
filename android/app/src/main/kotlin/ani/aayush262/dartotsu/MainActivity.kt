package ani.aayush262.dartotsu

import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.content.pm.PackageManager
import android.content.pm.verify.domain.DomainVerificationManager
import android.content.pm.verify.domain.DomainVerificationUserState
import android.net.Uri
import android.os.Build
import android.hardware.biometrics.BiometricManager
import android.hardware.biometrics.BiometricPrompt
import android.os.Bundle
import android.os.CancellationSignal
import android.os.Environment
import android.provider.MediaStore
import android.provider.Settings
import android.view.KeyEvent
import fl.pip.FlPiPActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity : FlPiPActivity() {
    private var volumeChannel: MethodChannel? = null
    private var interceptVolume = false

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(NativeLogger())
        volumeChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/volumekeys").also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method != "setEnabled") return@setMethodCallHandler result.notImplemented()
                interceptVolume = call.arguments as? Boolean ?: false
                result.success(null)
            }
        }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/network")
            .setMethodCallHandler { call, result ->
                if (call.method != "isMetered") return@setMethodCallHandler result.notImplemented()
                val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
                result.success(manager.isActiveNetworkMetered)
            }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/widget")
            .setMethodCallHandler { call, result ->
                if (call.method != "update") return@setMethodCallHandler result.notImplemented()
                val json = call.arguments as? String
                    ?: return@setMethodCallHandler result.error("args", "payload required", null)
                val context = applicationContext
                DartotsuWidget.store(context, json)
                Thread {
                    try {
                        DartotsuWidget.refresh(context)
                    } catch (_: Exception) {
                    }
                }.start()
                result.success(null)
            }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/downloads")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "start" -> try {
                        DownloadForegroundService.start(
                            this,
                            call.argument<String>("title") ?: "Downloads",
                            call.argument<String>("text") ?: "",
                            call.argument<Int>("percent") ?: -1,
                            call.argument<String>("sub"),
                        )
                        result.success(true)
                    } catch (e: Exception) {
                        result.success(false)
                    }
                    "stop" -> {
                        DownloadForegroundService.stop(this)
                        result.success(true)
                    }
                    else -> result.notImplemented()
                }
            }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/biometric")
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
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/media")
            .setMethodCallHandler { call, result ->
                if (call.method != "saveToDownloads") return@setMethodCallHandler result.notImplemented()
                val path = call.argument<String>("path")
                val name = call.argument<String>("name")
                val mime = call.argument<String>("mime") ?: "application/octet-stream"
                if (path == null || name == null) return@setMethodCallHandler result.error("args", "path and name required", null)
                Thread {
                    try {
                        val saved = saveToDownloads(File(path), name, mime)
                        runOnUiThread { result.success(saved) }
                    } catch (e: Exception) {
                        runOnUiThread { result.error("save", e.message, null) }
                    }
                }.start()
            }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dartotsu/external")
            .setMethodCallHandler { call, result ->
                if (call.method != "openVideo") return@setMethodCallHandler result.notImplemented()
                val url = call.argument<String>("url")
                    ?: return@setMethodCallHandler result.error("args", "url required", null)
                val title = call.argument<String>("title") ?: ""
                val headers = call.argument<Map<String, String>>("headers") ?: emptyMap()
                try {
                    val view = Intent(Intent.ACTION_VIEW).apply {
                        setDataAndType(Uri.parse(url), "video/*")
                        putExtra("title", title)
                        if (headers.isNotEmpty()) {
                            putExtra("headers", headers.flatMap { listOf(it.key, it.value) }.toTypedArray())
                        }
                        headers.entries.firstOrNull { it.key.equals("user-agent", true) }
                            ?.let { putExtra("user_agent", it.value) }
                        headers.entries.firstOrNull { it.key.equals("referer", true) }
                            ?.let { putExtra("referer", it.value) }
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    }
                    startActivity(Intent.createChooser(view, title.ifEmpty { url }).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                    result.success(true)
                } catch (e: Exception) {
                    result.success(false)
                }
            }
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

    private fun biometricAvailable(): Boolean {
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

    private fun authenticate(title: String, cancel: String, result: MethodChannel.Result) {
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

    private fun saveToDownloads(source: File, name: String, mime: String): String {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val values = ContentValues().apply {
                put(MediaStore.MediaColumns.DISPLAY_NAME, name)
                put(MediaStore.MediaColumns.MIME_TYPE, mime)
                put(MediaStore.MediaColumns.RELATIVE_PATH, "${Environment.DIRECTORY_DOWNLOADS}/Dartotsu")
                put(MediaStore.MediaColumns.IS_PENDING, 1)
            }
            val resolver = contentResolver
            val uri = resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
                ?: throw IllegalStateException("MediaStore insert failed")
            try {
                resolver.openOutputStream(uri)!!.use { out -> source.inputStream().use { it.copyTo(out) } }
                values.clear()
                values.put(MediaStore.MediaColumns.IS_PENDING, 0)
                resolver.update(uri, values, null, null)
            } catch (e: Exception) {
                resolver.delete(uri, null, null)
                throw e
            }
            val shown = resolver.query(uri, arrayOf(MediaStore.MediaColumns.DISPLAY_NAME), null, null, null)
                ?.use { if (it.moveToFirst()) it.getString(0) else null } ?: name
            return "${Environment.DIRECTORY_DOWNLOADS}/Dartotsu/$shown"
        }
        val dir = File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "Dartotsu")
        dir.mkdirs()
        var target = File(dir, name)
        var i = 2
        while (target.exists()) {
            target = File(dir, "${name.substringBeforeLast('.')} ($i).${name.substringAfterLast('.', "")}")
            i++
        }
        source.copyTo(target)
        return target.absolutePath
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

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        val code = event.keyCode
        if (interceptVolume && (code == KeyEvent.KEYCODE_VOLUME_UP || code == KeyEvent.KEYCODE_VOLUME_DOWN)) {
            if (event.action == KeyEvent.ACTION_DOWN && event.repeatCount == 0) {
                volumeChannel?.invokeMethod("key", if (code == KeyEvent.KEYCODE_VOLUME_UP) "up" else "down")
            }
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        CrashHandler.init(this)
        super.onCreate(savedInstanceState)
    }
}
