# VoiceType IME ProGuard Rules

# Keep input method service
-keep class com.tzphxlf.voicetype.ime.VoiceTypeIME { *; }

# Keep JNI methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep dictionary models
-keep class com.tzphxlf.voicetype.ime.model.** { *; }

# Keep voice related
-keep class com.tzphxlf.voicetype.ime.voice.** { *; }

# Gson
-keepattributes Signature
-keepattributes *Annotation*

# Don't warn about unused JNI
-dontwarn com.tzphxlf.voicetype.ime.voice.AudioProcessor
