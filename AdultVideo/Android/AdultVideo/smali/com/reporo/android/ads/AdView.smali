.class public Lcom/reporo/android/ads/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Z


# instance fields
.field private a:I

.field private b:Lcom/reporo/android/ads/ReporoAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef,Ljava/lang/Object;);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference,Ljava/lang/Object;);
    sput-object v0, Lcom/reporo/android/ads/AdView;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/reporo/android/ads/AdView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #p0=(Reference,Lcom/reporo/android/ads/AdView;);
    const/high16 v0, -0x100

    #v0=(Integer);
    iput v0, p0, Lcom/reporo/android/ads/AdView;->a:I

    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/reporo/android/ads/AdView;->b:Lcom/reporo/android/ads/ReporoAdListener;

    invoke-static {p1}, Lcom/reporo/android/ads/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #p0=(Reference,Lcom/reporo/android/ads/AdView;);
    const/high16 v0, -0x100

    #v0=(Integer);
    iput v0, p0, Lcom/reporo/android/ads/AdView;->a:I

    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/reporo/android/ads/AdView;->b:Lcom/reporo/android/ads/ReporoAdListener;

    invoke-static {p1}, Lcom/reporo/android/ads/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #p0=(Reference,Lcom/reporo/android/ads/AdView;);
    const/high16 v0, -0x100

    #v0=(Integer);
    iput v0, p0, Lcom/reporo/android/ads/AdView;->a:I

    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/reporo/android/ads/AdView;->b:Lcom/reporo/android/ads/ReporoAdListener;

    invoke-static {p1}, Lcom/reporo/android/ads/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/reporo/android/ads/AdView;)Lcom/reporo/android/ads/ReporoAdListener;
    .locals 1

    iget-object v0, p0, Lcom/reporo/android/ads/AdView;->b:Lcom/reporo/android/ads/ReporoAdListener;

    #v0=(Reference,Lcom/reporo/android/ads/ReporoAdListener;);
    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/reporo/android/ads/AdView;->c:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    return-object v0
.end method

.method static synthetic b(Lcom/reporo/android/ads/AdView;)I
    .locals 1

    iget v0, p0, Lcom/reporo/android/ads/AdView;->a:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/reporo/android/ads/AdView;->d:Z

    return-void
.end method

.method private b(Lcom/reporo/android/ads/j;)V
    .locals 8

    const v7, 0x1301a1

    #v7=(Integer);
    const/16 v6, 0xa

    #v6=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, -0x2

    #v4=(Byte);
    new-instance v0, Landroid/widget/ImageView;

    #v0=(UninitRef,Landroid/widget/ImageView;);
    invoke-virtual {p0}, Lcom/reporo/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference,Landroid/content/Context;);
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v0=(Reference,Landroid/widget/ImageView;);
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p1, Lcom/reporo/android/ads/j;->j:[B

    iget-object v2, p1, Lcom/reporo/android/ads/j;->j:[B

    #v2=(Reference,[B);
    array-length v2, v2

    #v2=(Integer);
    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    const/16 v3, 0xa0

    #v3=(PosShort);
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v3, 0xe

    #v3=(PosByte);
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p1, Lcom/reporo/android/ads/j;->k:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    mul-int/lit16 v1, v2, 0x140

    #v1=(Integer);
    div-int/lit16 v1, v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    mul-int/lit8 v1, v2, 0x32

    div-int/lit16 v1, v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    #v1=(UninitRef,Landroid/widget/TextView;);
    invoke-virtual {p0}, Lcom/reporo/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference,Landroid/content/Context;);
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v1=(Reference,Landroid/widget/TextView;);
    iget-boolean v2, p1, Lcom/reporo/android/ads/j;->k:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p1, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #v2=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v2=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v6, v6, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x1e656

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x10

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #v2=(Reference,Landroid/graphics/Typeface;);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    new-instance v2, Lcom/reporo/android/ads/b;

    #v2=(UninitRef,Lcom/reporo/android/ads/b;);
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/reporo/android/ads/b;-><init>(Lcom/reporo/android/ads/AdView;Landroid/widget/ImageView;Lcom/reporo/android/ads/j;Landroid/widget/TextView;)V

    #v2=(Reference,Lcom/reporo/android/ads/b;);
    invoke-virtual {p0, v2}, Lcom/reporo/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a(Lcom/reporo/android/ads/j;)V
    .locals 9

    const/4 v8, -0x1

    #v8=(Byte);
    const v7, 0x1e655

    #v7=(Integer);
    const/4 v3, 0x5

    #v3=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, -0x2

    #v5=(Byte);
    const-string v0, "txt"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p1, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    #v2=(UninitRef,Landroid/widget/ImageView;);
    invoke-virtual {p0}, Lcom/reporo/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference,Landroid/content/Context;);
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Landroid/widget/ImageView;);
    iget-object v0, p1, Lcom/reporo/android/ads/j;->j:[B

    iget-object v1, p1, Lcom/reporo/android/ads/j;->j:[B

    array-length v1, v1

    #v1=(Integer);
    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xa0

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    #v3=(UninitRef,Landroid/widget/TextView;);
    invoke-virtual {p0}, Lcom/reporo/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Landroid/widget/TextView;);
    iget-object v0, p1, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    #v1=(PosByte);
    const/16 v4, 0xa

    #v4=(PosByte);
    invoke-virtual {v3, v1, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x1e656

    #v0=(Integer);
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setId(I)V

    const/high16 v0, 0x4170

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x10

    #v0=(PosByte);
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #v0=(Reference,Landroid/graphics/Typeface;);
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/TextView;

    #v4=(UninitRef,Landroid/widget/TextView;);
    invoke-virtual {p0}, Lcom/reporo/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/TextView;);
    const-string v0, "Ads by Reporo"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-virtual {v4, v6, v6, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x4120

    #v1=(Integer);
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x1e657

    #v0=(Integer);
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Lcom/reporo/android/ads/d;

    #v0=(UninitRef,Lcom/reporo/android/ads/d;);
    invoke-direct {v0, p0}, Lcom/reporo/android/ads/d;-><init>(Lcom/reporo/android/ads/AdView;)V

    #v0=(Reference,Lcom/reporo/android/ads/d;);
    new-instance v5, Landroid/graphics/drawable/PaintDrawable;

    #v5=(UninitRef,Landroid/graphics/drawable/PaintDrawable;);
    invoke-direct {v5}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    #v5=(Reference,Landroid/graphics/drawable/PaintDrawable;);
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    #v1=(UninitRef,Landroid/graphics/drawable/shapes/RectShape;);
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    #v1=(Reference,Landroid/graphics/drawable/shapes/RectShape;);
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    new-instance v0, Lcom/reporo/android/ads/e;

    #v0=(UninitRef,Lcom/reporo/android/ads/e;);
    move-object v1, p0

    move-object v6, p1

    #v6=(Reference,Lcom/reporo/android/ads/j;);
    invoke-direct/range {v0 .. v6}, Lcom/reporo/android/ads/e;-><init>(Lcom/reporo/android/ads/AdView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/PaintDrawable;Lcom/reporo/android/ads/j;)V

    #v0=(Reference,Lcom/reporo/android/ads/e;);
    invoke-virtual {p0, v0}, Lcom/reporo/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    :cond_1
    #v0=(Boolean);v2=(Uninit);v3=(PosByte);v4=(Uninit);v5=(Byte);v6=(Null);
    const-string v0, "jpeg"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p1, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/reporo/android/ads/AdView;->b(Lcom/reporo/android/ads/j;)V

    goto :goto_0

    :cond_2
    const-string v0, "png"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p1, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/reporo/android/ads/AdView;->b(Lcom/reporo/android/ads/j;)V

    goto :goto_0

    :cond_3
    const-string v0, "gif"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p1, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/reporo/android/ads/AdView;->b(Lcom/reporo/android/ads/j;)V

    goto :goto_0
.end method

.method public fetchNewAd()V
    .locals 2

    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "SDK Request for ad"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/reporo/android/ads/AdView;->d:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    sget-object v1, Lcom/reporo/android/ads/AdView;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    sput-boolean v0, Lcom/reporo/android/ads/AdView;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/reporo/android/ads/a;

    #v1=(UninitRef,Lcom/reporo/android/ads/a;);
    invoke-direct {v1, p0, p0}, Lcom/reporo/android/ads/a;-><init>(Lcom/reporo/android/ads/AdView;Lcom/reporo/android/ads/AdView;)V

    #v1=(Reference,Lcom/reporo/android/ads/a;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :catchall_0
    #v0=(One);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1

    throw v0

    :cond_0
    #v0=(Boolean);
    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "Busy, call dropped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    sget-boolean v0, Lcom/reporo/android/ads/AdView;->d:Z

    #v0=(Boolean);
    return v0
.end method

.method public setAdBackColour(I)V
    .locals 0

    iput p1, p0, Lcom/reporo/android/ads/AdView;->a:I

    return-void
.end method

.method public setListener(Lcom/reporo/android/ads/ReporoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/AdView;->b:Lcom/reporo/android/ads/ReporoAdListener;

    return-void
.end method
