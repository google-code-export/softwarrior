.class public abstract Lcom/mobclix/android/sdk/MobclixAdView;
.super Landroid/widget/ViewFlipper;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;,
        Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;,
        Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;
    }
.end annotation


# static fields
.field static final ADSIZE_300x250:Ljava/lang/String; = "300x250"

.field static final ADSIZE_320x50:Ljava/lang/String; = "320x50"

.field private static final MINIMUM_REFRESH_TIME:J = 0x3a98L

.field static debugOrdinal:I

.field static lastAutoplayTime:Ljava/util/HashMap;
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


# instance fields
.field private TAG:Ljava/lang/String;

.field ad:Lcom/mobclix/android/sdk/MobclixCreative;

.field adCode:Ljava/lang/String;

.field private adSpace:Ljava/lang/String;

.field private adThread:Ljava/lang/Thread;

.field allowAutoplay:I

.field backgroundColor:I

.field context:Landroid/content/Context;

.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

.field getNextAdAttempts:I

.field final handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

.field height:F

.field private instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

.field instrumentationGroup:Ljava/lang/String;

.field private isManuallyPaused:Z

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mobclix/android/sdk/MobclixAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field lock:Ljava/lang/Object;

.field ordinal:I

.field prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

.field rawResponse:Ljava/lang/String;

.field final rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

.field private refreshRate:J

.field remoteConfigSet:Z

.field requestedAdUrlForAdView:Ljava/lang/String;

.field requireUserInteraction:I

.field restored:Z

.field rotate:Z

.field scale:F

.field size:Ljava/lang/String;

.field testMode:Z

.field private timer:Ljava/util/Timer;

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/mobclix/android/sdk/MobclixAdView;->debugOrdinal:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "a"
    .parameter "s"

    .prologue
    const/4 v2, -0x1

    #v2=(Byte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x0

    .line 84
    #v3=(Null);
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 31
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const-string v1, "MobclixAdView"

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 37
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 39
    new-instance v1, Ljava/lang/Object;

    #v1=(UninitRef,Ljava/lang/Object;);
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #v1=(Reference,Ljava/lang/Object;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->lock:Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    invoke-direct {v1, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 42
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    invoke-direct {v1, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 43
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->remoteConfigSet:Z

    .line 48
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 51
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    .line 52
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    .line 53
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requireUserInteraction:I

    .line 54
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 57
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    .line 60
    iput v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 63
    const/high16 v1, 0x3f80

    #v1=(Integer);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 66
    new-instance v1, Ljava/util/HashSet;

    #v1=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #v1=(Reference,Ljava/util/HashSet;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 71
    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 72
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 73
    iput v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 75
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 76
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 78
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    .line 81
    iput v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    .line 85
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 88
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 89
    :catch_0
    #v1=(LongLo);
    move-exception v0

    .line 90
    .local v0, e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v0

    .line 91
    .end local v0           #e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    :catch_1
    #v0=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "a"
    .parameter "s"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    #v3=(Byte);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x0

    .line 95
    #v4=(Null);
    invoke-direct {p0, p1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const-string v2, "MobclixAdView"

    #v2=(Reference,Ljava/lang/String;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 37
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 39
    new-instance v2, Ljava/lang/Object;

    #v2=(UninitRef,Ljava/lang/Object;);
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #v2=(Reference,Ljava/lang/Object;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->lock:Ljava/lang/Object;

    .line 41
    new-instance v2, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    invoke-direct {v2, p0, v4}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 42
    new-instance v2, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    invoke-direct {v2, p0, v4}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 43
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->remoteConfigSet:Z

    .line 48
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    .line 50
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 51
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    .line 52
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    .line 53
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requireUserInteraction:I

    .line 54
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 57
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    .line 60
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 63
    const/high16 v2, 0x3f80

    #v2=(Integer);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 66
    new-instance v2, Ljava/util/HashSet;

    #v2=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #v2=(Reference,Ljava/util/HashSet;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 67
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    .line 68
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 70
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 71
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 72
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 73
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 75
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 76
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 78
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    .line 79
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    .line 81
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    .line 96
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 98
    const-string v2, "http://schemas.android.com/apk/res/android"

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "background"

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {p3, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, colorString:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 104
    :cond_0
    :try_start_0
    #v2=(Conflicted);
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v1

    .line 107
    .end local v1           #e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    :catch_1
    #v1=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    return-void
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method private initialize(Landroid/app/Activity;)V
    .locals 17
    .parameter "a"

    .prologue
    .line 266
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixAdView;->lock:Ljava/lang/Object;

    #v12=(Reference,Ljava/lang/Object;);
    monitor-enter v12

    .line 267
    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 268
    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef,Ljava/lang/StringBuilder;);
    sget-object v13, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v13=(Reference,Ljava/lang/String;);
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/StringBuilder;);
    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v13, Lcom/mobclix/android/sdk/MobclixAdView;->debugOrdinal:I

    #v13=(Integer);
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    .line 269
    sget v11, Lcom/mobclix/android/sdk/MobclixAdView;->debugOrdinal:I

    #v11=(Integer);
    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/mobclix/android/sdk/MobclixAdView;->debugOrdinal:I

    .line 266
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 274
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v11

    #v11=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v11}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_0

    .line 276
    new-instance v10, Landroid/webkit/WebView;

    #v10=(UninitRef,Landroid/webkit/WebView;);
    invoke-virtual/range {p0 .. p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #v11=(Reference,Landroid/content/Context;);
    invoke-direct {v10, v11}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 277
    .local v10, w:Landroid/webkit/WebView;
    #v10=(Reference,Landroid/webkit/WebView;);
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_1
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    .line 280
    .local v8, settings:Landroid/webkit/WebSettings;
    :try_start_2
    #v8=(Reference,Landroid/webkit/WebSettings;);
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getUserAgentString"

    const/4 v13, 0x0

    #v13=(Null);
    new-array v13, v13, [Ljava/lang/Class;

    #v13=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 281
    .local v4, getUserAgent:Ljava/lang/reflect/Method;
    #v4=(Reference,Ljava/lang/reflect/Method;);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v11, 0x0

    #v11=(Null);
    new-array v11, v11, [Ljava/lang/Object;

    #v11=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    .end local v4           #getUserAgent:Ljava/lang/reflect/Method;
    .end local v8           #settings:Landroid/webkit/WebSettings;
    .end local v10           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    sget-object v12, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    array-length v13, v12

    #v13=(Integer);
    const/4 v11, 0x0

    :goto_1
    #v7=(Conflicted);v11=(Integer);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    if-lt v11, v13, :cond_2

    .line 297
    const/4 v11, 0x1

    #v11=(One);
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mobclix/android/sdk/MobclixAdView;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    #v11=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mobclix/android/sdk/MobclixAdView;->setBackgroundColor(I)V

    .line 303
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    #v11=(Reference,Landroid/webkit/CookieManager;);
    const/4 v12, 0x1

    #v12=(One);
    invoke-virtual {v11, v12}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 306
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 315
    :goto_2
    const-string v1, "com.admob.android.ads.AdManager"

    .line 317
    .local v1, className1:Ljava/lang/String;
    :try_start_4
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 318
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v2=(Reference,Ljava/lang/Class;);
    const-string v11, "setTestDevices"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    #v12=(Reference,[Ljava/lang/Class;);
    const/4 v13, 0x0

    #v13=(Null);
    const-class v14, [Ljava/lang/String;

    #v14=(Reference,Ljava/lang/Class;);
    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 319
    .local v5, m:Ljava/lang/reflect/Method;
    #v5=(Reference,Ljava/lang/reflect/Method;);
    const-string v11, "TEST_EMULATOR"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v12, 0x0

    #v12=(Null);
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljava/lang/String;

    .line 320
    .local v9, testEmulator:Ljava/lang/String;
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x1

    #v12=(One);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference,[Ljava/lang/Object;);
    const/4 v13, 0x0

    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference,[Ljava/lang/String;);
    const/4 v15, 0x0

    #v15=(Null);
    aput-object v9, v14, v15

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 323
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v9           #testEmulator:Ljava/lang/String;
    :goto_3
    #v2=(Conflicted);v5=(Conflicted);v9=(Conflicted);v11=(Reference,Ljava/lang/Exception;);v12=(Conflicted);v13=(Integer);v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    if-eqz v11, :cond_1

    .line 324
    new-instance v6, Ljava/lang/Thread;

    #v6=(UninitRef,Ljava/lang/Thread;);
    new-instance v11, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;

    #v11=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;);
    const/4 v12, 0x0

    #v12=(Null);
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;);
    invoke-direct {v6, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    .local v6, rcThread:Ljava/lang/Thread;
    #v6=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 327
    .end local v6           #rcThread:Ljava/lang/Thread;
    :cond_1
    #v6=(Conflicted);v12=(Conflicted);
    return-void

    .line 266
    .end local v1           #className1:Ljava/lang/String;
    :catchall_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Conflicted);v12=(Reference,Ljava/lang/Object;);v13=(Conflicted);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    move-exception v11

    :try_start_5
    #v11=(Reference,Ljava/lang/Throwable;);
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 282
    .restart local v8       #settings:Landroid/webkit/WebSettings;
    .restart local v10       #w:Landroid/webkit/WebView;
    :catch_0
    #v4=(Conflicted);v8=(Reference,Landroid/webkit/WebSettings;);v10=(Reference,Landroid/webkit/WebView;);
    move-exception v3

    .line 283
    .local v3, e:Ljava/lang/Exception;
    :try_start_6
    #v3=(Reference,Ljava/lang/Exception;);
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-string v12, "Mozilla/5.0 (Linux; U; Android 1.1; en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v11, v12}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 287
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #settings:Landroid/webkit/WebSettings;
    .end local v10           #w:Landroid/webkit/WebView;
    :catch_1
    #v3=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v3

    .line 288
    .local v3, e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    throw v3

    .line 291
    .end local v3           #e:Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
    :cond_2
    #v3=(Conflicted);v7=(Conflicted);v11=(Integer);v13=(Integer);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    aget-object v7, v12, v11

    .line 292
    .local v7, s:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    sget-object v14, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    #v14=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_3

    .line 293
    sget-object v14, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    #v14=(Reference,Ljava/util/HashMap;);
    const-wide/16 v15, 0x0

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    #v15=(Reference,Ljava/lang/Long;);
    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_3
    #v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 321
    .end local v7           #s:Ljava/lang/String;
    .restart local v1       #className1:Ljava/lang/String;
    :catch_2
    #v1=(Reference,Ljava/lang/String;);v2=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v11=(Reference,Ljava/lang/Object;);v12=(Conflicted);
    move-exception v11

    goto :goto_3

    .line 307
    .end local v1           #className1:Ljava/lang/String;
    :catch_3
    #v1=(Uninit);v2=(Uninit);v5=(Uninit);v9=(Uninit);v12=(One);
    move-exception v11

    goto :goto_2

    .line 289
    :catch_4
    #v7=(Uninit);v11=(Conflicted);v12=(Reference,Ljava/lang/Object;);v13=(Conflicted);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method

.method private restoreAd()V
    .locals 4

    .prologue
    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference,Landroid/content/Context;);
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 420
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->remoteConfigSet:Z

    .line 421
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->getCreative()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v1, p0, v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 422
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 430
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 424
    :cond_2
    #v0=(Uninit);v1=(Boolean);v2=(Reference,Ljava/lang/String;);v3=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    #v1=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 425
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_3

    .line 426
    const v2, -0xf423f

    #v2=(Integer);
    invoke-interface {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 429
    .end local v0           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 414
    :catch_1
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method private stopFetchAdRequestTimer()V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 243
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 244
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 239
    :cond_0
    #v0=(Reference,Ljava/util/Timer;);
    monitor-exit p0

    .line 247
    return-void

    .line 239
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    #v0=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public allowAutoplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    #v0=(One);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public cancelAd()V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    #v0=(Reference,Ljava/lang/Thread;);
    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 433
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 439
    return-void

    .line 433
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    :try_start_1
    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 148
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onStop()V

    .line 150
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void
.end method

.method public getAd()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method getAd(Ljava/lang/String;)V
    .locals 5
    .parameter "params"

    .prologue
    .line 391
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->remoteConfigSet:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 409
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 394
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    #v2=(Reference,Ljava/lang/Thread;);
    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 396
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    .line 399
    :cond_1
    #v2=(Reference,Ljava/lang/Thread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    sget-object v4, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, instrPath:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v3, "start_request"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    .line 403
    .local v0, fetchAdResponseThread:Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;);
    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->setNextRequestParams(Ljava/lang/String;)V

    .line 405
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    #v2=(UninitRef,Ljava/lang/Thread;);
    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v2=(Reference,Ljava/lang/Thread;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    .line 406
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 408
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    goto :goto_0
.end method

.method public getNextAd(Ljava/lang/String;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 358
    #v3=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 360
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-le v1, v2, :cond_1

    .line 361
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    .line 384
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 364
    :cond_1
    #v0=(Uninit);v1=(Integer);v2=(PosByte);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    .line 366
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreativeManager;->creatives:Lorg/json/JSONArray;

    if-nez v1, :cond_3

    .line 367
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nextCreative()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 372
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_4
    :try_start_0
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->getCreative()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 377
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->isInitialized()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 378
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRequestedAdUrlForAdView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    if-lt v1, v2, :cond_0

    .line 125
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 127
    :catch_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    #v0=(Reference,Ljava/lang/IllegalArgumentException;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Android project  issue 6191  workaround."

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);
    move-exception v1

    .line 134
    :try_start_5
    #v1=(Reference,Ljava/lang/Throwable;);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 135
    throw v1

    .line 139
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 344
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #v1=(Reference,Landroid/view/AbsSavedState;);
    invoke-super {p0, v1}, Landroid/widget/ViewFlipper;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 346
    :try_start_0
    move-object v0, p1

    #v0=(Reference,Landroid/os/Parcelable;);
    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    const-string v2, "response"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 349
    :try_start_1
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreativeManager;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    check-cast p1, Landroid/os/Bundle;

    .end local p1
    const-string v3, "nCreative"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixCreativeManager;-><init>(Ljava/lang/String;I)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    :goto_0
    :try_start_2
    #v3=(Conflicted);
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->restoreAd()V

    .line 352
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    :cond_0
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 354
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 350
    :catch_1
    #v1=(Conflicted);v2=(Reference,Ljava/lang/String;);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 331
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 333
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->onStop()V

    .line 335
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef,Landroid/os/Bundle;);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, savedInstanceState:Landroid/os/Bundle;
    #v0=(Reference,Landroid/os/Bundle;);
    const-string v1, "response"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "nCreative"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->getIndex()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    .end local v0           #savedInstanceState:Landroid/os/Bundle;
    :goto_0
    #v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 445
    if-nez p2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->trackingPixelsFired:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->fireOnShowTrackingPixels()V

    .line 450
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 215
    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    if-eqz v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->resume()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onResume()V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    :try_start_0
    #v0=(Uninit);
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :goto_1
    :try_start_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0

    .line 227
    :catch_1
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 230
    :catch_2
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 251
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 252
    return-void
.end method

.method public removeMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    #v0=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 256
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_1

    .line 257
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v0=(LongLo);
    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 262
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 263
    return-void

    .line 259
    :cond_1
    #v0=(Byte);v1=(LongHi);v2=(LongLo);v3=(LongHi);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0
.end method

.method public richMediaRequiresUserInteraction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    #v0=(One);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requireUserInteraction:I

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setAdSpace(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    return-void
.end method

.method public setAllowAutoplay(Z)V
    .locals 1
    .parameter "auto"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    return-void

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 168
    #v4=(One);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "x"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, formatWidth:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v3, "x"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, formatHeight:I
    #v0=(Integer);
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v2=(Integer);
    if-ne v2, v1, :cond_0

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_0

    .line 172
    int-to-float v2, v1

    #v2=(Float);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 173
    int-to-float v2, v0

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 179
    :goto_0
    #v2=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void

    .line 175
    :cond_0
    int-to-float v2, v1

    #v2=(Float);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 176
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 177
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference,Landroid/content/res/Resources;);
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #v2=(Integer);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    goto :goto_0
.end method

.method public setRefreshTime(J)V
    .locals 6
    .parameter "rate"

    .prologue
    const-wide/16 v4, 0x3a98

    .line 188
    #v4=(LongLo);v5=(LongHi);
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 190
    iput-wide p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 191
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_0

    .line 200
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 194
    :cond_0
    #v0=(Byte);v1=(LongHi);v2=(LongLo);
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v0=(LongLo);
    cmp-long v0, v0, v4

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 195
    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 197
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;);
    iget-wide v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    #v2=(LongLo);
    iget-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public setRequestedAdUrlForAdView(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setRichMediaRequiresUserInteraction(Z)V
    .locals 1
    .parameter "user"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->requireUserInteraction:I

    return-void

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setShouldRotate(Z)V
    .locals 0
    .parameter "shouldRotate"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter "t"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    return-void
.end method

.method public shouldRotate()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    #v0=(Boolean);
    return v0
.end method
