import com.android.build.gradle.BaseExtension
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

allprojects {
    repositories {
        google()
        mavenCentral()
        maven("https://jitpack.io")
    }
}

rootProject.layout.buildDirectory.set(file("../build"))

subprojects {

    afterEvaluate {

        extensions.findByType(BaseExtension::class.java)?.apply {

            compileSdkVersion(36)
            buildToolsVersion("36.0.0")

            compileOptions {
                sourceCompatibility = JavaVersion.VERSION_17
                targetCompatibility = JavaVersion.VERSION_17
            }

            if (namespace == null) {
                namespace = project.group.toString()
            }
        }
    }

    tasks.withType<KotlinCompile>().configureEach {
        compilerOptions {
            jvmTarget.set(
                org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
            )
        }
    }

    layout.buildDirectory.set(
        rootProject.layout.buildDirectory.dir(name)
    )
}

subprojects {
    evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}