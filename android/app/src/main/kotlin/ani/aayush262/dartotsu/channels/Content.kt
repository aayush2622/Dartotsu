package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.net.Uri
import android.provider.OpenableColumns
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.File

fun Activity.registerContent(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/content")
        .setMethodCallHandler { call, result ->
            if (call.method != "copyToCache") return@setMethodCallHandler result.notImplemented()
            val uri = call.argument<String>("uri")
                ?: return@setMethodCallHandler result.error("args", "uri required", null)
            Thread {
                val path = try {
                    val parsed = Uri.parse(uri)
                    var name = parsed.lastPathSegment?.substringAfterLast('/') ?: "shared"
                    contentResolver.query(parsed, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)?.use { cursor ->
                        val column = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                        if (cursor.moveToFirst() && column >= 0) cursor.getString(column)?.let { name = it }
                    }
                    val dir = File(cacheDir, "shared").apply { mkdirs() }
                    val target = File(dir, name.replace('/', '_'))
                    val input = contentResolver.openInputStream(parsed) ?: throw IllegalStateException("cannot open $uri")
                    input.use { source -> target.outputStream().use { source.copyTo(it) } }
                    target.absolutePath
                } catch (e: Exception) {
                    null
                }
                runOnUiThread { result.success(path) }
            }.start()
        }
}
