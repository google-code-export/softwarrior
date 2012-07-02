.class Lcom/mobclix/android/sdk/MobclixCreative$Action$1;
.super Landroid/os/Handler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadPreload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 1550
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action$1;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 1552
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    #v1=(Reference,Landroid/os/Bundle;);
    const-string v2, "type"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, type:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1554
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 1558
    :cond_0
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 1559
    return-void

    .line 1555
    :cond_1
    #v1=(Boolean);v2=(Reference,Ljava/lang/String;);v3=(Uninit);
    const-string v1, "failure"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    const-string v2, ""

    iput-object v2, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    goto :goto_0
.end method
