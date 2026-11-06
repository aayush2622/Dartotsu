package ani.aayush262.dartotsu

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.DocumentsContract
import android.webkit.MimeTypeMap
import io.flutter.plugin.common.MethodChannel
import java.io.File

class SafStorage(private val activity: Activity) {
    private var pending: MethodChannel.Result? = null

    private val resolver get() = activity.contentResolver

    fun handle(method: String, args: Map<String, Any?>, result: MethodChannel.Result) {
        when (method) {
            "pick" -> pick(result)
            "export" -> background(result) {
                export(
                    Uri.parse(args["tree"] as String),
                    args["root"] as String,
                    args["relative"] as String,
                    args["source"] as String,
                )
            }
            "delete" -> background(result) {
                delete(
                    Uri.parse(args["tree"] as String),
                    args["root"] as String,
                    args["relative"] as String,
                )
            }
            else -> result.notImplemented()
        }
    }

    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != REQUEST_PICK) return false
        val result = pending ?: return true
        pending = null
        val tree = data?.data
        if (resultCode != Activity.RESULT_OK || tree == null) {
            result.success(null)
            return true
        }
        try {
            resolver.takePersistableUriPermission(
                tree,
                Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION,
            )
            Thread {
                val picked = try {
                    resolveRoot(tree)
                } catch (e: Exception) {
                    null
                }
                activity.runOnUiThread { result.success(picked) }
            }.start()
        } catch (e: Exception) {
            result.success(null)
        }
        return true
    }

    private fun pick(result: MethodChannel.Result) {
        if (pending != null) return result.error("busy", "A folder is already being picked", null)
        pending = result
        val intent = Intent(Intent.ACTION_OPEN_DOCUMENT_TREE).apply {
            addFlags(
                Intent.FLAG_GRANT_READ_URI_PERMISSION or
                    Intent.FLAG_GRANT_WRITE_URI_PERMISSION or
                    Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION or
                    Intent.FLAG_GRANT_PREFIX_URI_PERMISSION,
            )
        }
        activity.startActivityForResult(intent, REQUEST_PICK)
    }

    private fun background(result: MethodChannel.Result, work: () -> Any?) {
        Thread {
            val value = try {
                work()
            } catch (e: Exception) {
                null
            }
            activity.runOnUiThread { result.success(value) }
        }.start()
    }

    private fun resolveRoot(tree: Uri): Map<String, String> {
        val treeId = DocumentsContract.getTreeDocumentId(tree)
        val treeDoc = DocumentsContract.buildDocumentUriUsingTree(tree, treeId)
        val name = displayName(treeDoc)
        val rootId = if (name.equals(APP_FOLDER, ignoreCase = true)) {
            treeId
        } else {
            val existing = children(tree, treeId).firstOrNull {
                it.mime == DocumentsContract.Document.MIME_TYPE_DIR &&
                    it.name.equals(APP_FOLDER, ignoreCase = true)
            }
            existing?.id ?: DocumentsContract.getDocumentId(
                DocumentsContract.createDocument(
                    resolver,
                    treeDoc,
                    DocumentsContract.Document.MIME_TYPE_DIR,
                    APP_FOLDER,
                ) ?: throw IllegalStateException("Could not create $APP_FOLDER"),
            )
        }
        val rootName = displayName(DocumentsContract.buildDocumentUriUsingTree(tree, rootId))
        return mapOf("tree" to tree.toString(), "root" to rootId, "name" to rootName)
    }

    private fun displayName(doc: Uri): String =
        resolver.query(
            doc,
            arrayOf(DocumentsContract.Document.COLUMN_DISPLAY_NAME),
            null,
            null,
            null,
        )?.use { if (it.moveToFirst()) it.getString(0) else null } ?: ""

    private class Child(val id: String, val name: String, val mime: String)

    private fun children(tree: Uri, parentId: String): List<Child> {
        val uri = DocumentsContract.buildChildDocumentsUriUsingTree(tree, parentId)
        val out = mutableListOf<Child>()
        resolver.query(
            uri,
            arrayOf(
                DocumentsContract.Document.COLUMN_DOCUMENT_ID,
                DocumentsContract.Document.COLUMN_DISPLAY_NAME,
                DocumentsContract.Document.COLUMN_MIME_TYPE,
            ),
            null,
            null,
            null,
        )?.use {
            while (it.moveToNext()) out.add(Child(it.getString(0), it.getString(1) ?: "", it.getString(2) ?: ""))
        }
        return out
    }

    private fun folder(tree: Uri, parentId: String, name: String, create: Boolean): String? {
        val existing = children(tree, parentId).firstOrNull {
            it.mime == DocumentsContract.Document.MIME_TYPE_DIR && it.name == name
        }
        if (existing != null) return existing.id
        if (!create) return null
        val parent = DocumentsContract.buildDocumentUriUsingTree(tree, parentId)
        val made = DocumentsContract.createDocument(
            resolver,
            parent,
            DocumentsContract.Document.MIME_TYPE_DIR,
            name,
        ) ?: return null
        return DocumentsContract.getDocumentId(made)
    }

    private fun export(tree: Uri, rootId: String, relative: String, source: String): Boolean {
        val parts = relative.split('/').filter { it.isNotEmpty() }
        if (parts.isEmpty()) return false
        var parent = rootId
        for (segment in parts.dropLast(1)) parent = folder(tree, parent, segment, true) ?: return false
        val name = parts.last()
        val file = File(source)
        if (!file.isFile) return false
        val existing = children(tree, parent).firstOrNull { it.name == name }
        val target = if (existing != null) {
            DocumentsContract.buildDocumentUriUsingTree(tree, existing.id)
        } else {
            val mime = MimeTypeMap.getSingleton()
                .getMimeTypeFromExtension(file.extension.lowercase()) ?: "application/octet-stream"
            DocumentsContract.createDocument(
                resolver,
                DocumentsContract.buildDocumentUriUsingTree(tree, parent),
                mime,
                name,
            ) ?: return false
        }
        val output = resolver.openOutputStream(target, "wt") ?: return false
        output.use { out -> file.inputStream().use { it.copyTo(out) } }
        return true
    }

    private fun delete(tree: Uri, rootId: String, relative: String): Boolean {
        val parts = relative.split('/').filter { it.isNotEmpty() }
        if (parts.isEmpty()) return false
        var parent = rootId
        for (segment in parts.dropLast(1)) parent = folder(tree, parent, segment, false) ?: return false
        val match = children(tree, parent).firstOrNull { it.name == parts.last() } ?: return false
        return DocumentsContract.deleteDocument(
            resolver,
            DocumentsContract.buildDocumentUriUsingTree(tree, match.id),
        )
    }

    companion object {
        const val REQUEST_PICK = 7421
        const val APP_FOLDER = "Dartotsu"
    }
}
