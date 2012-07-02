.class Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAdPage"
.end annotation


# instance fields
.field private imgView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1238
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 1240
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->createLayout()V

    .line 1241
    return-void
.end method


# virtual methods
.method public createLayout()V
    .locals 5

    .prologue
    .line 1246
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, "_mc_cached_custom_ad.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1245
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1248
    .local v1, myBitmap:Landroid/graphics/Bitmap;
    #v1=(Reference,Landroid/graphics/Bitmap;);
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v2, -0x1

    #v2=(Byte);
    const/4 v3, -0x1

    #v3=(Byte);
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1249
    .local v0, imgLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v2, 0xf

    #v2=(PosByte);
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1251
    new-instance v2, Landroid/widget/ImageView;

    #v2=(UninitRef,Landroid/widget/ImageView;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Landroid/widget/ImageView;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->imgView:Landroid/widget/ImageView;

    .line 1252
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1254
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->addView(Landroid/view/View;)V

    .line 1256
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #v2=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v3, -0x1

    #v3=(Byte);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v2=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    .end local v0           #imgLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #myBitmap:Landroid/graphics/Bitmap;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 1259
    return-void

    .line 1257
    :catch_0
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
