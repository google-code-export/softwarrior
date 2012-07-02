.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTaglineImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    .line 885
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    .line 887
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    #v4=(Reference,Landroid/graphics/Bitmap;);
    if-eqz v4, :cond_0

    .line 888
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 889
    .local v2, rawWidth:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 890
    .local v1, rawHeight:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    .line 891
    .local v3, width:I
    #v3=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    .line 892
    .local v0, height:I
    #v0=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    #v5=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-direct {v5, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #v5=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 894
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 897
    .end local v0           #height:I
    .end local v1           #rawHeight:I
    .end local v2           #rawWidth:I
    .end local v3           #width:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 898
    return-void
.end method
