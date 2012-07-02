.class final Lcom/reporo/android/ads/d;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;


# instance fields
.field final synthetic a:Lcom/reporo/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/reporo/android/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/reporo/android/ads/d;->a:Lcom/reporo/android/ads/AdView;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/d;);
    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 8

    const/4 v2, 0x4

    #v2=(PosByte);
    const/4 v1, 0x0

    #v1=(Null);
    new-instance v0, Landroid/graphics/LinearGradient;

    #v0=(UninitRef,Landroid/graphics/LinearGradient;);
    int-to-float v4, p2

    #v4=(Float);
    new-array v5, v2, [I

    #v5=(Reference,[I);
    fill-array-data v5, :array_0

    new-array v6, v2, [F

    #v6=(Reference,[F);
    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #v7=(Reference,Landroid/graphics/Shader$TileMode;);
    move v2, v1

    #v2=(Null);
    move v3, v1

    #v3=(Null);
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #v0=(Reference,Landroid/graphics/LinearGradient;);
    return-object v0

    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x88t 0x88t 0x88t 0xfft
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
