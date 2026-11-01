package ani.aayush262.dartotsu

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder
import android.os.PowerManager

class DownloadForegroundService : Service() {
    private var wakeLock: PowerManager.WakeLock? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent == null) {
            stopSelf()
            return START_NOT_STICKY
        }
        val notification = build(
            intent.getStringExtra("title") ?: "Downloads",
            intent.getStringExtra("text") ?: "",
            intent.getIntExtra("percent", -1),
            intent.getStringExtra("sub"),
        )
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(ID, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC)
        } else {
            startForeground(ID, notification)
        }
        if (wakeLock == null) {
            val power = getSystemService(Context.POWER_SERVICE) as PowerManager
            wakeLock = power.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "dartotsu:downloads")
                .apply { acquire(6 * 60 * 60 * 1000L) }
        }
        return START_NOT_STICKY
    }

    override fun onTaskRemoved(rootIntent: Intent?) {
        stopSelf()
    }

    override fun onDestroy() {
        wakeLock?.let { if (it.isHeld) it.release() }
        wakeLock = null
        super.onDestroy()
    }

    private fun build(title: String, text: String, percent: Int, sub: String?): Notification {
        val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            manager.createNotificationChannel(
                NotificationChannel(CHANNEL, "Downloads", NotificationManager.IMPORTANCE_LOW)
            )
        }
        val open = packageManager.getLaunchIntentForPackage(packageName)?.let {
            PendingIntent.getActivity(this, 0, it, PendingIntent.FLAG_IMMUTABLE)
        }
        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
            Notification.Builder(this, CHANNEL)
        else
            @Suppress("DEPRECATION") Notification.Builder(this)
        val live = Build.VERSION.SDK_INT >= 36
        if (live) {
            builder
                .setStyle(
                    Notification.ProgressStyle()
                        .setProgressIndeterminate(percent < 0)
                        .setProgress(percent.coerceIn(0, 100))
                        .setProgressSegments(listOf(Notification.ProgressStyle.Segment(100)))
                )
                .setRequestPromotedOngoing(true)
                .setShortCriticalText(if (percent < 0) "…" else "$percent%")
        } else {
            builder.setProgress(100, percent.coerceIn(0, 100), percent < 0)
        }
        return builder
            .setSmallIcon(android.R.drawable.stat_sys_download)
            .setContentTitle(title)
            .setContentText(text)
            .setSubText(sub)
            .setCategory(Notification.CATEGORY_PROGRESS)
            .setColor(0xFF21C0D0.toInt())
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setContentIntent(open)
            .build()
    }

    companion object {
        private const val ID = 7002
        private const val CHANNEL = "dartotsu_downloads_service"

        fun start(context: Context, title: String, text: String, percent: Int, sub: String?) {
            val intent = Intent(context, DownloadForegroundService::class.java)
                .putExtra("title", title)
                .putExtra("text", text)
                .putExtra("percent", percent)
                .putExtra("sub", sub)
            context.startForegroundService(intent)
        }

        fun stop(context: Context) {
            context.stopService(Intent(context, DownloadForegroundService::class.java))
        }
    }
}
