package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.ContentValues
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.File

fun Activity.registerMedia(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/media")
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
}

private fun Activity.saveToDownloads(source: File, name: String, mime: String): String {
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
