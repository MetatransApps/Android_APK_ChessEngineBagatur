# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-ignorewarnings


#Use 7 step of optimization
-optimizationpasses 7

#-allowaccessmodification
#-mergeinterfacesaggressively

#When not preverifing in a case-insensitive filing system, such as Windows. This tool will unpack your processed jars,(if using windows you should then use):
-dontusemixedcaseclassnames

#Specifies not to ignore non-public library classes. As of version 4.5, this is the default setting
-dontskipnonpubliclibraryclasses

-dontwarn android.support.**

#Specifies to write out some more information during processing. If the program terminates with an exception, this option will print out the entire stack trace, instead of just the exception message.
-verbose

#The -optimizations option disables some arithmetic simplifications that Dalvik 1.0 and 1.5 can't handle. Note that the Dalvik VM also can't handle aggressive overloading (of static fields).
#To understand or change this check http://proguard.sourceforge.net/index.html#/manual/optimizations.html
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# Note that if you want to enable optimization, you cannot just
# include optimization flags in your own project configuration file;
# instead you will need to point to the
# "proguard-android-optimize.txt" file instead of this one from your
# project.properties file.

#To repackage classes on a single package
#-repackageclasses ''

#Uncomment if using annotations to keep them.
#-keepattributes *Annotation*

#Keep classes that are referenced on the AndroidManifest
-keep public class com.chessartforkids.** extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
#Compatibility library
-keep public class * extends android.support.v4.app.Fragment
-keep public class * extends android.app.Fragment

#To maintain custom components names that are used on layouts XML.
#Uncomment if having any problem with the approach below
#-keep public class custom.components.package.and.name.**

# keep setters in Views so that animations can still work.
# see http://proguard.sourceforge.net/manual/examples.html#beans
 -keepclassmembers public class * extends android.view.View {
  void set*(***);
  *** get*();
}

#To remove debug logs:
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** w(...);
}

#To avoid changing names of methods invoked on layout's onClick.
# Uncomment and add specific method names if using onClick on layouts
#-keepclassmembers class * {
# public void onClickButton(android.view.View);
#}

#Maintain java native methods
-keepclasseswithmembernames class * {
    native <methods>;
}


#To maintain custom components names that are used on layouts XML:
#-keep public class * extends android.view.View {
#    public <init>(android.content.Context);
#}
#-keep public class * extends android.view.View {
#    public <init>(android.content.Context, android.util.AttributeSet);
#}
#-keep public class * extends android.view.View {
#    public <init>(android.content.Context, android.util.AttributeSet, int);
#}

#com.chessartforkids.main.views.MainView
#com.chessartforkids.loading.LoadingView

-keep public class com.chessartforkids.main.views.MainView {
    public <init>(android.content.Context);
}
-keep public class com.chessartforkids.main.views.MainView {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keep public class com.chessartforkids.main.views.MainView {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keep public class com.chessartforkids.loading.LoadingView {
    public <init>(android.content.Context);
}
-keep public class com.chessartforkids.loading.LoadingView {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keep public class com.chessartforkids.loading.LoadingView {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}


#Maintain enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

#To keep parcelable classes (to serialize - deserialize objects to sent through Intents)
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

#Keep the R
-keepclassmembers class **.R$* {
    public static <fields>;
}
-keep class **.R$*

###### Chess Engine

#-dontskipnonpubliclibraryclassmembers

-keep class bagaturchess.** { *; }
-keepclassmembers class bagaturchess.** { *; }

#-dontwarn bagaturchess.**
-dontwarn bagaturchess.engines.**
-dontwarn bagaturchess.egtb.**


###### ADDITIONAL OPTIONS NOT USED NORMALLY

#Uncomment if using Serializable
-keepnames class com.chessartforkids** implements java.io.Serializable

-keepclassmembers class com.chessartforkids** implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keepnames class com.apps.mobile.android.commons** implements java.io.Serializable

-keepclassmembers class com.apps.mobile.android.commons** implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}


#To keep callback calls. Uncomment if using any
#http://proguard.sourceforge.net/index.html#/manual/examples.html#callback
#-keep class mypackage.MyCallbackClass {
#   void myCallbackMethod(java.lang.String);
#}


###### ADDS

-keep public class com.millennialmedia.android.MMActivity
-keep class com.millennialmedia.** { *; }
-dontwarn com.millennialmedia.**

-keepattributes InnerClasses,EnclosingMethod,Deprecated,Exceptions,Signature
-keep public class * extends android.app.Activity
-keep public class com.appflood.AppFlood {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.AppFlood$* {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.mraid.AFBannerWebView$* {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.AFReferralReceiver {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.AFBannerView {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.AppFloodAdAdapter {<methods>; public static <fields>; public <fields>;}
-keep public class com.appflood.AppFloodExtras
-keep public class com.appflood.AppFloodMediationServer {<methods>; public static <fields>; public <fields>;}

#MobFox
-keep public class com.adsdk.sdk.banner.InAppWebView
-keep public class com.adsdk.sdk.video.RichMediaActivity
-keep public class com.adsdk.sdk.mraid.MraidBrowser
-keep class com.adsdk.** { *; }
-dontwarn com.adsdk.**


-keep public class com.mdotm.android.view.MdotMActivity

-keep public class com.inmobi.androidsdk.IMBrowserActivity
-keep public class com.inmobi.commons.analytics.androidsdk.IMAdTrackerReceiver
-keep class com.inmobi.** { *; }
-dontwarn com.inmobi.**

-keep public class com.smaato.soma.internal.connector.OrmmaBridge {
public *;
}
-keepattributes *Annotation*

#ADs mediation adapters
#com.google.ads.mediation.inmobi.InMobiAdapter
#com.google.ads.mediation.millennial.MillennialAdapter
#com.mdotm.android.admobadapter.MdotMAdapter
#com.google.ads.mediation.admob.AdMobAdapter

-keep class com.google.ads.** { *; }
-keep class com.mobfox.** { *; }
-keep class com.smaato.** { *; }
-keep class com.mopub.** { *; }
-dontwarn com.google.ads.**
-dontwarn com.mobfox.**
-dontwarn com.smaato.**
-dontwarn com.mopub.**


#Appbrain - Applift
-keep public class cmn.Proguard$KeepMembers
-keep public class * implements cmn.Proguard$KeepMembers
-keepclassmembers class * implements cmn.Proguard$KeepMembers {
    <methods>;
}
-keepattributes *Annotation*
-keep class android.webkit.JavascriptInterface
-dontwarn android.webkit.JavascriptInterface
# This is only needed when you don't include the Google Play services:
#-dontwarn com.google.android.gms.**


#Google Play Services

-dontwarn com.google.android.gms.**

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

# Keep SafeParcelable value, needed for reflection. This is required to support backwards
# compatibility of some classes.
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

# Keep the names of classes/members we need for client functionality.
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

# Needed for Parcelable/SafeParcelable Creators to not get stripped
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
