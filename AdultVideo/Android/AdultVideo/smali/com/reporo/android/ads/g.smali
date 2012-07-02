.class final Lcom/reporo/android/ads/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/InterstitialAd;

.field private final synthetic b:Lcom/reporo/android/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/InterstitialAd;Lcom/reporo/android/ads/InterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    iput-object p2, p0, Lcom/reporo/android/ads/g;->b:Lcom/reporo/android/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/g;);
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "Fetching interstitial ad"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    sget-object v1, Lcom/reporo/android/ads/l;->b:Lcom/reporo/android/ads/l;

    invoke-static {v1}, Lcom/reporo/android/ads/k;->a(Lcom/reporo/android/ads/l;)Lcom/reporo/android/ads/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reporo/android/ads/InterstitialAd;->a(Lcom/reporo/android/ads/InterstitialAd;Lcom/reporo/android/ads/j;)V

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    invoke-static {v0}, Lcom/reporo/android/ads/InterstitialAd;->a(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/j;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Lcom/reporo/android/ads/j;->k:Z

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    invoke-static {v0}, Lcom/reporo/android/ads/InterstitialAd;->b(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    invoke-static {v0}, Lcom/reporo/android/ads/InterstitialAd;->b(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/reporo/android/ads/g;->b:Lcom/reporo/android/ads/InterstitialAd;

    #v1=(Reference,Lcom/reporo/android/ads/InterstitialAd;);
    invoke-interface {v0, v1}, Lcom/reporo/android/ads/ReporoAdListener;->onInterstitialRecieved(Lcom/reporo/android/ads/InterstitialAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-static {}, Lcom/reporo/android/ads/InterstitialAd;->a()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/reporo/android/ads/InterstitialAd;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, "Reporo SDK"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Error fetching interstitial ad"

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/reporo/android/ads/InterstitialAd;->a(Lcom/reporo/android/ads/InterstitialAd;Lcom/reporo/android/ads/j;)V

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    invoke-static {v0}, Lcom/reporo/android/ads/InterstitialAd;->b(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reporo/android/ads/g;->a:Lcom/reporo/android/ads/InterstitialAd;

    invoke-static {v0}, Lcom/reporo/android/ads/InterstitialAd;->b(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/reporo/android/ads/g;->b:Lcom/reporo/android/ads/InterstitialAd;

    #v1=(Reference,Lcom/reporo/android/ads/InterstitialAd;);
    invoke-interface {v0, v1}, Lcom/reporo/android/ads/ReporoAdListener;->onInterstitialFailed(Lcom/reporo/android/ads/InterstitialAd;)V

    goto :goto_0

    :catchall_0
    #v2=(Conflicted);
    move-exception v0

    monitor-exit v1

    throw v0
.end method
