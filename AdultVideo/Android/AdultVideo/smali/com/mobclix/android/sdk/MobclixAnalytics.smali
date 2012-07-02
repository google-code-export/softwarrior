.class public Lcom/mobclix/android/sdk/MobclixAnalytics;
.super Ljava/lang/Object;
.source "MobclixAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;,
        Lcom/mobclix/android/sdk/MobclixAnalytics$Sync;
    }
.end annotation


# static fields
.field private static MC_ANALYTICS_DIRECTORY:Ljava/lang/String; = null

.field private static MC_DIRECTORY:Ljava/lang/String; = null

.field private static final MC_KEY_APPLICATION_ID:Ljava/lang/String; = "a"

.field private static final MC_KEY_APPLICATION_VERSION:Ljava/lang/String; = "v"

.field private static final MC_KEY_DEVICE_HARDWARE_MODEL:Ljava/lang/String; = "hwdm"

.field private static final MC_KEY_DEVICE_ID:Ljava/lang/String; = "d"

.field private static final MC_KEY_DEVICE_MODEL:Ljava/lang/String; = "dm"

.field private static final MC_KEY_DEVICE_SYSTEM_VERSION:Ljava/lang/String; = "dv"

.field private static final MC_KEY_MOBCLIX_LIBRARY_VERSION:Ljava/lang/String; = "m"

.field private static final MC_KEY_PLATFORM_ID:Ljava/lang/String; = "p"

.field private static final MC_KEY_USER_LANGUAGE_PREFERENCE:Ljava/lang/String; = "lg"

.field private static final MC_KEY_USER_LOCALE_PREFERENCE:Ljava/lang/String; = "lo"

.field private static MC_MAX_ANALYTICS_FILES:I = 0x0

.field private static MC_MAX_EVENTS_PER_FILE:I = 0x0

.field static SYNC_ERROR:I = 0x0

.field static SYNC_READY:I = 0x0

.field static SYNC_RUNNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MobclixAnalytics"

.field private static controller:Lcom/mobclix/android/sdk/Mobclix;

.field private static currentFile:Ljava/io/File;

.field private static fileCreated:Z

.field private static loggingEvent:Z

.field private static numLinesWritten:I

.field private static syncContents:Ljava/lang/String;

.field private static syncStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 22
    #v1=(Null);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 37
    const-string v0, "mobclix"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_DIRECTORY:Ljava/lang/String;

    .line 38
    const-string v0, "analytics"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    .line 39
    const/16 v0, 0x64

    #v0=(PosByte);
    sput v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_MAX_ANALYTICS_FILES:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_MAX_EVENTS_PER_FILE:I

    .line 43
    sput-object v2, Lcom/mobclix/android/sdk/MobclixAnalytics;->currentFile:Ljava/io/File;

    .line 44
    sput-boolean v1, Lcom/mobclix/android/sdk/MobclixAnalytics;->fileCreated:Z

    .line 45
    sput-boolean v1, Lcom/mobclix/android/sdk/MobclixAnalytics;->loggingEvent:Z

    .line 46
    sput v1, Lcom/mobclix/android/sdk/MobclixAnalytics;->numLinesWritten:I

    .line 48
    sput-object v2, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncContents:Ljava/lang/String;

    .line 49
    sput v1, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncStatus:I

    .line 50
    sput v1, Lcom/mobclix/android/sdk/MobclixAnalytics;->SYNC_READY:I

    .line 51
    const/4 v0, 0x1

    #v0=(One);
    sput v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->SYNC_RUNNING:I

    .line 52
    const/4 v0, -0x1

    #v0=(Byte);
    sput v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->SYNC_ERROR:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAnalytics;);
    return-void
.end method

.method private static OpenAnalyticsFile()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 97
    #v5=(Null);
    sput v6, Lcom/mobclix/android/sdk/MobclixAnalytics;->numLinesWritten:I

    .line 98
    sget-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v7=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 101
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    #v3=(UninitRef,Lorg/json/JSONObject;);
    sget-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v7, v7, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const/4 v8, 0x3

    #v8=(PosByte);
    new-array v8, v8, [Ljava/lang/String;

    #v8=(Reference,[Ljava/lang/String;);
    const/4 v9, 0x0

    #v9=(Null);
    const-string v10, "ll"

    #v10=(Reference,Ljava/lang/String;);
    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 102
    #v9=(One);
    const-string v10, "g"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 103
    #v9=(PosByte);
    const-string v10, "id"

    aput-object v10, v8, v9

    .line 101
    invoke-direct {v3, v7, v8}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 104
    .local v3, header:Lorg/json/JSONObject;
    #v3=(Reference,Lorg/json/JSONObject;);
    const-string v7, "a"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v7, "p"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getPlatform()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v7, "m"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v7, "v"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v7, "d"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v7, "dm"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v7, "dv"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v7, "hwdm"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v7, "m"

    const-string v8, "2.3.2"

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v7, "lg"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v7, "lo"

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    sget-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_DIRECTORY:Ljava/lang/String;

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 117
    .local v4, mcDir:Ljava/io/File;
    #v4=(Reference,Ljava/io/File;);
    new-instance v0, Ljava/io/File;

    #v0=(UninitRef,Ljava/io/File;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, anDir:Ljava/io/File;
    #v0=(Reference,Ljava/io/File;);
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v7, v7

    #v7=(Integer);
    sget v8, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_MAX_ANALYTICS_FILES:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #v8=(Integer);
    if-lt v7, v8, :cond_0

    .line 139
    .end local v0           #anDir:Ljava/io/File;
    .end local v4           #mcDir:Ljava/io/File;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v5

    .line 123
    .restart local v0       #anDir:Ljava/io/File;
    .restart local v4       #mcDir:Ljava/io/File;
    :catch_0
    #v0=(Reference,Ljava/io/File;);v1=(Uninit);v2=(Uninit);v3=(Reference,Lorg/json/JSONObject;);v4=(Reference,Ljava/io/File;);v5=(Null);v8=(Reference,Ljava/lang/String;);v9=(Null);v10=(Reference,Ljava/lang/String;);
    move-exception v7

    .line 124
    :cond_0
    :try_start_2
    #v8=(Conflicted);
    new-instance v7, Ljava/io/File;

    #v7=(UninitRef,Ljava/io/File;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    #v9=(Reference,Ljava/io/File;);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".log"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/io/File;);
    sput-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->currentFile:Ljava/io/File;

    .line 125
    sget-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->currentFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 127
    new-instance v2, Ljava/io/FileOutputStream;

    #v2=(UninitRef,Ljava/io/FileOutputStream;);
    sget-object v7, Lcom/mobclix/android/sdk/MobclixAnalytics;->currentFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 129
    .local v2, fos:Ljava/io/FileOutputStream;
    #v2=(Reference,Ljava/io/FileOutputStream;);
    const-string v7, "[{\"hb\":"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 130
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 131
    const-string v7, ",\"ev\":["

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    sput-boolean v6, Lcom/mobclix/android/sdk/MobclixAnalytics;->fileCreated:Z

    move v5, v6

    .line 139
    #v5=(One);
    goto :goto_0

    .line 133
    .end local v0           #anDir:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #mcDir:Ljava/io/File;
    :catch_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Null);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->loggingEvent:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncStatus:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$10(Z)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-boolean p0, Lcom/mobclix/android/sdk/MobclixAnalytics;->fileCreated:Z

    return-void
.end method

.method static synthetic access$11(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    sput p0, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncStatus:I

    return-void
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_DIRECTORY:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$14(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    sput-object p0, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncContents:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncContents:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-boolean p0, Lcom/mobclix/android/sdk/MobclixAnalytics;->loggingEvent:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->fileCreated:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->OpenAnalyticsFile()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$5()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    return-object v0
.end method

.method static synthetic access$6()Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->currentFile:Ljava/io/File;

    #v0=(Reference,Ljava/io/File;);
    return-object v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->numLinesWritten:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$8(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput p0, Lcom/mobclix/android/sdk/MobclixAnalytics;->numLinesWritten:I

    return-void
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->MC_MAX_EVENTS_PER_FILE:I

    #v0=(Integer);
    return v0
.end method

.method static getSyncStatus()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/mobclix/android/sdk/MobclixAnalytics;->syncStatus:I

    #v0=(Integer);
    return v0
.end method
