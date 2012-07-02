.class final Lcom/reporo/android/ads/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/AdView;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Lcom/reporo/android/ads/j;

.field private final synthetic d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/AdView;Landroid/widget/ImageView;Lcom/reporo/android/ads/j;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    iput-object p2, p0, Lcom/reporo/android/ads/b;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/reporo/android/ads/b;->c:Lcom/reporo/android/ads/j;

    iput-object p4, p0, Lcom/reporo/android/ads/b;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/b;);
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    #v0=(Reference,Lcom/reporo/android/ads/AdView;);
    invoke-virtual {v0}, Lcom/reporo/android/ads/AdView;->removeAllViews()V

    iget-object v0, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    iget-object v1, p0, Lcom/reporo/android/ads/b;->b:Landroid/widget/ImageView;

    #v1=(Reference,Landroid/widget/ImageView;);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/reporo/android/ads/b;->c:Lcom/reporo/android/ads/j;

    iget-boolean v0, v0, Lcom/reporo/android/ads/j;->k:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reporo/android/ads/b;->c:Lcom/reporo/android/ads/j;

    #v0=(Reference,Lcom/reporo/android/ads/j;);
    iget-object v0, v0, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/reporo/android/ads/b;->c:Lcom/reporo/android/ads/j;

    iget-object v1, v1, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    #v0=(Reference,Lcom/reporo/android/ads/AdView;);
    iget-object v1, p0, Lcom/reporo/android/ads/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->addView(Landroid/view/View;)V

    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    #v0=(Reference,Lcom/reporo/android/ads/AdView;);
    iget-object v1, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    invoke-static {v1}, Lcom/reporo/android/ads/AdView;->b(Lcom/reporo/android/ads/AdView;)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/reporo/android/ads/b;->a:Lcom/reporo/android/ads/AdView;

    new-instance v1, Lcom/reporo/android/ads/c;

    #v1=(UninitRef,Lcom/reporo/android/ads/c;);
    iget-object v2, p0, Lcom/reporo/android/ads/b;->c:Lcom/reporo/android/ads/j;

    #v2=(Reference,Lcom/reporo/android/ads/j;);
    invoke-direct {v1, p0, v2}, Lcom/reporo/android/ads/c;-><init>(Lcom/reporo/android/ads/b;Lcom/reporo/android/ads/j;)V

    #v1=(Reference,Lcom/reporo/android/ads/c;);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
