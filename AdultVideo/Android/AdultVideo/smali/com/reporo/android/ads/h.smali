.class final Lcom/reporo/android/ads/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/InterstitialAdActivity;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/InterstitialAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/h;->a:Lcom/reporo/android/ads/InterstitialAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/h;);
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/reporo/android/ads/h;->a:Lcom/reporo/android/ads/InterstitialAdActivity;

    #v0=(Reference,Lcom/reporo/android/ads/InterstitialAdActivity;);
    const/4 v1, -0x1

    #v1=(Byte);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #v2=(Reference,Landroid/content/Intent;);
    const-string v3, "com.reporo.android.ads.intent.is"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/reporo/android/ads/InterstitialAdActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/reporo/android/ads/h;->a:Lcom/reporo/android/ads/InterstitialAdActivity;

    invoke-virtual {v0}, Lcom/reporo/android/ads/InterstitialAdActivity;->finish()V

    return-void
.end method
