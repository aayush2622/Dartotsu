package ani.aayush262.dartotsu.channels

import android.app.Activity
import android.content.Intent
import android.net.Uri
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

fun Activity.registerExternal(messenger: BinaryMessenger) {
    MethodChannel(messenger, "dartotsu/external")
        .setMethodCallHandler { call, result ->
            if (call.method != "openVideo") return@setMethodCallHandler result.notImplemented()
            val url = call.argument<String>("url")
                ?: return@setMethodCallHandler result.error("args", "url required", null)
            val title = call.argument<String>("title") ?: ""
            val headers = call.argument<Map<String, String>>("headers") ?: emptyMap()
            val subtitles = call.argument<List<String>>("subtitles") ?: emptyList()
            val subtitleNames = call.argument<List<String>>("subtitleNames") ?: emptyList()
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
                    if (subtitles.isNotEmpty()) {
                        val uris = subtitles.map { Uri.parse(it) }.toTypedArray()
                        putExtra("subs", uris)
                        putExtra("subs.enable", arrayOf(uris[0]))
                        putExtra("subs.name", subtitleNames.mapIndexed { i, n -> n.ifEmpty { "Subtitle ${i + 1}" } }.toTypedArray())
                    }
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                startActivity(Intent.createChooser(view, title.ifEmpty { url }).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                result.success(true)
            } catch (e: Exception) {
                result.success(false)
            }
        }
}
