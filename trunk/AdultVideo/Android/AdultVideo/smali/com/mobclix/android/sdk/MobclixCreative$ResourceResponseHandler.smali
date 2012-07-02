.class Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;
.super Landroid/os/Handler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->runNextAsyncRequest()V

    .line 501
    return-void
.end method
