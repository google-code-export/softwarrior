.class final Lcom/reporo/android/ads/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/AdView;

.field private final synthetic b:Lcom/reporo/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/AdView;Lcom/reporo/android/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    iput-object p2, p0, Lcom/reporo/android/ads/a;->b:Lcom/reporo/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/a;);
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "Fetching ad"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/reporo/android/ads/l;->a:Lcom/reporo/android/ads/l;

    invoke-static {v0}, Lcom/reporo/android/ads/k;->a(Lcom/reporo/android/ads/l;)Lcom/reporo/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    invoke-static {v1}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/AdView;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    invoke-static {v1}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/AdView;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/reporo/android/ads/a;->b:Lcom/reporo/android/ads/AdView;

    #v2=(Reference,Lcom/reporo/android/ads/AdView;);
    invoke-interface {v1, v2}, Lcom/reporo/android/ads/ReporoAdListener;->onAdReceived(Lcom/reporo/android/ads/AdView;)V

    :cond_0
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/reporo/android/ads/AdView;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/reporo/android/ads/AdView;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    const-string v1, "Reporo SDK"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Error fetching ad"

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    invoke-static {v0}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/AdView;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reporo/android/ads/a;->a:Lcom/reporo/android/ads/AdView;

    invoke-static {v0}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/AdView;)Lcom/reporo/android/ads/ReporoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/reporo/android/ads/a;->b:Lcom/reporo/android/ads/AdView;

    invoke-interface {v0, v1}, Lcom/reporo/android/ads/ReporoAdListener;->onAdFailed(Lcom/reporo/android/ads/AdView;)V

    goto :goto_0

    :catchall_0
    #v2=(Conflicted);
    move-exception v0

    monitor-exit v1

    throw v0
.end method
