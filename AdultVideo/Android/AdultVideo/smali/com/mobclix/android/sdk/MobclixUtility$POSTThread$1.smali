.class Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;
.super Ljava/lang/Object;
.source "MobclixUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;->this$1:Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;->this$1:Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    invoke-interface {v0}, Lcom/mobclix/android/sdk/MobclixFeedback$Listener;->onSuccess()V

    .line 89
    return-void
.end method
