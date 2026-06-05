import java.io.FileInputStream
import java.util.Properties

plugins {
    id("com.android.application")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "ani.aayush262.dartotsu"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    packaging {
        jniLibs {
            useLegacyPackaging = true
        }

        resources {
            excludes += "META-INF/versions/9/OSGI-INF/MANIFEST.MF"
        }
    }

    defaultConfig {
        applicationId = "ani.aayush262.dartotsu"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            val keystoreProperties = Properties()
            val keystorePropertiesFile = rootProject.file("key.properties")

            if (keystorePropertiesFile.exists()) {
                keystoreProperties.load(FileInputStream(keystorePropertiesFile))
            }

            keyAlias = keystoreProperties["keyAlias"] as String?
                    keyPassword = keystoreProperties["keyPassword"] as String?
                            storeFile = (keystoreProperties["storeFile"] as String?)?.let { file(it) }
                            storePassword = keystoreProperties["storePassword"] as String?
        }
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = true
            isShrinkResources = true

            proguardFiles(
                    getDefaultProguardFile("proguard-android-optimize.txt"),
                    "proguard-rules.pro"
            )

            signingConfig = signingConfigs.getByName("release")
        }

        getByName("debug") {
            isMinifyEnabled = true
            isShrinkResources = true

            proguardFiles(
                    getDefaultProguardFile("proguard-android-optimize.txt"),
                    "proguard-rules.pro"
            )

            signingConfig = signingConfigs.getByName("release")
        }
    }
}
kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}
flutter {
    source = "../.."
}