.class Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagePage"
.end annotation


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private imgView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter "url"
    .parameter "c"

    .prologue
    .line 742
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 744
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgUrl:Ljava/lang/String;

    .line 745
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->createLayout()V

    .line 746
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->loadImage()V

    .line 747
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 750
    #v3=(Byte);
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 751
    .local v0, imgLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v1, 0xf

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 753
    new-instance v1, Landroid/widget/ImageView;

    #v1=(UninitRef,Landroid/widget/ImageView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v1=(Reference,Landroid/widget/ImageView;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    .line 754
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->addView(Landroid/view/View;)V

    .line 757
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    return-void
.end method

.method public loadImage()V
    .locals 4

    .prologue
    .line 762
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgUrl:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 769
    .local v0, fetchIcon:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    return-void
.end method
