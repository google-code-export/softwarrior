.class Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;
.super Landroid/os/Handler;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixConfigHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixConfigHandler;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$0(Lcom/mobclix/android/sdk/Mobclix;)V

    .line 763
    return-void
.end method
