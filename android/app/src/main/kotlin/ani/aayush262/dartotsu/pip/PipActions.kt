package ani.aayush262.dartotsu.pip

import android.app.PendingIntent
import android.app.RemoteAction
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.drawable.Icon
import android.os.Build
import android.annotation.TargetApi
import ani.aayush262.dartotsu.R

internal const val PIP_ACTION = "ani.aayush262.dartotsu.PIP_ACTION"
private const val EXTRA_ID = "id"
private val KNOWN = listOf("toggle", "back", "forward")

private fun iconFor(id: String, playing: Boolean): Int? = when (id) {
    "toggle" -> if (playing) R.drawable.ic_pip_pause else R.drawable.ic_pip_play
    "back" -> R.drawable.ic_pip_back
    "forward" -> R.drawable.ic_pip_forward
    else -> null
}

@TargetApi(Build.VERSION_CODES.O)
internal fun remoteActions(context: Context, state: PipState, limit: Int): List<RemoteAction> =
    state.actions.take(limit).mapNotNull { action ->
        val icon = iconFor(action.id, state.playing) ?: return@mapNotNull null
        val intent = Intent(PIP_ACTION)
            .setPackage(context.packageName)
            .putExtra(EXTRA_ID, action.id)
        val pending = PendingIntent.getBroadcast(
            context,
            KNOWN.indexOf(action.id),
            intent,
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
        )
        RemoteAction(Icon.createWithResource(context, icon), action.label, action.label, pending)
    }

internal class PipReceiver(private val onAction: (String) -> Unit) : BroadcastReceiver() {
    private var registered = false

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != PIP_ACTION) return
        intent.getStringExtra(EXTRA_ID)?.let(onAction)
    }

    fun register(context: Context) {
        if (registered) return
        registered = true
        val filter = IntentFilter(PIP_ACTION)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.registerReceiver(this, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            context.registerReceiver(this, filter)
        }
    }

    fun unregister(context: Context) {
        if (!registered) return
        registered = false
        try {
            context.unregisterReceiver(this)
        } catch (_: IllegalArgumentException) {
        }
    }
}
