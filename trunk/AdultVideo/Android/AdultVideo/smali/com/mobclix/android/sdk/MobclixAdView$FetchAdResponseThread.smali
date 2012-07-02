.class Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;
.super Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAdResponseThread"
.end annotation


# instance fields
.field nextRequestParams:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 499
    const-string v0, ""

    #v0=(Reference,Ljava/lang/String;);
    invoke-direct {p0, v0, p2}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 496
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;);
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    return-void
.end method

.method private getAdUrl()Ljava/lang/String;
    .locals 12

    .prologue
    .line 538
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v10, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9, v10}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, instrPath:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "build_request"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v0, data:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    new-instance v4, Ljava/lang/StringBuffer;

    #v4=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v4, keywordsBuffer:Ljava/lang/StringBuffer;
    #v4=(Reference,Ljava/lang/StringBuffer;);
    const-string v3, ""

    .line 544
    .local v3, keywords:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v7, Ljava/lang/StringBuffer;

    #v7=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 545
    .local v7, queryBuffer:Ljava/lang/StringBuffer;
    #v7=(Reference,Ljava/lang/StringBuffer;);
    const-string v6, ""

    .line 549
    .local v6, query:Ljava/lang/String;
    :try_start_0
    #v6=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "ad_feed_id_params"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAdServer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v8, "?p=android"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_9

    .line 553
    const-string v8, "&i="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const-string v8, "&s="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    :goto_0
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "software_env"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    const-string v8, "&av="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    const-string v8, "&u="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const-string v8, "&andid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const-string v8, "&v="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    const-string v8, "&ct="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "hardware_env"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    const-string v8, "&dm="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const-string v8, "&hwdm="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    const-string v8, "&sv="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    const-string v8, "&ua="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->isRootedSet()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 577
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->isDeviceRooted()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_a

    .line 578
    const-string v8, "&jb=1"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_0
    :goto_1
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "ad_view_state_id_params"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    const-string v8, "&o="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    #v9=(Integer);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 586
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v9, v8, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 588
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    #v8=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    if-ne v8, v9, :cond_b

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v8

    #v8=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/Mobclix;->hasBeenIntervalSinceLastAutoplay(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_b

    .line 589
    const-string v8, "&ap=1"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    :goto_2
    #v9=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$3(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$3(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 594
    const-string v8, "&as="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixAdView;->access$3(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :cond_1
    #v8=(Conflicted);v9=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-boolean v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 596
    const-string v8, "&t=1"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    :cond_2
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "geo_lo"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v8

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_3

    .line 602
    const-string v8, "&ll="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    :cond_3
    #v8=(Conflicted);
    const-string v8, "&l="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "keywords"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    #v5=(Conflicted);v9=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_c

    .line 633
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    #v8=(Integer);
    if-lez v8, :cond_5

    .line 634
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 635
    :cond_5
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "query"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    #v8=(Integer);
    if-lez v8, :cond_6

    .line 640
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 641
    :cond_6
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    const-string v9, "additional_params"

    invoke-virtual {v8, v2, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_7

    .line 646
    const-string v8, "&adurl="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->requestedAdUrlForAdView:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    :cond_7
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_8

    .line 648
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    :cond_8
    #v8=(Conflicted);
    const-string v8, ""

    #v8=(Reference,Ljava/lang/String;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    .line 650
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "request_url"

    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 662
    :goto_4
    #v1=(Conflicted);v11=(Conflicted);
    return-object v8

    .line 556
    :cond_9
    #v1=(Uninit);v5=(Uninit);v8=(Boolean);v11=(Uninit);
    const-string v8, "&a="

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 657
    :catch_0
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    move-exception v1

    .line 659
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 662
    const-string v8, ""

    goto :goto_4

    .line 580
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_1
    #v1=(Uninit);v5=(Uninit);v8=(Boolean);v11=(Uninit);
    const-string v8, "&jb=0"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 591
    :cond_b
    #v8=(Integer);v9=(Conflicted);
    const-string v8, "&ap=0"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 609
    :cond_c
    #v5=(Conflicted);v9=(Boolean);
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 610
    .local v5, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v5, :cond_d

    .line 611
    invoke-interface {v5}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v3

    .line 612
    :cond_d
    if-nez v3, :cond_e

    .line 613
    const-string v3, ""

    .line 614
    :cond_e
    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_f

    .line 615
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_11

    .line 616
    const-string v9, "&k="

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    :cond_f
    :goto_5
    #v9=(Conflicted);
    invoke-interface {v5}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->query()Ljava/lang/String;

    move-result-object v6

    .line 622
    if-nez v6, :cond_10

    .line 623
    const-string v6, ""

    .line 624
    :cond_10
    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_4

    .line 625
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_12

    .line 626
    const-string v9, "&q="

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v6, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 618
    :cond_11
    #v9=(Integer);
    const-string v9, "%2C"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 628
    :cond_12
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

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    const-string v2, "activity"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/app/ActivityManager;

    .line 511
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 512
    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 513
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 514
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 517
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->access$1(Lcom/mobclix/android/sdk/MobclixAdView;)V

    .line 518
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->getAdUrl()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->setUrl(Ljava/lang/String;)V

    .line 524
    invoke-super {p0}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->run()V

    goto :goto_0
.end method

.method setNextRequestParams(Ljava/lang/String;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    const-string p1, ""

    .line 531
    :cond_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    .line 532
    return-void
.end method
