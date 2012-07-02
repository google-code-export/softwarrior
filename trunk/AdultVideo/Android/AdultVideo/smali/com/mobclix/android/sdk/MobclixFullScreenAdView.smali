.class public Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
.super Ljava/lang/Object;
.source "MobclixFullScreenAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;,
        Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;,
        Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;
    }
.end annotation


# static fields
.field static debugOrdinal:I


# instance fields
.field private TAG:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

.field adCode:Ljava/lang/String;

.field private adThread:Ljava/lang/Thread;

.field backgroundColor:I

.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field private creativeId:Ljava/lang/String;

.field creatives:Lorg/json/JSONArray;

.field final handler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;

.field hasAd:Z

.field private instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

.field instrumentationGroup:Ljava/lang/String;

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field lock:Ljava/lang/Object;

.field nCreative:I

.field private onLoadUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rawResponse:Ljava/lang/String;

.field final rcHandler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;

.field requestAndDisplayAd:Z

.field requestedAdUrlForAdView:Ljava/lang/String;

.field scale:F

.field screenHeight:I

.field screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->debugOrdinal:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 37
    #v1=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    .line 32
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd:Z

    .line 114
    const-string v0, "MobclixFullScreenAdView"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->TAG:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 117
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    .line 118
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef,Ljava/lang/Object;);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference,Ljava/lang/Object;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->lock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;);
    invoke-direct {v0, p0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->handler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;

    .line 121
    new-instance v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;);
    invoke-direct {v0, p0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;

    .line 127
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 129
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    .line 133
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->backgroundColor:I

    .line 136
    const/high16 v0, 0x3f80

    #v0=(Integer);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->scale:F

    .line 139
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference,Ljava/util/HashSet;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adCode:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creativeId:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rawResponse:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creatives:Lorg/json/JSONArray;

    .line 147
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->nCreative:I

    .line 38
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->initialize(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onLoadUrls:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onTouchUrls:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onLoadUrls:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    return-object v0
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onTouchUrls:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    return-object v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creativeId:Ljava/lang/String;

    return-void
.end method

.method private initialize(Landroid/app/Activity;)V
    .locals 8
    .parameter "a"

    .prologue
    .line 170
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->lock:Ljava/lang/Object;

    #v6=(Reference,Ljava/lang/Object;);
    monitor-enter v6

    .line 171
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    sget-object v7, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, "_fullscreen_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->debugOrdinal:I

    #v7=(Integer);
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    .line 172
    sget v5, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->debugOrdinal:I

    #v5=(Integer);
    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->debugOrdinal:I

    .line 170
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    .line 176
    invoke-static {p1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 179
    :try_start_1
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v5

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 180
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 181
    new-instance v4, Landroid/webkit/WebView;

    #v4=(UninitRef,Landroid/webkit/WebView;);
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference,Landroid/content/Context;);
    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v4, w:Landroid/webkit/WebView;
    #v4=(Reference,Landroid/webkit/WebView;);
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 185
    .local v3, settings:Landroid/webkit/WebSettings;
    :try_start_2
    #v3=(Reference,Landroid/webkit/WebSettings;);
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getUserAgentString"

    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Class;

    #v7=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 186
    .local v2, getUserAgent:Ljava/lang/reflect/Method;
    #v2=(Reference,Ljava/lang/reflect/Method;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .end local v2           #getUserAgent:Ljava/lang/reflect/Method;
    .end local v3           #settings:Landroid/webkit/WebSettings;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    new-instance v0, Landroid/util/DisplayMetrics;

    #v0=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    .local v0, dm:Landroid/util/DisplayMetrics;
    #v0=(Reference,Landroid/util/DisplayMetrics;);
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    #v5=(Reference,Landroid/view/WindowManager;);
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #v5=(Integer);
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->screenWidth:I

    .line 197
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->screenHeight:I

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    #v5=(Reference,Landroid/content/res/Resources;);
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    #v5=(Integer);
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->scale:F

    .line 201
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    #v5=(Reference,Landroid/webkit/CookieManager;);
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 206
    return-void

    .line 170
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :catchall_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Conflicted);v6=(Reference,Ljava/lang/Object;);
    move-exception v5

    :try_start_3
    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 187
    .restart local v3       #settings:Landroid/webkit/WebSettings;
    .restart local v4       #w:Landroid/webkit/WebView;
    :catch_0
    #v2=(Conflicted);v3=(Reference,Landroid/webkit/WebSettings;);v4=(Reference,Landroid/webkit/WebView;);
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    #v1=(Reference,Ljava/lang/Exception;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-string v6, "Mozilla/5.0 (Linux; U; Android 1.1; en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 192
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #settings:Landroid/webkit/WebSettings;
    .end local v4           #w:Landroid/webkit/WebView;
    :catch_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method


# virtual methods
.method public addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    #v0=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public displayRequestedAd()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v7, 0x0

    .line 49
    #v7=(Null);
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    #v6=(Boolean);
    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    if-nez v6, :cond_1

    .line 50
    :cond_0
    #v6=(Conflicted);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->TAG:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    const-string v8, "FullScreen Ad did not display, ad not yet loaded."

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 99
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v6

    .line 56
    :cond_1
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);v8=(One);v9=(Uninit);v10=(Uninit);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    const-string v9, "activity"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/app/ActivityManager;

    .line 58
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 59
    #v6=(Reference,Ljava/util/List;);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 61
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 62
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    #v9=(Reference,Landroid/app/Activity;);
    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    .line 63
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v6=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v6, v6, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 64
    #v6=(Null);
    goto :goto_0

    .line 66
    .end local v0           #am:Landroid/app/ActivityManager;
    :catch_0
    #v0=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    move-exception v6

    .line 70
    :cond_2
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v6, v6, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->failedVideoAttempt:Z

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 71
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadAd()V

    .line 75
    :cond_3
    #v6=(Conflicted);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v6

    #v6=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v9, v6, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 77
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v2, mIntent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, packageName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-class v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "fullscreen"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    #v1=(Conflicted);v9=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_5

    .line 87
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onLoadUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    #v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_6

    .line 93
    iput-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 94
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    .line 95
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd:Z

    .line 96
    iput-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onLoadUrls:Ljava/util/ArrayList;

    .line 97
    iput-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onTouchUrls:Ljava/util/ArrayList;

    move v6, v8

    .line 99
    #v6=(One);
    goto/16 :goto_0

    .line 83
    :cond_5
    #v4=(Uninit);v5=(Uninit);v6=(Reference,Ljava/util/Iterator;);
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 84
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v1, :cond_4

    .line 85
    invoke-interface {v1, p0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->onPresentAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    goto :goto_1

    .line 87
    .end local v1           #listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    :cond_6
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 88
    .local v4, t:Ljava/lang/String;
    new-instance v5, Ljava/lang/Thread;

    #v5=(UninitRef,Ljava/lang/Thread;);
    new-instance v9, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v9=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v10, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    #v10=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v10}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #v10=(Reference,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v9, v4, v10}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v9=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v5, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v5, trackingThread:Ljava/lang/Thread;
    #v5=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->activity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    return-object v0
.end method

.method getAd()V
    .locals 5

    .prologue
    .line 232
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    #v2=(Reference,Ljava/lang/Thread;);
    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 234
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    .line 237
    :cond_0
    #v2=(Reference,Ljava/lang/Thread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    sget-object v4, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, instrPath:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v3, "start_request"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->handler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;

    invoke-direct {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Landroid/os/Handler;)V

    .line 241
    .local v0, fetchAdResponseThread:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;);
    new-instance v2, Ljava/lang/Thread;

    #v2=(UninitRef,Ljava/lang/Thread;);
    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v2=(Reference,Ljava/lang/Thread;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    .line 242
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 244
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    return-void
.end method

.method public getRequestedAdUrlForAdView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    #v0=(Boolean);
    return v0
.end method

.method onPageFinished(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V
    .locals 3
    .parameter "webview"

    .prologue
    .line 248
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    .line 249
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 253
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    #v1=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 257
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->displayRequestedAd()Z

    .line 259
    :cond_1
    return-void

    .line 253
    :cond_2
    #v1=(Reference,Ljava/util/Iterator;);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 254
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->onFinishLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    goto :goto_0
.end method

.method public removeMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    #v0=(Reference,Ljava/util/HashSet;);
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public requestAd()V
    .locals 3

    .prologue
    .line 42
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    #v1=(Reference,Ljava/lang/Thread;);
    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 44
    :cond_1
    #v0=(Uninit);v1=(Reference,Ljava/lang/Thread;);v2=(Uninit);
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .local v0, rcThread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public requestAndDisplayAd()V
    .locals 3

    .prologue
    .line 103
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->hasAd:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->displayRequestedAd()Z

    .line 112
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 107
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adThread:Ljava/lang/Thread;

    #v1=(Reference,Ljava/lang/Thread;);
    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd:Z

    .line 110
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v0, rcThread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setRequestedAdUrlForAdView(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    .line 151
    return-void
.end method
