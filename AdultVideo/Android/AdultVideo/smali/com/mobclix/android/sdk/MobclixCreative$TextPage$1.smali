.class Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadIcons()V
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    .line 704
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;->bmImg:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;->bmImg:Landroid/graphics/Bitmap;

    #v1=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 708
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 709
    return-void
.end method
