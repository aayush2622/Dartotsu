package ani.aayush262.dartotsu.pip

import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

object PipChannel {
    private const val NAME = "dartotsu/pip"

    fun register(messenger: BinaryMessenger, controller: PipController) {
        val channel = MethodChannel(messenger, NAME)
        controller.attach(channel)
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "available" -> result.success(controller.supported)
                "configure" -> {
                    controller.configure(PipState.from(call.arguments))
                    result.success(null)
                }
                "enter" -> result.success(controller.enter(PipState.from(call.arguments)))
                "exit" -> {
                    controller.exit()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }
}
