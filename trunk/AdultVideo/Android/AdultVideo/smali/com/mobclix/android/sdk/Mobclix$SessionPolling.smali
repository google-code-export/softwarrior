.class Lcom/mobclix/android/sdk/Mobclix$SessionPolling;
.super Ljava/util/TimerTask;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionPolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$SessionPolling;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$SessionPolling;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$SessionPolling;);
    return-void
.end method


# virtual methods
.method public isTopTask()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 869
    :try_start_0
    #v3=(Null);
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$2(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "activity"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/app/ActivityManager;

    .line 871
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 872
    #v2=(Reference,Ljava/util/List;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 873
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 874
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 875
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$2(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 876
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    :catch_0
    #v1=(Uninit);v2=(Conflicted);
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    move v2, v3

    #v2=(Null);
    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 864
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->isTopTask()Z

    move-result v1

    #v1=(Boolean);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    monitor-exit p0

    return-void

    .line 864
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method
