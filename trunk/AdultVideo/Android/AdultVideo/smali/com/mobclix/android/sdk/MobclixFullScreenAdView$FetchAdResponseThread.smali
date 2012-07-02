.class Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;
.super Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.source "MobclixFullScreenAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAdResponseThread"
.end annotation


# instance fields
.field nextRequestParams:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 265
    const-string v0, ""

    #v0=(Reference,Ljava/lang/String;);
    invoke-direct {p0, v0, p2}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 262
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;);
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    return-void
.end method

.method private getAdUrl()Ljava/lang/String;
    .locals 12

    .prologue
    .line 276
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v10, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9, v10}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, instrPath:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "build_request"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v0, data:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    new-instance v4, Ljava/lang/StringBuffer;

    #v4=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v4, keywordsBuffer:Ljava/lang/StringBuffer;
    #v4=(Reference,Ljava/lang/StringBuffer;);
    const-string v3, ""

    .line 282
    .local v3, keywords:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v7, Ljava/lang/StringBuffer;

    #v7=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v7, queryBuffer:Ljava/lang/StringBuffer;
    #v7=(Reference,Ljava/lang/StringBuffer;);
    const-string v6, ""

    .line 287
    .local v6, query:Ljava/lang/String;
    :try_start_0
    #v6=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "ad_feed_id_params"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAdServer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v8, "?p=android"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adCode:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 291
    const-string v8, "&i="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v8, "&s="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "fullscreen"

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :goto_0
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "software_env"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    const-string v8, "&av="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v8, "&u="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v8, "&andid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v8, "&v="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v8, "&ct="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "hardware_env"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    const-string v8, "&dm="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v8, "&hwdm="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v8, "&sv="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v8, "&ua="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->isRootedSet()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 315
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->isDeviceRooted()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_8

    .line 316
    const-string v8, "&jb=1"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_0
    :goto_1
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "ad_view_state_id_params"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "geo_lo"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v8

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 329
    const-string v8, "&ll="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_1
    #v8=(Conflicted);
    const-string v8, "&l="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "keywords"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    #v5=(Conflicted);v9=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_9

    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    #v8=(Integer);
    if-lez v8, :cond_3

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 362
    :cond_3
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "query"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    #v8=(Integer);
    if-lez v8, :cond_4

    .line 367
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 368
    :cond_4
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "query"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_5

    .line 373
    const-string v8, "&adurl="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_5
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_6

    .line 375
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    :cond_6
    #v8=(Conflicted);
    const-string v8, ""

    #v8=(Reference,Ljava/lang/String;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    .line 377
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "request_url"

    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 390
    :goto_3
    #v1=(Conflicted);v11=(Conflicted);
    return-object v8

    .line 294
    :cond_7
    #v1=(Uninit);v5=(Uninit);v8=(Boolean);v11=(Uninit);
    const-string v8, "&a="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->adCode:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 385
    :catch_0
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    move-exception v1

    .line 387
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 390
    const-string v8, ""

    goto :goto_3

    .line 318
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_1
    #v1=(Uninit);v5=(Uninit);v8=(Boolean);v11=(Uninit);
    const-string v8, "&jb=0"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 336
    :cond_9
    #v5=(Conflicted);v9=(Boolean);
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 337
    .local v5, listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v5, :cond_a

    .line 338
    invoke-interface {v5}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v3

    .line 339
    :cond_a
    if-nez v3, :cond_b

    .line 340
    const-string v3, ""

    .line 341
    :cond_b
    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_c

    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_e

    .line 343
    const-string v9, "&k="

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :cond_c
    :goto_4
    #v9=(Conflicted);
    invoke-interface {v5}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->query()Ljava/lang/String;

    move-result-object v6

    .line 349
    if-nez v6, :cond_d

    .line 350
    const-string v6, ""

    .line 351
    :cond_d
    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_2

    .line 352
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_f

    .line 353
    const-string v9, "&q="

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v6, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 345
    :cond_e
    #v9=(Integer);
    const-string v9, "%2C"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 355
    :cond_f
    #v9=(Integer);
    const-string v9, "%2B"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v6, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$FetchAdResponseThread;->setUrl(Ljava/lang/String;)V

    .line 270
    invoke-super {p0}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->run()V

    .line 272
    return-void
.end method
