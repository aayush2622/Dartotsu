package ani.aayush262.dartotsu.pip

import android.app.Activity
import android.app.PictureInPictureParams
import android.os.Build
import android.util.Rational
import android.annotation.TargetApi

private const val WIDEST = 2.38
private const val NARROWEST = 1 / WIDEST

internal fun clampRatio(width: Int, height: Int): Rational {
    val ratio = width.toDouble() / height
    return when {
        ratio > WIDEST -> Rational(238, 100)
        ratio < NARROWEST -> Rational(100, 238)
        else -> Rational(width, height)
    }
}

@TargetApi(Build.VERSION_CODES.O)
internal fun buildParams(activity: Activity, state: PipState): PictureInPictureParams {
    val builder = PictureInPictureParams.Builder()
        .setAspectRatio(clampRatio(state.width, state.height))
        .setActions(remoteActions(activity, state, activity.maxNumPictureInPictureActions))
    state.sourceRect?.let { builder.setSourceRectHint(it) }
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        builder.setAutoEnterEnabled(state.auto && state.playing)
        builder.setSeamlessResizeEnabled(false)
    }
    return builder.build()
}
