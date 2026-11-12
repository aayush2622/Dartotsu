package ani.aayush262.dartotsu.pip

import android.graphics.Rect

data class PipAction(val id: String, val label: String)

data class PipState(
    val width: Int = 16,
    val height: Int = 9,
    val sourceRect: Rect? = null,
    val auto: Boolean = false,
    val playing: Boolean = false,
    val actions: List<PipAction> = emptyList(),
) {
    companion object {
        fun from(arguments: Any?): PipState {
            val map = arguments as? Map<*, *> ?: return PipState()
            val bounds = (map["rect"] as? List<*>)?.mapNotNull { (it as? Number)?.toInt() }
            val rect = bounds?.takeIf { it.size == 4 && it[2] > it[0] && it[3] > it[1] }
                ?.let { Rect(it[0], it[1], it[2], it[3]) }
            val actions = (map["actions"] as? List<*>).orEmpty().mapNotNull {
                val entry = it as? Map<*, *> ?: return@mapNotNull null
                val id = entry["id"] as? String ?: return@mapNotNull null
                PipAction(id, entry["label"] as? String ?: id)
            }
            return PipState(
                width = (map["width"] as? Number)?.toInt()?.takeIf { it > 0 } ?: 16,
                height = (map["height"] as? Number)?.toInt()?.takeIf { it > 0 } ?: 9,
                sourceRect = rect,
                auto = map["auto"] as? Boolean ?: false,
                playing = map["playing"] as? Boolean ?: false,
                actions = actions,
            )
        }
    }
}
