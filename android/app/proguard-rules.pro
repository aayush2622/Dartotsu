# Keep all Flutter-related classes
-keep class io.flutter.** { *; }
-verbose

# Keep necessary AndroidX lifecycle classes
-keep class androidx.lifecycle.** { *; }

# Keep your custom package classes (optimize to specific ones if possible)
-keep class com.aayush262.** { *; }
-keepclassmembers class com.aayush262.** { *; }
# Keep Gson models (optimize to specific models if possible)
-keep class com.google.gson.** { *; }

# Retrofit and OkHttp rules
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }

# Keep Jackson classes for JSON serialization
-keep class com.fasterxml.jackson.annotation.** { *; }
-keep class com.fasterxml.jackson.core.** { *; }
-keep class com.fasterxml.jackson.databind.** { *; }


# Freezed-specific rules (optimize to required classes if possible)
-keep class ** implements kotlin.Metadata
-keep class ** extends kotlin.Metadata
-keep class **_Freezed {
    <init>(...);
}
# Keep annotations
-keepattributes *Annotation*

# Optional optimizations
-optimizationpasses 5
-dontpreverify
-dontnote
-ignorewarnings
