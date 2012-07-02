.class Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;
.super Landroid/os/Handler;
.source "MobclixFullScreenAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteConfigReadyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$0(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/util/ArrayList;)V

    .line 226
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$1(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/util/ArrayList;)V

    .line 227
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->getAd()V

    .line 228
    return-void
.end method
