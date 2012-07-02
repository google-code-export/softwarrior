.class Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fetchUrl"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, con:Ljava/net/HttpURLConnection;
    :try_start_0
    #v1=(Null);
    new-instance v2, Ljava/net/URL;

    #v2=(UninitRef,Ljava/net/URL;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->url:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/net/URL;);
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    #v0=(Reference,Ljava/net/URLConnection;);
    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 537
    #v1=(Reference,Ljava/net/HttpURLConnection;);
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 538
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 544
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 540
    :catch_0
    #v2=(Conflicted);
    move-exception v2

    .line 542
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 541
    :catchall_0
    #v2=(Conflicted);
    move-exception v2

    .line 542
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 543
    throw v2
.end method
