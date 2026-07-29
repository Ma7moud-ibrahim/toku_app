pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        val propertiesFile = file("local.properties")
        if (propertiesFile.exists()) {
            propertiesFile.inputStream().use { properties.load(it) }
        }
        val path = properties.getProperty("flutter.sdk")
        require(path != null) { "flutter.sdk not set in local.properties" }
        path
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    // adtion flutter
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    
    // Android Gradle Plugin version
    id("com.android.application") version "8.6.0" apply false
    
    // kotlin version
    id("org.jetbrains.kotlin.android") version "1.9.10" apply false
}

include(":app")