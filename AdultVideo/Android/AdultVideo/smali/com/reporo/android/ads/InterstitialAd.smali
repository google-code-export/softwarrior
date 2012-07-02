.class public Lcom/reporo/android/ads/InterstitialAd;
.super Ljava/lang/Object;


# static fields
.field public static final IS_REPORO_INTENT:Ljava/lang/String; = "com.reporo.android.ads.intent.is"

.field private static final a:Ljava/lang/Object;

.field private static b:Z


# instance fields
.field private c:Lcom/reporo/android/ads/ReporoAdListener;

.field private d:Lcom/reporo/android/ads/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef,Ljava/lang/Object;);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference,Ljava/lang/Object;);
    sput-object v0, Lcom/reporo/android/ads/InterstitialAd;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/reporo/android/ads/InterstitialAd;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/InterstitialAd;);
    invoke-static {p1}, Lcom/reporo/android/ads/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/reporo/android/ads/InterstitialAd;->d:Lcom/reporo/android/ads/j;

    #v0=(Reference,Lcom/reporo/android/ads/j;);
    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/reporo/android/ads/InterstitialAd;->a:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    return-object v0
.end method

.method static synthetic a(Lcom/reporo/android/ads/InterstitialAd;Lcom/reporo/android/ads/j;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/InterstitialAd;->d:Lcom/reporo/android/ads/j;

    return-void
.end method

.method static synthetic b(Lcom/reporo/android/ads/InterstitialAd;)Lcom/reporo/android/ads/ReporoAdListener;
    .locals 1

    iget-object v0, p0, Lcom/reporo/android/ads/InterstitialAd;->c:Lcom/reporo/android/ads/ReporoAdListener;

    #v0=(Reference,Lcom/reporo/android/ads/ReporoAdListener;);
    return-object v0
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/reporo/android/ads/InterstitialAd;->b:Z

    return-void
.end method


# virtual methods
.method public fetchNewAd()V
    .locals 2

    sget-boolean v0, Lcom/reporo/android/ads/InterstitialAd;->b:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    sget-object v1, Lcom/reporo/android/ads/InterstitialAd;->a:Ljava/lang/Object;

    #v1=(Reference,Ljava/lang/Object;);
    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    sput-boolean v0, Lcom/reporo/android/ads/InterstitialAd;->b:Z

    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/reporo/android/ads/InterstitialAd;->d:Lcom/reporo/android/ads/j;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/reporo/android/ads/g;

    #v1=(UninitRef,Lcom/reporo/android/ads/g;);
    invoke-direct {v1, p0, p0}, Lcom/reporo/android/ads/g;-><init>(Lcom/reporo/android/ads/InterstitialAd;Lcom/reporo/android/ads/InterstitialAd;)V

    #v1=(Reference,Lcom/reporo/android/ads/g;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :catchall_0
    #v0=(Boolean);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1

    throw v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "Busy, call dropped"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    sget-boolean v0, Lcom/reporo/android/ads/InterstitialAd;->b:Z

    #v0=(Boolean);
    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/reporo/android/ads/InterstitialAd;->d:Lcom/reporo/android/ads/j;

    #v0=(Reference,Lcom/reporo/android/ads/j;);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Lcom/reporo/android/ads/j;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setListener(Lcom/reporo/android/ads/ReporoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/InterstitialAd;->c:Lcom/reporo/android/ads/ReporoAdListener;

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference,Landroid/content/Context;);
    const-class v2, Lcom/reporo/android/ads/InterstitialAdActivity;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "rAd"

    iget-object v2, p0, Lcom/reporo/android/ads/InterstitialAd;->d:Lcom/reporo/android/ads/j;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
