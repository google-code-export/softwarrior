.class Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;
.super Ljava/lang/Object;
.source "MobclixAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForRemoteConfigThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 458
    .local v1, t:Ljava/lang/Long;
    :cond_0
    :try_start_0
    #v1=(Reference,Ljava/lang/Long;);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-eq v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-ltz v2, :cond_0

    .line 462
    :cond_1
    #v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->sendEmptyMessage(I)Z

    .line 463
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 459
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
