.class Lcom/mobclix/android/sdk/Mobclix$2;
.super Landroid/content/BroadcastReceiver;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 594
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$2;);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 598
    const-string v1, "level"

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 599
    .local v0, level:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-static {v1, v0}, Lcom/mobclix/android/sdk/Mobclix;->access$6(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 600
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    return-void
.end method
