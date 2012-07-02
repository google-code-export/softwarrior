.class Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;
.super Ljava/lang/Object;
.source "MobclixUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "POSTThread"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

.field params:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 1
    .parameter "u"
    .parameter "p"
    .parameter "a"
    .parameter "l"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 32
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->url:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->params:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->activity:Landroid/app/Activity;

    .line 35
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    .line 36
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFeedback$Listener;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 97
    :cond_1
    :try_start_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$2;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$2;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$2;-><init>(Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$2;);
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    #v1=(Conflicted);
    move-exception v0

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFeedback$Listener;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 86
    :cond_1
    :try_start_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;-><init>(Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread$1;);
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    #v1=(Conflicted);
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, ostream:Ljava/io/DataOutputStream;
    #v3=(Null);
    const/4 v1, 0x0

    .line 46
    .local v1, con:Ljava/net/HttpURLConnection;
    :try_start_0
    #v1=(Null);
    new-instance v6, Ljava/net/URL;

    #v6=(UninitRef,Ljava/net/URL;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->url:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    .local v6, u:Ljava/net/URL;
    #v6=(Reference,Ljava/net/URL;);
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    #v0=(Reference,Ljava/net/URLConnection;);
    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 51
    #v1=(Reference,Ljava/net/HttpURLConnection;);
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 53
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 56
    new-instance v4, Ljava/io/DataOutputStream;

    #v4=(UninitRef,Ljava/io/DataOutputStream;);
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    #v7=(Reference,Ljava/io/OutputStream;);
    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 57
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .local v4, ostream:Ljava/io/DataOutputStream;
    :try_start_1
    #v4=(Reference,Ljava/io/DataOutputStream;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->params:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 62
    .local v5, responseCode:I
    #v5=(Integer);
    const/16 v7, 0xc8

    #v7=(PosShort);
    if-ne v5, v7, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->onSuccess()V

    .line 67
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    if-eqz v4, :cond_3

    .line 74
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 75
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 81
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v5           #responseCode:I
    .end local v6           #u:Ljava/net/URL;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :cond_0
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Reference,Ljava/io/DataOutputStream;);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 65
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :cond_1
    :try_start_3
    #v0=(Reference,Ljava/net/HttpURLConnection;);v2=(Uninit);v3=(Null);v4=(Reference,Ljava/io/DataOutputStream;);v5=(Integer);v6=(Reference,Ljava/net/URL;);v7=(PosShort);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->onFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 69
    .end local v5           #responseCode:I
    :catch_0
    #v5=(Conflicted);v7=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    move-object v3, v4

    .line 70
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v6           #u:Ljava/net/URL;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :goto_2
    :try_start_4
    #v0=(Conflicted);v3=(Reference,Ljava/io/DataOutputStream;);v4=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;->onFailure()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    if-eqz v3, :cond_0

    .line 74
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v2

    goto :goto_1

    .line 71
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    #v2=(Conflicted);
    move-exception v7

    .line 72
    :goto_3
    #v7=(Reference,Ljava/lang/Throwable;);
    if-eqz v3, :cond_2

    .line 74
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 78
    :cond_2
    throw v7

    .line 76
    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :catch_3
    #v0=(Reference,Ljava/net/HttpURLConnection;);v2=(Uninit);v3=(Null);v4=(Reference,Ljava/io/DataOutputStream;);v5=(Integer);v6=(Reference,Ljava/net/URL;);v7=(PosShort);
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    #v3=(Reference,Ljava/io/DataOutputStream;);
    goto :goto_1

    .line 71
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .end local v5           #responseCode:I
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    :catchall_1
    #v2=(Uninit);v3=(Null);v5=(Conflicted);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Throwable;);
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    #v3=(Reference,Ljava/io/DataOutputStream;);
    goto :goto_3

    .line 69
    .end local v6           #u:Ljava/net/URL;
    :catch_4
    #v0=(Conflicted);v3=(Null);v4=(Conflicted);v5=(Uninit);v6=(Conflicted);v7=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :cond_3
    #v0=(Reference,Ljava/net/HttpURLConnection;);v2=(Uninit);v4=(Reference,Ljava/io/DataOutputStream;);v5=(Integer);v6=(Reference,Ljava/net/URL;);v7=(PosShort);
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    #v3=(Reference,Ljava/io/DataOutputStream;);
    goto :goto_1
.end method
