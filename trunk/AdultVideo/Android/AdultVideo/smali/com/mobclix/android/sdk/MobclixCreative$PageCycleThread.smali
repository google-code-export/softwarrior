.class Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;
.super Ljava/util/TimerTask;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageCycleThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->sendEmptyMessage(I)Z

    .line 524
    return-void
.end method
