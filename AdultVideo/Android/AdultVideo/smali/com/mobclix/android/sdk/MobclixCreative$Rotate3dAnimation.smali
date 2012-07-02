.class Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V
    .locals 0
    .parameter
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1686
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1688
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mFromDegrees:F

    .line 1689
    iput p3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mToDegrees:F

    .line 1690
    iput p4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterX:F

    .line 1691
    iput p5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterY:F

    .line 1692
    iput p6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    .line 1693
    iput-boolean p7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mReverse:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 1704
    #v8=(Null);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mFromDegrees:F

    .line 1705
    .local v4, fromDegrees:F
    #v4=(Integer);
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mToDegrees:F

    #v6=(Integer);
    sub-float/2addr v6, v4

    #v6=(Float);
    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 1707
    .local v3, degrees:F
    #v3=(Float);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterX:F

    .line 1708
    .local v1, centerX:F
    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterY:F

    .line 1709
    .local v2, centerY:F
    #v2=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 1711
    .local v0, camera:Landroid/graphics/Camera;
    #v0=(Reference,Landroid/graphics/Camera;);
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 1713
    .local v5, matrix:Landroid/graphics/Matrix;
    #v5=(Reference,Landroid/graphics/Matrix;);
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1714
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mReverse:Z

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 1715
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    #v6=(Integer);
    mul-float/2addr v6, p1

    #v6=(Float);
    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1719
    :goto_0
    #v7=(Conflicted);
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1720
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1721
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1723
    neg-float v6, v1

    neg-float v7, v2

    #v7=(Float);
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1724
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1725
    return-void

    .line 1717
    :cond_0
    #v6=(Boolean);v7=(Uninit);
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    #v6=(Integer);
    const/high16 v7, 0x3f80

    #v7=(Integer);
    sub-float/2addr v7, p1

    #v7=(Float);
    mul-float/2addr v6, v7

    #v6=(Float);
    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 1698
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1699
    new-instance v0, Landroid/graphics/Camera;

    #v0=(UninitRef,Landroid/graphics/Camera;);
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    #v0=(Reference,Landroid/graphics/Camera;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 1700
    return-void
.end method
