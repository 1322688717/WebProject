# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/jingbin/Documents/AndroidStudio/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keepclassmembers class * {
   @android.webkit.JavascriptInterface <methods>;
}

# 腾讯x5
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**

-keep class com.tencent.smtt.** {
    *;
}

-keep class com.tencent.tbs.** {
    *;
}

-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keepclassmembers class * {
   @android.webkit.JavascriptInterface <methods>;
}

-keepclasseswithmembers class * {

public <init>(android.content.Context, android.util.AttributeSet, int);

}

-keepclasseswithmembers class * {
    public <init>(android.content.Context);
}

# 移除掉未使用的类和类成员
-dontnote
-dontwarn
-dontoptimize
-dontpreverify
-verbose
-ignorewarnings

# 以下是一些常见的库和框架的特定规则示例，你可以根据你的项目需要添加或修改这些规则

# 保留常见的 Android 库
-keep class android.support.** { *; }
-keep interface android.support.** { *; }
-keep class androidx.** { *; }
-keep interface androidx.** { *; }

# 保留常见的 Google Play 服务库
-keep class com.google.android.gms.** { *; }
-keep interface com.google.android.gms.** { *; }

# 保留常见的 Gson 库
-keep class com.google.gson.** { *; }
-keepclassmembers class com.google.gson.** { *; }

# 保留常见的 Retrofit 库
-keep class retrofit.** { *; }
-keepclasseswithmembers class retrofit.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# 保留常见的 OkHttp 库
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# 保留常见的 webview 库
-keep class android.webkit.WebView {
    public *;
}

-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**

-keep class com.tencent.smtt.** {
    *;
}

-keep class com.tencent.tbs.** {
    *;
}

-keepclassmembers class com.yxml8888.yxml9999.ui.MainActivity {
     *;
}


-keepclassmembers class com.yxml8888.yxml9999.ui.CustomWebActivity {
     *;
}

-keep class com.bytedance.tools.codelocator.**{
*;
}

# 不混淆ByWebView库
-keep class com.bytedance.bywebview.** { *; }


# 保留与JNI相关的方法和类
-keepclasseswithmembernames class * {
    native <methods>;
}

# 如果有特定的类需要保留，可以在这里添加
-keep class com.yourpackage.** { *; }
