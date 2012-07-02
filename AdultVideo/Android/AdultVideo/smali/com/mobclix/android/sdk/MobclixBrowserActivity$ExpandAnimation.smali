.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimation"
.end annotation


# instance fields
.field dHeight:F

.field dWidth:F

.field height:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field view:Landroid/view/View;

.field width:F


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "startWidth"
    .parameter "finalWidth"
    .parameter "startHeight"
    .parameter "finalHeight"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 1381
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1382
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->view:Landroid/view/View;

    .line 1383
    iput p5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->height:F

    .line 1384
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->height:F

    #v0=(Integer);
    sub-float v0, p6, v0

    #v0=(Float);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->dHeight:F

    .line 1385
    iput p3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->width:F

    .line 1386
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->width:F

    #v0=(Integer);
    sub-float v0, p4, v0

    #v0=(Float);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->dWidth:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 1392
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1393
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->view:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1394
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    #v0=(Reference,Landroid/view/ViewGroup$LayoutParams;);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->height:F

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->dHeight:F

    #v2=(Integer);
    mul-float/2addr v2, p1

    #v2=(Float);
    add-float/2addr v1, v2

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1395
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->width:F

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->dWidth:F

    #v2=(Integer);
    mul-float/2addr v2, p1

    #v2=(Float);
    add-float/2addr v1, v2

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1397
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;->view:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    return-void
.end method
