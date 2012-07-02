.class Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.super Landroid/os/Handler;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapHandler"
.end annotation


# instance fields
.field protected bmImg:Landroid/graphics/Bitmap;

.field protected state:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1038
    #v0=(Null);
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1039
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->bmImg:Landroid/graphics/Bitmap;

    .line 1040
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->state:Ljava/lang/Object;

    .line 1038
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->bmImg:Landroid/graphics/Bitmap;

    .line 1043
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->state:Ljava/lang/Object;

    .line 1047
    return-void
.end method
