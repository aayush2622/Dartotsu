-keep class io.flutter.plugins.**  { *; }

# Keep Google Play Core classes
-keep class com.google.android.play.core.** { *; }


# Flutter specific rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class androidx.lifecycle.** { *; }
-keep class com.aayush262.** { *; }

# Keep annotations
-keepattributes *Annotation*

# Keep Gson models
-keep class com.google.gson.** { *; }
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }

# Keep classes for JSON serialization
-keep class com.fasterxml.jackson.annotation.** { *; }
-keep class com.fasterxml.jackson.core.** { *; }
-keep class com.fasterxml.jackson.databind.** { *; }

# Keep classes for Hive
-keep class hive.** { *; }

# Keep classes for Isar
-keep class isar.** { *; }

# Keep classes for Riverpod
-keep class riverpod.** { *; }

# Keep classes for Freezed
-keep class ** implements kotlin.Metadata
-keep class ** extends kotlin.Metadata
-keep class **_Freezed {
    <init>(...);
}


