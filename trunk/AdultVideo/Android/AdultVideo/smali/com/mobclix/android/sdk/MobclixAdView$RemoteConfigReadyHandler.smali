.class Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;
.super Landroid/os/Handler;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteConfigReadyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 469
    #v4=(Byte);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 471
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Byte);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_6

    .line 472
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->remoteConfigSet:Z

    .line 473
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    #v1=(Integer);
    if-ne v1, v4, :cond_2

    .line 474
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->shouldAutoplay(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setAllowAutoplay(Z)V

    .line 476
    :cond_2
    #v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->requireUserInteraction:I

    #v1=(Integer);
    if-ne v1, v4, :cond_3

    .line 477
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUserInteraction(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRichMediaRequiresUserInteraction(Z)V

    .line 479
    :cond_3
    #v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-eqz v1, :cond_5

    .line 480
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 484
    :cond_4
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd()V

    goto :goto_0

    .line 481
    :cond_5
    #v1=(Byte);v2=(LongHi);v3=(LongLo);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    #v1=(Byte);
    if-ltz v1, :cond_4

    .line 482
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_1

    .line 486
    :cond_6
    #v1=(Boolean);v2=(Reference,Ljava/lang/String;);v3=(Uninit);v4=(Byte);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 487
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_7

    .line 488
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const v3, -0xf423f

    #v3=(Integer);
    invoke-interface {v0, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V

    goto :goto_2
.end method
