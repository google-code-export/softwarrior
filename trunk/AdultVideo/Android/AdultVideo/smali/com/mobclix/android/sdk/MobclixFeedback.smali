.class public Lcom/mobclix/android/sdk/MobclixFeedback;
.super Ljava/lang/Object;
.source "MobclixFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixFeedback$Listener;,
        Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static controller:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "mobclixFeedback"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixFeedback;->TAG:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFeedback;);
    return-void
.end method

.method public static sendComment(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "comment"

    .prologue
    .line 15
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixFeedback;->sendComment(Landroid/app/Activity;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    return-void
.end method

.method public static sendComment(Landroid/app/Activity;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 7
    .parameter "a"
    .parameter "comment"
    .parameter "l"

    .prologue
    .line 17
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 18
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_0

    .line 21
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 22
    sget-object v4, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, url:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v2, Ljava/lang/StringBuffer;

    #v2=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v2, params:Ljava/lang/StringBuffer;
    :try_start_0
    #v2=(Reference,Ljava/lang/StringBuffer;);
    const-string v4, "p=android&t=com"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v4, "&a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string v4, "&v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v4, "&m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v4, "&d="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const-string v4, "&dt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v4, "&os="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v4, "&c="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v4, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, p0, p2}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .local v0, commentThread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 33
    .end local v0           #commentThread:Ljava/lang/Thread;
    :catch_0
    #v0=(Uninit);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference,Ljava/io/UnsupportedEncodingException;);
    goto/16 :goto_0
.end method

.method public static sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;)V
    .locals 1
    .parameter "a"
    .parameter "ratings"

    .prologue
    .line 38
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixFeedback;->sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    return-void
.end method

.method public static sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 7
    .parameter "a"
    .parameter "ratings"
    .parameter "l"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 64
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 43
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 45
    sget-object v4, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, url:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v2, Ljava/lang/StringBuffer;

    #v2=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v2, params:Ljava/lang/StringBuffer;
    :try_start_0
    #v2=(Reference,Ljava/lang/StringBuffer;);
    const-string v4, "p=android&t=rat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v4, "&a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v4, "&v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v4, "&m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v4, "&d="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v4, "&dt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v4, "&os="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v4, "&1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->a:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    const-string v4, "&2="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    const-string v4, "&3="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    const-string v4, "&4="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 59
    const-string v4, "&5="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v4, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v3, v5, p0, p2}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    .local v0, commentThread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 60
    .end local v0           #commentThread:Ljava/lang/Thread;
    :catch_0
    #v0=(Uninit);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference,Ljava/io/UnsupportedEncodingException;);
    goto/16 :goto_0
.end method
