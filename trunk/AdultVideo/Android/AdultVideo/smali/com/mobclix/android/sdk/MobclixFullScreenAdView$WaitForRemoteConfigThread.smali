.class Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;
.super Ljava/lang/Object;
.source "MobclixFullScreenAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForRemoteConfigThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 214
    .local v1, t:Ljava/lang/Long;
    :cond_0
    :try_start_0
    #v1=(Reference,Ljava/lang/Long;);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

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

    .line 218
    :cond_1
    #v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;->sendEmptyMessage(I)Z

    .line 219
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 215
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
