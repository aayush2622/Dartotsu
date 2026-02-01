
-verbose
# Keep your custom package classes (optimize to specific ones if possible)
-keep class com.aayush262.** { *; }
-keepclassmembers class com.aayush262.** { *; }
# Keep annotations
-keepattributes *Annotation*

# Optional optimizations
-optimizationpasses 5
-dontpreverify
-ignorewarnings
