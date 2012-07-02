.class Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;
.super Ljava/lang/Object;
.source "MobclixAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEvent"
.end annotation


# instance fields
.field event:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;->event:Lorg/json/JSONObject;

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 66
    :cond_0
    :try_start_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Null);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$0()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$1()I

    move-result v2

    #v2=(Integer);
    sget v3, Lcom/mobclix/android/sdk/MobclixAnalytics;->SYNC_READY:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 67
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$2(Z)V

    .line 69
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$3()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 70
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$4()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$2(Z)V

    .line 93
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 75
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$3()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$5()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    #v1=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$6()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 80
    .local v1, fos:Ljava/io/FileOutputStream;
    #v1=(Reference,Ljava/io/FileOutputStream;);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$7()I

    move-result v2

    #v2=(Integer);
    if-le v2, v5, :cond_2

    .line 81
    const-string v2, ","

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    :cond_2
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAnalytics$LogEvent;->event:Lorg/json/JSONObject;

    #v2=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 85
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$7()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$8(I)V

    .line 86
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$7()I

    move-result v2

    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$9()I

    move-result v3

    #v3=(Integer);
    if-le v2, v3, :cond_3

    .line 87
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$10(Z)V

    .line 88
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$4()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    const/4 v2, 0x0

    :try_start_2
    #v2=(Null);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$2(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixAnalytics;->access$2(Z)V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    #v0=(Uninit);v3=(Integer);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method
