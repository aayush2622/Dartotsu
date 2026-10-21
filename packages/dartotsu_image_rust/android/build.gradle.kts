group = "com.dartotsu.dartotsu_image_rust"
version = "1.0-SNAPSHOT"

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.2.0")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

apply(plugin = "com.android.library")

android {
    namespace = "com.dartotsu.dartotsu_image_rust"
    compileSdk = 35

    defaultConfig {
        minSdk = 21
    }
}

apply(from = "../cargokit/gradle/plugin.gradle")

extensions.getByName("cargokit").withGroovyBuilder {
    setProperty("manifestDir", "../rust")
    setProperty("libname", "dartotsu_image_rust")
}
