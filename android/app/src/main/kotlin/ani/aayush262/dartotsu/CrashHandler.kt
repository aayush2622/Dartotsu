package ani.aayush262.dartotsu

import android.annotation.SuppressLint
import android.content.Context
import java.io.File
import java.io.FileWriter
import java.io.PrintWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class CrashHandler private constructor(
    private val context: Context
) : Thread.UncaughtExceptionHandler {

    private val defaultHandler =
        Thread.getDefaultUncaughtExceptionHandler()

    override fun uncaughtException(
        thread: Thread,
        throwable: Throwable
    ) {
        try {
            writeCrashToFile(thread, throwable)
        } catch (_: Throwable) {
        }

        defaultHandler?.uncaughtException(thread, throwable)
    }

    private fun writeCrashToFile(
        thread: Thread,
        throwable: Throwable
    ) {
        val file = File(context.filesDir, "logs").apply { mkdirs() }
            .resolve("JavaCrash.txt")

        PrintWriter(FileWriter(file, true)).use { pw ->
            pw.println()
            pw.println("[JAVA CRASH]")
            pw.println("Time: ${timestamp()}")
            pw.println("Thread: ${thread.name}")
            pw.println()
            throwable.printStackTrace(pw)
        }
    }
    private fun timestamp(): String =
        SimpleDateFormat(
            "dd/MM/yyyy HH:mm:ss",
            Locale.US
        ).format(Date())
    companion object {
        @SuppressLint("StaticFieldLeak")
        @Volatile
        private var INSTANCE: CrashHandler? = null

        fun init(context: Context) {
            if (INSTANCE == null) {
                synchronized(this) {
                    if (INSTANCE == null) {
                        INSTANCE = CrashHandler(context.applicationContext)
                        Thread.setDefaultUncaughtExceptionHandler(INSTANCE)
                    }
                }
            }
        }
    }
}
