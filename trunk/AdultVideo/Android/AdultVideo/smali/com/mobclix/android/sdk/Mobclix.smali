.class public final Lcom/mobclix/android/sdk/Mobclix;
.super Ljava/lang/Object;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;,
        Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;,
        Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;,
        Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;,
        Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;,
        Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;,
        Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;,
        Lcom/mobclix/android/sdk/Mobclix$SessionPolling;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x8

.field public static final LOG_LEVEL_FATAL:I = 0x10

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_WARN:I = 0x4

.field static final MC_AD_SIZES:[Ljava/lang/String; = null

.field static final MC_CUSTOM_AD_FILENAME:Ljava/lang/String; = "_mc_cached_custom_ad.png"

.field static final MC_CUSTOM_AD_PREF:Ljava/lang/String; = "CustomAdUrl"

.field static final MC_KEY_CONNECTION_TYPE:Ljava/lang/String; = "g"

.field private static final MC_KEY_EVENT_DESCRIPTION:Ljava/lang/String; = "ed"

.field private static final MC_KEY_EVENT_LOG_LEVEL:Ljava/lang/String; = "el"

.field private static final MC_KEY_EVENT_NAME:Ljava/lang/String; = "en"

.field private static final MC_KEY_EVENT_PROCESS_NAME:Ljava/lang/String; = "ep"

.field private static final MC_KEY_EVENT_STOP:Ljava/lang/String; = "es"

.field private static final MC_KEY_EVENT_THREAD_ID:Ljava/lang/String; = "et"

.field static final MC_KEY_LATITUDE_LONGITUDE:Ljava/lang/String; = "ll"

.field static final MC_KEY_SESSION_ID:Ljava/lang/String; = "id"

.field private static final MC_KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final MC_LIBRARY_VERSION:Ljava/lang/String; = "2.3.2"

.field static final PREFS_CONFIG:Ljava/lang/String; = ".MCConfig"

.field private static final TAG:Ljava/lang/String; = "mobclix-controller"

.field static autoplay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static autoplayInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final controller:Lcom/mobclix/android/sdk/Mobclix;

.field static customAdSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static customAdUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static debugConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static enabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isInitialized:Z

.field static refreshTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static rmRequireUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adMobApplicationId:Ljava/lang/String;

.field adServer:Ljava/lang/String;

.field analyticsServer:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private androidVersion:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private batteryLevel:I

.field cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

.field configServer:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field debugServer:Ljava/lang/String;

.field private deviceHardwareModel:Ljava/lang/String;

.field deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field feedbackServer:Ljava/lang/String;

.field private haveLocationPermission:Z

.field idleTimeout:I

.field private instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

.field private isInSession:Z

.field isNewUser:Z

.field isOfflineSession:Z

.field private isTopTask:Z

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field location:Lcom/mobclix/android/sdk/MobclixLocation;

.field private locationCriteria:Landroid/location/Criteria;

.field private locationHandler:Landroid/os/Handler;

.field private logLevel:I

.field private longitude:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field nativeUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field pollTime:I

.field previousDeviceId:Ljava/lang/String;

.field remoteConfigSet:I

.field private rooted:I

.field secondaryView:Landroid/view/View;

.field session:Lorg/json/JSONObject;

.field private sessionEndTime:J

.field private sessionPollingTimer:Ljava/util/Timer;

.field private sessionStartTime:J

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private totalIdleTime:J

.field private userAgent:Ljava/lang/String;

.field vcServer:Ljava/lang/String;

.field webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    #v3=(Null);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const-string v1, "320x50"

    #v1=(Reference,Ljava/lang/String;);
    aput-object v1, v0, v3

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "300x250"

    #v2=(Reference,Ljava/lang/String;);
    aput-object v2, v0, v1

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->debugConfig:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    .line 424
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-direct {v0}, Lcom/mobclix/android/sdk/Mobclix;-><init>()V

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 425
    sput-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, -0x1

    #v4=(Byte);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    const/4 v1, 0x0

    .line 427
    #v1=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #v0=(Reference,Lorg/json/JSONObject;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    .line 115
    const-string v0, "http://ads.mobclix.com/"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 116
    const-string v0, "http://data.mobclix.com/post/config"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 117
    const-string v0, "http://data.mobclix.com/post/sendData"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 118
    const-string v0, "http://vc.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 119
    const-string v0, "http://data.mobclix.com/post/feedback"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 120
    const-string v0, "http://data.mobclix.com/post/debug"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->debugServer:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->nativeUrls:Ljava/util/List;

    .line 122
    const/16 v0, 0x7530

    #v0=(PosShort);
    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 123
    const v0, 0x1d4c0

    #v0=(Integer);
    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    .line 124
    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 127
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 133
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    .line 134
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 135
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 136
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 137
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 138
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 140
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    .line 143
    const-string v0, "android"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->platform:Ljava/lang/String;

    .line 144
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 145
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    .line 146
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 147
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 148
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 149
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 150
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixLocation;);
    invoke-direct {v0}, Lcom/mobclix/android/sdk/MobclixLocation;-><init>()V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 153
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 154
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 155
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 156
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    .line 158
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    .line 159
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    .line 160
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 161
    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    .line 162
    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->batteryLevel:I

    .line 165
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 166
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    .line 167
    const/16 v0, 0x10

    #v0=(PosByte);
    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 170
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    .line 171
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 173
    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    .line 430
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->createNewSession()V

    return-void
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v0=(Reference,Landroid/content/Context;);
    return-object v0
.end method

.method static synthetic access$3()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->batteryLevel:I

    return-void
.end method

.method static addPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "k"
    .parameter "v"

    .prologue
    .line 300
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 303
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method static addPref(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 310
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    #v2=(Reference,Landroid/content/SharedPreferences$Editor;);
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    #v0=(Reference,Ljava/util/Iterator;);v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 315
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 312
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #spe:Landroid/content/SharedPreferences$Editor;
    :cond_0
    #v0=(Reference,Ljava/util/Iterator;);v2=(Reference,Landroid/content/SharedPreferences$Editor;);v3=(Boolean);
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .local v1, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v1           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #spe:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method static clearPref()V
    .locals 2

    .prologue
    .line 329
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 332
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method private declared-synchronized createNewSession()V
    .locals 7

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    sget-object v5, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, instrPath:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v5, "session"

    invoke-virtual {v4, v0, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v5, "init"

    invoke-virtual {v4, v0, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 839
    .local v2, ts:J
    #v2=(LongLo);v3=(LongHi);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, sessionId:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 842
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 843
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 844
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 845
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :try_start_1
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    #v4=(Reference,Lorg/json/JSONObject;);
    const-string v5, "id"

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, "UTF-8"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 852
    :goto_0
    :try_start_2
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v4, v0}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v5, "config"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v0, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    const/4 v4, 0x0

    #v4=(Null);
    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 856
    new-instance v4, Lcom/mobclix/android/sdk/FetchRemoteConfig;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    invoke-direct {v4}, Lcom/mobclix/android/sdk/FetchRemoteConfig;-><init>()V

    #v4=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference,[Ljava/lang/String;);
    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/FetchRemoteConfig;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 858
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v4, v0}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v4, v0}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 860
    monitor-exit p0

    return-void

    .line 832
    .end local v0           #instrPath:Ljava/lang/String;
    .end local v1           #sessionId:Ljava/lang/String;
    .end local v2           #ts:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v4

    .line 849
    .restart local v0       #instrPath:Ljava/lang/String;
    .restart local v1       #sessionId:Ljava/lang/String;
    .restart local v2       #ts:J
    :catch_0
    #v0=(Reference,Ljava/lang/String;);v1=(Reference,Ljava/lang/String;);v2=(LongLo);v3=(LongHi);v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method private endSession()V
    .locals 8

    .prologue
    .line 915
    :try_start_0
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 953
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 917
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    #v4=(LongLo);v5=(LongHi);
    iget-wide v6, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    #v6=(LongLo);v7=(LongHi);
    sub-long v2, v4, v6

    .line 919
    .local v2, sessionTime:J
    #v2=(LongLo);v3=(LongHi);
    const-string v4, "totalSessionTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 921
    :try_start_1
    const-string v4, "totalSessionTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v4

    #v4=(LongLo);
    add-long/2addr v2, v4

    .line 925
    :cond_1
    :goto_1
    :try_start_2
    #v4=(Conflicted);
    const-string v4, "totalIdleTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 927
    :try_start_3
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    #v4=(LongLo);
    const-string v6, "totalIdleTime"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    #v6=(LongLo);
    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 931
    :cond_2
    :goto_2
    :try_start_4
    #v4=(Conflicted);v6=(Conflicted);
    new-instance v1, Ljava/util/HashMap;

    #v1=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 932
    .local v1, sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v1=(Reference,Ljava/util/HashMap;);
    const-string v4, "totalSessionTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v4, "totalIdleTime"

    iget-wide v5, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 936
    const/4 v0, 0x1

    .line 937
    .local v0, offlineSessions:I
    #v0=(One);
    const-string v4, "offlineSessions"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 939
    :try_start_5
    const-string v4, "offlineSessions"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    #v4=(Integer);
    add-int/2addr v0, v4

    .line 942
    :cond_3
    :goto_3
    :try_start_6
    #v0=(Integer);v4=(Conflicted);
    const-string v4, "offlineSessions"

    #v4=(Reference,Ljava/lang/String;);
    int-to-long v5, v0

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .end local v0           #offlineSessions:I
    :cond_4
    #v0=(Conflicted);v4=(Conflicted);
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 947
    const/4 v4, 0x0

    #v4=(Null);
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 948
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 949
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 950
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 951
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 952
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #sessionTime:J
    :catch_0
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0

    .line 940
    .restart local v0       #offlineSessions:I
    .restart local v1       #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #sessionTime:J
    :catch_1
    #v0=(One);v1=(Reference,Ljava/util/HashMap;);v2=(LongLo);v3=(LongHi);v4=(Conflicted);v5=(Reference,Ljava/lang/String;);v6=(LongHi);v7=(LongHi);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 928
    .end local v0           #offlineSessions:I
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    #v0=(Uninit);v1=(Uninit);v4=(Conflicted);v5=(LongHi);v6=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 922
    :catch_3
    #v4=(Conflicted);v6=(LongLo);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method static getAllPref()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    #v0=(Conflicted);
    return-object v1

    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    new-instance v1, Ljava/util/HashMap;

    #v1=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #v1=(Reference,Ljava/util/HashMap;);
    goto :goto_0
.end method

.method static getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 979
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 980
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    #v0=(Reference,Landroid/webkit/CookieManager;);
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 981
    .end local v0           #cookieManager:Landroid/webkit/CookieManager;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference,Ljava/lang/String;);
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method public static getInstance()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    return-object v0
.end method

.method static getPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "k"

    .prologue
    .line 288
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method private declared-synchronized handleSessionStatus(Z)V
    .locals 6
    .parameter "topTask"

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 884
    .local v0, ts:J
    #v0=(LongLo);v1=(LongHi);
    if-eqz p1, :cond_3

    .line 887
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 910
    .end local v0           #ts:J
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    return-void

    .line 891
    .restart local v0       #ts:J
    :cond_1
    :try_start_1
    #v0=(LongLo);v1=(LongHi);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-nez v2, :cond_2

    .line 892
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->mHandler:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 909
    .end local v0           #ts:J
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_0

    .line 894
    .restart local v0       #ts:J
    :cond_2
    #v0=(LongLo);v1=(LongHi);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 895
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 883
    .end local v0           #ts:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 899
    .restart local v0       #ts:J
    :cond_3
    :try_start_2
    #v0=(LongLo);v1=(LongHi);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    #v2=(Boolean);
    if-nez v2, :cond_4

    .line 900
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    #v2=(LongLo);v3=(LongHi);
    sub-long v2, v0, v2

    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 901
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    goto :goto_0

    .line 904
    :cond_4
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iput-wide v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 905
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 906
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static hasPref(Ljava/lang/String;)Z
    .locals 2
    .parameter "k"

    .prologue
    .line 294
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private initialize(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 20
    .parameter "a"
    .parameter "appId"

    .prologue
    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, ".MCConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 492
    sget-object v3, Lcom/mobclix/android/sdk/MobclixInstrumentation;->MC_DEBUG_CATS:[Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    array-length v4, v3

    #v4=(Integer);
    const/4 v2, 0x0

    :goto_0
    #v2=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v19=(Conflicted);
    if-lt v2, v4, :cond_1

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    if-nez v2, :cond_0

    .line 501
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 503
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    sget-object v3, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, instrPath:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v3, "init"

    invoke-virtual {v2, v12, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v3, "environment"

    invoke-virtual {v2, v12, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 509
    const-string v16, ""

    .line 510
    .local v16, packageName:Ljava/lang/String;
    #v16=(Reference,Ljava/lang/String;);
    const/4 v9, 0x0

    .line 513
    .local v9, applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    #v9=(Null);
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v16

    .line 516
    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    #v3=(PosShort);
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 521
    :goto_2
    #v3=(Conflicted);v9=(Reference,Landroid/content/pm/ApplicationInfo;);v11=(Conflicted);
    if-nez p2, :cond_3

    .line 523
    :try_start_2
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.mobclix.APPLICATION_ID"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p2

    .line 527
    if-nez p2, :cond_3

    .line 528
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #v2=(UninitRef,Landroid/content/res/Resources$NotFoundException;);
    const-string v3, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Landroid/content/res/Resources$NotFoundException;);
    throw v2

    .line 492
    .end local v9           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v12           #instrPath:Ljava/lang/String;
    .end local v16           #packageName:Ljava/lang/String;
    :cond_1
    #v2=(Integer);v9=(Uninit);v11=(Uninit);v12=(Uninit);v16=(Uninit);
    aget-object v19, v3, v2

    .line 494
    .local v19, v:Ljava/lang/String;
    #v19=(Reference,Ljava/lang/String;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "debug_"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 496
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->debugConfig:Ljava/util/HashMap;

    #v5=(Reference,Ljava/util/HashMap;);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v7, "debug_"

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_2
    #v5=(Conflicted);v7=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 517
    .end local v19           #v:Ljava/lang/String;
    .restart local v9       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v12       #instrPath:Ljava/lang/String;
    .restart local v16       #packageName:Ljava/lang/String;
    :catch_0
    #v2=(Reference,Ljava/lang/Object;);v3=(Conflicted);v6=(Conflicted);v9=(Null);v12=(Reference,Ljava/lang/String;);v16=(Reference,Ljava/lang/String;);v19=(Conflicted);
    move-exception v11

    .line 518
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    #v11=(Reference,Landroid/content/pm/PackageManager$NameNotFoundException;);
    const-string v2, "mobclix-controller"

    const-string v3, "Application Key Started"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 524
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    #v3=(Conflicted);v9=(Reference,Landroid/content/pm/ApplicationInfo;);v11=(Conflicted);
    move-exception v11

    .line 525
    .local v11, e:Ljava/lang/NullPointerException;
    #v11=(Reference,Ljava/lang/NullPointerException;);
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #v2=(UninitRef,Landroid/content/res/Resources$NotFoundException;);
    const-string v3, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Landroid/content/res/Resources$NotFoundException;);
    throw v2

    .line 531
    .end local v11           #e:Ljava/lang/NullPointerException;
    :cond_3
    #v3=(Conflicted);v11=(Conflicted);
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 534
    :try_start_3
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ADMOB_PUBLISHER_ID"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 536
    const-string v2, "null"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 542
    :cond_4
    :goto_3
    #v3=(Conflicted);
    const/4 v14, 0x0

    .line 544
    .local v14, logLevelString:Ljava/lang/String;
    :try_start_4
    #v14=(Null);
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.mobclix.LOG_LEVEL"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    move-result-object v14

    .line 546
    :goto_4
    #v3=(Conflicted);v14=(Reference,Ljava/lang/String;);
    const/16 v13, 0x10

    .line 547
    .local v13, logLevelSetting:I
    #v13=(PosByte);
    if-eqz v14, :cond_5

    .line 548
    const-string v2, "debug"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_a

    .line 549
    const/4 v13, 0x1

    .line 560
    :cond_5
    :goto_5
    #v2=(Conflicted);
    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 562
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 564
    :cond_6
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 565
    :cond_7
    #v2=(Conflicted);
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_9

    .line 567
    :cond_8
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 571
    :cond_9
    #v2=(Conflicted);
    const-string v8, ""

    .line 572
    .local v8, app_name:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v2=(Reference,Landroid/content/Context;);
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 574
    .local v17, package_manager:Landroid/content/pm/PackageManager;
    :try_start_5
    #v17=(Reference,Landroid/content/pm/PackageManager;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    move-result-object v8

    .line 577
    :goto_6
    const-string v2, "android.permission.GET_TASKS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_e

    .line 578
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    const-string v3, "Missing required permission GET_TASKS."

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;-><init>(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v2

    .line 537
    .end local v8           #app_name:Ljava/lang/String;
    .end local v13           #logLevelSetting:I
    .end local v14           #logLevelString:Ljava/lang/String;
    .end local v17           #package_manager:Landroid/content/pm/PackageManager;
    :catch_2
    #v3=(Conflicted);v8=(Uninit);v13=(Uninit);v14=(Uninit);v17=(Uninit);
    move-exception v11

    .line 538
    .restart local v11       #e:Ljava/lang/NullPointerException;
    #v11=(Reference,Ljava/lang/NullPointerException;);
    const-string v2, "null"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    goto/16 :goto_3

    .line 550
    .end local v11           #e:Ljava/lang/NullPointerException;
    .restart local v13       #logLevelSetting:I
    .restart local v14       #logLevelString:Ljava/lang/String;
    :cond_a
    #v2=(Boolean);v11=(Conflicted);v13=(PosByte);v14=(Reference,Ljava/lang/String;);
    const-string v2, "info"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_b

    .line 551
    const/4 v13, 0x2

    goto :goto_5

    .line 552
    :cond_b
    const-string v2, "warn"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_c

    .line 553
    const/4 v13, 0x4

    goto/16 :goto_5

    .line 554
    :cond_c
    const-string v2, "error"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_d

    .line 555
    const/16 v13, 0x8

    goto/16 :goto_5

    .line 556
    :cond_d
    const-string v2, "fatal"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 557
    const/16 v13, 0x10

    goto/16 :goto_5

    .line 580
    .restart local v8       #app_name:Ljava/lang/String;
    .restart local v17       #package_manager:Landroid/content/pm/PackageManager;
    :cond_e
    #v2=(Integer);v8=(Reference,Ljava/lang/String;);v17=(Reference,Landroid/content/pm/PackageManager;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.GET_TASKS"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v2, "android.permission.INTERNET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_f

    .line 583
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    const-string v3, "Missing required permission INTERNET."

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;-><init>(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v2

    .line 585
    :cond_f
    #v2=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.INTERNET"

    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v2, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_10

    .line 588
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    const-string v3, "Missing required permission READ_PHONE_STATE."

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;-><init>(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v2

    .line 590
    :cond_10
    #v2=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :try_start_6
    const-string v2, "android.permission.BATTERY_STATS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_11

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v2=(Reference,Landroid/content/Context;);
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$2;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$2;);
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mobclix/android/sdk/Mobclix$2;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    .line 602
    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix$2;);
    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef,Landroid/content/IntentFilter;);
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    #v4=(Reference,Landroid/content/IntentFilter;);
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    :cond_11
    #v2=(Conflicted);v5=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 608
    :goto_7
    #v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.CAMERA"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_12

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.CAMERA"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_12
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.READ_CALENDAR"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_13

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.READ_CALENDAR"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_13
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.WRITE_CALENDAR"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_14

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.WRITE_CALENDAR"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_14
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.READ_CONTACTS"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_15

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.READ_CONTACTS"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_15
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.WRITE_CONTACTS"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_16

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.WRITE_CONTACTS"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_16
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.GET_ACCOUNTS"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_17

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.GET_ACCOUNTS"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_17
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.VIBRATE"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_18

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.VIBRATE"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_18
    :try_start_7
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_2d

    .line 632
    new-instance v2, Landroid/location/Criteria;

    #v2=(UninitRef,Landroid/location/Criteria;);
    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    #v2=(Reference,Landroid/location/Criteria;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 634
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :goto_8
    #v3=(Conflicted);v4=(Conflicted);
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_19

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 649
    :cond_19
    :goto_9
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/16 v18, 0x0

    .line 651
    .local v18, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_8
    #v18=(Null);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v2=(Reference,Landroid/content/Context;);
    const-string v3, "phone"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 658
    :goto_a
    #v3=(Conflicted);v18=(Reference,Landroid/telephony/TelephonyManager;);
    const/4 v2, 0x0

    :try_start_9
    #v2=(Null);
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    #v2=(Reference,Landroid/content/pm/PackageInfo;);
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 660
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1b

    .line 661
    :cond_1a
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    .line 664
    :cond_1b
    :try_start_a
    #v2=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference,Landroid/content/ContentResolver;);
    const-string v3, "android_id"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 670
    :goto_c
    #v3=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1d

    .line 671
    :cond_1c
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 674
    :cond_1d
    :try_start_b
    #v2=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 676
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1f

    .line 677
    :cond_1e
    #v2=(Conflicted);v3=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 680
    :cond_1f
    :try_start_c
    #v2=(Conflicted);
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 682
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_21

    .line 683
    :cond_20
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 686
    :cond_21
    :try_start_d
    #v2=(Conflicted);
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 688
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_23

    .line 689
    :cond_22
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 692
    :cond_23
    :try_start_e
    #v2=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    .line 693
    .local v15, networkOperator:Ljava/lang/String;
    #v15=(Reference,Ljava/lang/String;);
    if-eqz v15, :cond_24

    .line 694
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    .line 695
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 698
    .end local v15           #networkOperator:Ljava/lang/String;
    :cond_24
    :goto_10
    #v2=(Conflicted);v3=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_26

    .line 699
    :cond_25
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    .line 701
    :cond_26
    #v2=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_28

    .line 702
    :cond_27
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    .line 706
    :cond_28
    :try_start_f
    #v2=(Conflicted);
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 707
    .local v10, d:Ljava/util/Locale;
    #v10=(Reference,Ljava/util/Locale;);
    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 708
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 710
    .end local v10           #d:Ljava/util/Locale;
    :goto_11
    #v10=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2a

    .line 711
    :cond_29
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 713
    :cond_2a
    #v2=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2c

    .line 714
    :cond_2b
    #v2=(Conflicted);v3=(Conflicted);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    .line 731
    :cond_2c
    #v2=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v2=(Reference,Landroid/content/Context;);
    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 733
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$3;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$3;);
    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mobclix/android/sdk/Mobclix$3;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$3;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v2, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v3, "session"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v12, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 743
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;);
    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->mHandler:Landroid/os/Handler;

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    #v2=(Integer);
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    #v3=(Integer);
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    #v2=(Reference,Ljava/util/Timer;);
    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$SessionPolling;);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$SessionPolling;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix$SessionPolling;);
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    move-object/from16 v0, p0

    iget v6, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    #v6=(Integer);
    int-to-long v6, v6

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 747
    const/4 v2, 0x1

    #v2=(One);
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v2, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v2, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 751
    return-void

    .line 636
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2d
    :try_start_10
    #v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Uninit);v15=(Uninit);v18=(Uninit);
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_2e

    .line 637
    new-instance v2, Landroid/location/Criteria;

    #v2=(UninitRef,Landroid/location/Criteria;);
    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    #v2=(Reference,Landroid/location/Criteria;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 639
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    #v2=(Reference,Ljava/util/HashMap;);
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 647
    :catch_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_9

    .line 642
    :cond_2e
    #v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_8

    .line 665
    .restart local v18       #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_4
    #v2=(Conflicted);v18=(Reference,Landroid/telephony/TelephonyManager;);
    move-exception v11

    .line 667
    .local v11, e:Ljava/lang/Exception;
    :try_start_11
    #v11=(Reference,Ljava/lang/Exception;);
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference,Landroid/content/ContentResolver;);
    const-string v3, "android_id"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_c

    .line 668
    :catch_5
    #v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_c

    .line 514
    .end local v8           #app_name:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #logLevelSetting:I
    .end local v14           #logLevelString:Ljava/lang/String;
    .end local v17           #package_manager:Landroid/content/pm/PackageManager;
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_6
    #v1=(Uninit);v3=(Reference,Ljava/lang/String;);v4=(Integer);v8=(Uninit);v9=(Null);v11=(Uninit);v13=(Uninit);v14=(Uninit);v17=(Uninit);v18=(Uninit);
    move-exception v2

    goto/16 :goto_1

    .line 709
    .restart local v8       #app_name:Ljava/lang/String;
    .restart local v13       #logLevelSetting:I
    .restart local v14       #logLevelString:Ljava/lang/String;
    .restart local v17       #package_manager:Landroid/content/pm/PackageManager;
    .restart local v18       #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_7
    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v8=(Reference,Ljava/lang/String;);v9=(Reference,Landroid/content/pm/ApplicationInfo;);v10=(Conflicted);v11=(Conflicted);v13=(PosByte);v14=(Reference,Ljava/lang/String;);v15=(Conflicted);v17=(Reference,Landroid/content/pm/PackageManager;);v18=(Reference,Landroid/telephony/TelephonyManager;);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_11

    .line 697
    :catch_8
    #v2=(Conflicted);v10=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_10

    .line 687
    :catch_9
    #v2=(Conflicted);v15=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_f

    .line 681
    :catch_a
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_e

    .line 675
    :catch_b
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_d

    .line 659
    :catch_c
    move-exception v2

    goto/16 :goto_b

    .line 652
    :catch_d
    #v2=(Conflicted);v18=(Null);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_a

    .line 605
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_e
    #v2=(Conflicted);v18=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_7

    .line 575
    :catch_f
    #v4=(Integer);
    move-exception v2

    goto/16 :goto_6

    .line 545
    .end local v8           #app_name:Ljava/lang/String;
    .end local v13           #logLevelSetting:I
    .end local v17           #package_manager:Landroid/content/pm/PackageManager;
    :catch_10
    #v8=(Uninit);v13=(Uninit);v14=(Null);v17=(Uninit);
    move-exception v2

    goto/16 :goto_4
.end method

.method public static final logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "eventLogLevel"
    .parameter "processName"
    .parameter "eventName"
    .parameter "description"
    .parameter "stopProcess"

    .prologue
    .line 771
    sget-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 772
    const-string v3, "mobclix-controller"

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "logEvent failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 776
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget v3, v3, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    #v3=(Integer);
    if-lt p0, v3, :cond_0

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, logString:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    sparse-switch p0, :sswitch_data_0

    .line 793
    :goto_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const/4 v4, 0x4

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference,[Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "ts"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 794
    #v5=(One);
    const-string v6, "ll"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 795
    #v5=(PosByte);
    const-string v6, "g"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 796
    const-string v6, "id"

    aput-object v6, v4, v5

    .line 793
    invoke-direct {v0, v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 797
    .local v0, event:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v3, "el"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v3, "ep"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v3, "en"

    const-string v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v3, "ed"

    const-string v4, "UTF-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v3, "et"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v4, "es"

    if-eqz p4, :cond_2

    const-string v3, "1"

    :goto_2
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;);
    invoke-direct {v3, v0}, Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;-><init>(Lorg/json/JSONObject;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;);
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 805
    .local v1, logEventThread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 806
    .end local v0           #event:Lorg/json/JSONObject;
    .end local v1           #logEventThread:Ljava/lang/Thread;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0

    .line 784
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Uninit);v6=(Uninit);
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    :sswitch_1
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 786
    :sswitch_2
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 787
    :sswitch_3
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 788
    :sswitch_4
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 802
    .restart local v0       #event:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    #v0=(Reference,Lorg/json/JSONObject;);v5=(LongHi);v6=(Reference,Ljava/lang/String;);
    const-string v3, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 783
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static final declared-synchronized onCreate(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 482
    const-class v0, Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Ljava/lang/Class;);
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    #v1=(Null);
    invoke-static {p0, v1}, Lcom/mobclix/android/sdk/Mobclix;->onCreateWithApplicationId(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit v0

    return-void

    .line 482
    :catchall_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized onCreateWithApplicationId(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "a"
    .parameter "appId"

    .prologue
    .line 442
    const-class v0, Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Ljava/lang/Class;);
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    #v1=(One);
    invoke-static {p0, p1, v1}, Lcom/mobclix/android/sdk/Mobclix;->onCreateWithApplicationId(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit v0

    return-void

    .line 442
    :catchall_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized onCreateWithApplicationId(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 5
    .parameter "a"
    .parameter "appId"
    .parameter "doNothingWhenSameAppId"

    .prologue
    .line 446
    const-class v2, Lcom/mobclix/android/sdk/Mobclix;

    #v2=(Reference,Ljava/lang/Class;);
    monitor-enter v2

    if-nez p0, :cond_0

    .line 447
    :try_start_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #v1=(UninitRef,Landroid/content/res/Resources$NotFoundException;);
    const-string v3, "Activity not provided."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Landroid/content/res/Resources$NotFoundException;);
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v2

    throw v1

    .line 449
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    :try_start_1
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 450
    :cond_1
    #v1=(Conflicted);
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-boolean v1, v1, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 451
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-direct {v1}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    .line 453
    :cond_2
    #v1=(Conflicted);
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, v1, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 454
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 455
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, v1, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 456
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 457
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 458
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v3, 0x0

    #v3=(Null);
    iput v3, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 459
    const/4 v1, 0x0

    #v1=(Null);
    sput-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :cond_3
    :try_start_2
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference,Landroid/content/Context;);
    iput-object v3, v1, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 466
    :goto_0
    :try_start_3
    #v3=(Conflicted);
    sget-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 468
    :try_start_4
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-direct {v1, p0, p1}, Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 476
    :cond_4
    :goto_1
    :try_start_5
    #v1=(Conflicted);
    sget-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 477
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v1, v3}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 479
    :cond_5
    #v1=(Conflicted);v3=(Conflicted);
    monitor-exit v2

    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    :try_start_6
    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 471
    .end local v0           #e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    :catch_1
    #v0=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 464
    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public static final declared-synchronized onStop(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 755
    const-class v1, Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Ljava/lang/Class;);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v2}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    monitor-exit v1

    return-void

    .line 755
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1

    throw v0
.end method

.method static removePref(Ljava/lang/String;)V
    .locals 2
    .parameter "k"

    .prologue
    .line 321
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 324
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method private static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    .line 339
    const/16 v5, 0x28

    #v5=(PosByte);
    new-array v4, v5, [B

    .line 343
    .local v4, shaHash:[B
    :try_start_0
    #v4=(Reference,[B);
    const-string v5, "SHA-1"

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 347
    .local v3, md:Ljava/security/MessageDigest;
    #v3=(Reference,Ljava/security/MessageDigest;);
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 348
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 349
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v1, hexString:Ljava/lang/StringBuffer;
    #v1=(Reference,Ljava/lang/StringBuffer;);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);
    array-length v5, v4

    #v5=(Integer);
    if-lt v2, v5, :cond_0

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    return-object v5

    .line 344
    .end local v1           #hexString:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Conflicted);v6=(Uninit);v7=(Uninit);
    move-exception v0

    .line 345
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    #v0=(Reference,Ljava/security/NoSuchAlgorithmException;);
    new-instance v5, Ljava/lang/RuntimeException;

    #v5=(UninitRef,Ljava/lang/RuntimeException;);
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #v5=(Reference,Ljava/lang/RuntimeException;);
    throw v5

    .line 351
    .end local v0           #ex:Ljava/security/NoSuchAlgorithmException;
    .restart local v1       #hexString:Ljava/lang/StringBuffer;
    .restart local v2       #i:I
    .restart local v3       #md:Ljava/security/MessageDigest;
    :cond_0
    #v0=(Uninit);v1=(Reference,Ljava/lang/StringBuffer;);v2=(Integer);v3=(Reference,Ljava/security/MessageDigest;);v5=(Integer);v6=(Null);v7=(Integer);
    aget-byte v5, v4, v2

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final sync()V
    .locals 3

    .prologue
    .line 814
    sget-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 815
    const-string v1, "mobclix-controller"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "sync failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .local v0, syncThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 819
    .end local v0           #syncThread:Ljava/lang/Thread;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->getSyncStatus()I

    move-result v1

    #v1=(Integer);
    sget v2, Lcom/mobclix/android/sdk/MobclixAnalytics;->SYNC_READY:I

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    .line 820
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAnalytics$Sync;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixAnalytics$Sync;);
    invoke-direct {v1}, Lcom/mobclix/android/sdk/MobclixAnalytics$Sync;-><init>()V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAnalytics$Sync;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 821
    .restart local v0       #syncThread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    .locals 9
    .parameter "cs"
    .parameter "url"

    .prologue
    .line 986
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 987
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    #v1=(Reference,Landroid/webkit/CookieManager;);
    invoke-interface {p0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 988
    .local v4, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    #v4=(Reference,Ljava/util/List;);
    new-instance v3, Ljava/lang/StringBuffer;

    #v3=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 989
    .local v3, cookieStringBuffer:Ljava/lang/StringBuffer;
    #v3=(Reference,Ljava/lang/StringBuffer;);
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    .line 990
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    #v7=(Integer);
    if-lt v6, v7, :cond_1

    .line 1007
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    #v7=(Reference,Landroid/webkit/CookieSyncManager;);
    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1008
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1011
    .end local v1           #cookieManager:Landroid/webkit/CookieManager;
    .end local v3           #cookieStringBuffer:Ljava/lang/StringBuffer;
    .end local v4           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v6           #i:I
    :cond_0
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 991
    .restart local v1       #cookieManager:Landroid/webkit/CookieManager;
    .restart local v3       #cookieStringBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v6       #i:I
    :cond_1
    #v1=(Reference,Landroid/webkit/CookieManager;);v3=(Reference,Ljava/lang/StringBuffer;);v4=(Reference,Ljava/util/List;);v6=(Integer);v7=(Integer);
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 992
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 995
    new-instance v5, Ljava/text/SimpleDateFormat;

    #v5=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v7, "E, dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 996
    .local v5, f:Ljava/text/SimpleDateFormat;
    #v5=(Reference,Ljava/text/SimpleDateFormat;);
    const-string v7, "; expires="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " GMT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 998
    .end local v5           #f:Ljava/text/SimpleDateFormat;
    :cond_2
    #v5=(Conflicted);
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 999
    const-string v7, "; path="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1001
    const-string v7, "; domain="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, cookieString:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1010
    .end local v0           #c:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookieManager:Landroid/webkit/CookieManager;
    .end local v2           #cookieString:Ljava/lang/String;
    .end local v3           #cookieStringBuffer:Ljava/lang/StringBuffer;
    .end local v4           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v6           #i:I
    :catch_0
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method private updateConnectivity()V
    .locals 8

    .prologue
    .line 392
    :try_start_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v6=(Reference,Landroid/content/Context;);
    const-string v7, "connectivity"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 393
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const-string v4, "u"

    .line 394
    .local v4, network_type:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 395
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 396
    .local v3, network_info:Landroid/net/NetworkInfo;
    #v3=(Reference,Landroid/net/NetworkInfo;);
    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 400
    .end local v3           #network_info:Landroid/net/NetworkInfo;
    :cond_0
    #v3=(Conflicted);
    const-string v6, "WI_FI"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    const-string v6, "WIFI"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 401
    :cond_1
    const-string v6, "wifi"

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 412
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 413
    const-string v6, "null"

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 418
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #network_type:Ljava/lang/String;
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v7=(Conflicted);
    return-void

    .line 402
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v4       #network_type:Ljava/lang/String;
    :cond_3
    #v0=(Uninit);v1=(Reference,Landroid/net/ConnectivityManager;);v2=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Uninit);v6=(Boolean);v7=(Reference,Ljava/lang/String;);
    const-string v6, "MOBILE"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    .line 404
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v6=(Reference,Landroid/content/Context;);
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 405
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 406
    .local v0, NetworkType:I
    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v0           #NetworkType:I
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #network_type:Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 416
    .local v2, e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    const-string v6, "null"

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_1

    .line 410
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v4       #network_type:Ljava/lang/String;
    :cond_4
    :try_start_1
    #v0=(Uninit);v1=(Reference,Landroid/net/ConnectivityManager;);v2=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Uninit);v6=(Boolean);v7=(Reference,Ljava/lang/String;);
    const-string v6, "null"

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    .line 958
    return-void
.end method

.method getAdMobApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adMobApplicationId:Ljava/lang/String;

    goto :goto_0
.end method

.method getAdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getAnalyticsServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    goto :goto_0
.end method

.method getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    goto :goto_0
.end method

.method getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method getAutoplayInterval(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .parameter "size"

    .prologue
    .line 229
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Long;);
    goto :goto_0
.end method

.method getBatteryLevel()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->batteryLevel:I

    #v0=(Integer);
    return v0
.end method

.method getConfigServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v0=(Reference,Landroid/content/Context;);
    return-object v0
.end method

.method getCustomAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 237
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    #v0=(Conflicted);
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method getDebugConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 221
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->debugConfig:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    #v0=(Conflicted);
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method getDebugServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->debugServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getDeviceHardwareModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    goto :goto_0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    goto :goto_0
.end method

.method getFeedbackServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getGPS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const-string v0, "null"

    .line 207
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    return-object v0

    :cond_1
    #v0=(Boolean);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    goto :goto_0
.end method

.method getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    goto :goto_0
.end method

.method getLogLevel()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    #v0=(Integer);
    return v0
.end method

.method getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    goto :goto_0
.end method

.method getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    goto :goto_0
.end method

.method getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    goto :goto_0
.end method

.method getMobclixVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "2.3.2"

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getNativeUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->nativeUrls:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->platform:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->platform:Ljava/lang/String;

    goto :goto_0
.end method

.method getRefreshTime(Ljava/lang/String;)J
    .locals 3
    .parameter "size"

    .prologue
    .line 225
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    #v0=(Conflicted);v1=(LongLo);v2=(LongHi);
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 250
    const-string v0, "UserAgent"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 251
    const-string v0, "UserAgent"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 253
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method getVcServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method hasBeenIntervalSinceLastAutoplay(Ljava/lang/String;)Z
    .locals 4
    .parameter "size"

    .prologue
    .line 231
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    #v0=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v2, p1}, Lcom/mobclix/android/sdk/Mobclix;->getAutoplayInterval(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method hasLocationPermission()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    #v0=(Boolean);
    return v0
.end method

.method public isDeviceRooted()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 265
    #v2=(One);
    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    #v4=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    if-ne v4, v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v5=(Conflicted);
    return v2

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v5=(Byte);
    move v2, v3

    .line 265
    #v2=(Null);
    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    #v2=(One);
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Runtime;);
    const-string v5, "su"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 268
    .local v1, proc:Ljava/lang/Process;
    #v1=(Reference,Ljava/lang/Process;);
    const/4 v4, 0x1

    #v4=(One);
    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1           #proc:Ljava/lang/Process;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    #v4=(Integer);
    if-eq v4, v2, :cond_0

    move v2, v3

    #v2=(Null);
    goto :goto_0

    .line 269
    :catch_0
    #v0=(Uninit);v2=(One);v4=(Conflicted);
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    iput v3, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    goto :goto_1
.end method

.method isEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 223
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method isRemoteConfigSet()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    #v0=(Integer);
    return v0
.end method

.method isRootedSet()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->rooted:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method isTopTask()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    #v0=(Boolean);
    return v0
.end method

.method rmRequireUserInteraction(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 235
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 258
    const-string v0, "UserAgent"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0, p1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method shouldAutoplay(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 227
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method updateLocation()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    #v1=(Reference,Landroid/content/Context;);
    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$1;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$1;);
    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/Mobclix$1;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix$1;);
    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixLocation;->getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z

    .line 388
    return-void
.end method

.method updateSession()V
    .locals 5

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateConnectivity()V

    .line 363
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    :cond_0
    :try_start_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    #v1=(Reference,Lorg/json/JSONObject;);
    const-string v2, "ts"

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 368
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, loc:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    #v1=(Reference,Lorg/json/JSONObject;);
    const-string v2, "ll"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "g"

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    .end local v0           #loc:Ljava/lang/String;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 372
    .restart local v0       #loc:Ljava/lang/String;
    :cond_1
    #v0=(Reference,Ljava/lang/String;);v1=(Boolean);v2=(Reference,Ljava/lang/String;);v3=(LongLo);v4=(LongHi);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    #v1=(Reference,Lorg/json/JSONObject;);
    const-string v2, "ll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    .end local v0           #loc:Ljava/lang/String;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto :goto_1
.end method
