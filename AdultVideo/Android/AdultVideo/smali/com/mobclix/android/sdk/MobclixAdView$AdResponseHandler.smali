.class Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;
.super Landroid/os/Handler;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    #v5=(Reference,Landroid/os/Bundle;);
    const-string v6, "type"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, type:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 671
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v7, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, instrPath:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    const-string v6, "handle_response"

    invoke-virtual {v5, v2, v6}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 674
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v5, :cond_0

    .line 675
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    iput-object v6, v5, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 677
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    const-string v6, "a_decode_json"

    invoke-virtual {v5, v2, v6}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "response"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    .line 679
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    const-string v7, "raw_json"

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreativeManager;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->rawResponse:Ljava/lang/String;

    const/4 v8, 0x0

    #v8=(Null);
    invoke-direct {v6, v7, v8}, Lcom/mobclix/android/sdk/MobclixCreativeManager;-><init>(Ljava/lang/String;I)V

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    iput-object v6, v5, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    .line 682
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->length()I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-lt v5, v6, :cond_1

    .line 684
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->getCreative()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "decoded_json"

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->creativeManager:Lcom/mobclix/android/sdk/MobclixCreativeManager;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreativeManager;->getCreative()Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    #v9=(Null);
    invoke-direct {v6, v7, v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iput-object v6, v5, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 687
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->isInitialized()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 689
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V

    .line 692
    :cond_1
    #v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 709
    .end local v2           #instrPath:Ljava/lang/String;
    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 693
    .restart local v2       #instrPath:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Ljava/lang/String;);v3=(Uninit);v7=(Reference,Ljava/lang/Object;);
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #instrPath:Ljava/lang/String;
    :cond_3
    #v0=(Uninit);v2=(Uninit);v5=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const-string v5, "failure"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 703
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    #v5=(Reference,Landroid/os/Bundle;);
    const-string v6, "errorCode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 704
    .local v1, errorCode:I
    #v1=(Integer);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    #v3=(Conflicted);v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 705
    .local v3, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v3, :cond_4

    .line 706
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-interface {v3, v6, v1}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V

    goto :goto_1
.end method
