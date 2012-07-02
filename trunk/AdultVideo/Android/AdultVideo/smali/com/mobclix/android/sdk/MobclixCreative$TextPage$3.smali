.class Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadBackgroundImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    .line 726
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;->bmImg:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #v1=(UninitRef,Landroid/graphics/drawable/BitmapDrawable;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;->bmImg:Landroid/graphics/Bitmap;

    #v2=(Reference,Landroid/graphics/Bitmap;);
    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #v1=(Reference,Landroid/graphics/drawable/BitmapDrawable;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 731
    return-void
.end method
