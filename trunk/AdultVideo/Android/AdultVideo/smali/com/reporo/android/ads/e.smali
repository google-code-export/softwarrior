.class final Lcom/reporo/android/ads/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/AdView;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Landroid/widget/TextView;

.field private final synthetic d:Landroid/widget/TextView;

.field private final synthetic e:Landroid/graphics/drawable/PaintDrawable;

.field private final synthetic f:Lcom/reporo/android/ads/j;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/AdView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/PaintDrawable;Lcom/reporo/android/ads/j;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    iput-object p2, p0, Lcom/reporo/android/ads/e;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/reporo/android/ads/e;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/reporo/android/ads/e;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/reporo/android/ads/e;->e:Landroid/graphics/drawable/PaintDrawable;

    iput-object p6, p0, Lcom/reporo/android/ads/e;->f:Lcom/reporo/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/e;);
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    #v0=(Reference,Lcom/reporo/android/ads/AdView;);
    invoke-virtual {v0}, Lcom/reporo/android/ads/AdView;->removeAllViews()V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    iget-object v1, p0, Lcom/reporo/android/ads/e;->b:Landroid/widget/ImageView;

    #v1=(Reference,Landroid/widget/ImageView;);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    iget-object v1, p0, Lcom/reporo/android/ads/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    iget-object v1, p0, Lcom/reporo/android/ads/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    iget-object v1, p0, Lcom/reporo/android/ads/e;->e:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    const/16 v1, 0x32

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/reporo/android/ads/e;->a:Lcom/reporo/android/ads/AdView;

    new-instance v1, Lcom/reporo/android/ads/f;

    #v1=(UninitRef,Lcom/reporo/android/ads/f;);
    iget-object v2, p0, Lcom/reporo/android/ads/e;->f:Lcom/reporo/android/ads/j;

    #v2=(Reference,Lcom/reporo/android/ads/j;);
    invoke-direct {v1, p0, v2}, Lcom/reporo/android/ads/f;-><init>(Lcom/reporo/android/ads/e;Lcom/reporo/android/ads/j;)V

    #v1=(Reference,Lcom/reporo/android/ads/f;);
    invoke-virtual {v0, v1}, Lcom/reporo/android/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
