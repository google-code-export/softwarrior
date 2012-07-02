.class final Lcom/reporo/android/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/b;

.field private final synthetic b:Lcom/reporo/android/ads/j;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/b;Lcom/reporo/android/ads/j;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/c;->a:Lcom/reporo/android/ads/b;

    iput-object p2, p0, Lcom/reporo/android/ads/c;->b:Lcom/reporo/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/c;);
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Click:"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Lcom/reporo/android/ads/c;->b:Lcom/reporo/android/ads/j;

    iget v2, v2, Lcom/reporo/android/ads/j;->a:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/reporo/android/ads/c;->b:Lcom/reporo/android/ads/j;

    #v2=(Reference,Lcom/reporo/android/ads/j;);
    iget-object v2, v2, Lcom/reporo/android/ads/j;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v0=(Reference,Landroid/content/Intent;);
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
