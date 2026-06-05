import groovy.json.JsonSlurper
import com.android.build.gradle.internal.lint.AndroidLintWorkAction

pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()

        file("local.properties").inputStream().use {
            properties.load(it)
        }

        properties.getProperty("flutter.sdk")
            ?: error("flutter.sdk not set in local.properties")
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "9.0.1" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)

    repositories {
        google()
        mavenCentral()

        maven("https://jitpack.io")
        maven("https://storage.googleapis.com/download.flutter.io")
    }
}

include(":app")

val flutterProjectRoot: File? = rootDir.parentFile
val pluginsFile = File(flutterProjectRoot, ".flutter-plugins-dependencies")

if (pluginsFile.exists()) {
    val json = JsonSlurper().parse(pluginsFile) as Map<*, *>

    val androidPlugins =
        ((json["plugins"] as Map<*, *>)["android"] as List<Map<*, *>>)

    val bridgePlugin = androidPlugins.firstOrNull {
        it["name"] == "dartotsu_extension_bridge"
    }

    if (bridgePlugin != null) {
        val bridgeDir = File(bridgePlugin["path"] as String)

        include(":dartotsu_extension_bridge")
        project(":dartotsu_extension_bridge").projectDir =   bridgeDir.resolve("android")

        apply(from = bridgeDir.resolve("android/settings.gradle.kts"))
    }
}