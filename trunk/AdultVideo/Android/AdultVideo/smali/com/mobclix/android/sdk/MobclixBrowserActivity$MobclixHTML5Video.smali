.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;
.super Landroid/widget/RelativeLayout;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixHTML5Video"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mMediaController:Landroid/widget/MediaController;

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private video:Landroid/widget/VideoView;

.field private webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V
    .locals 6
    .parameter
    .parameter "a"

    .prologue
    const/4 v3, 0x0

    .line 997
    #v3=(Null);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 952
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 944
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->progressBar:Landroid/widget/ProgressBar;

    .line 946
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 947
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mFrame:Landroid/widget/FrameLayout;

    .line 948
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    .line 949
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mMediaController:Landroid/widget/MediaController;

    .line 954
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->activity:Landroid/app/Activity;

    .line 956
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    #v3=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v4, -0x1

    #v4=(Byte);
    const/4 v5, -0x1

    #v5=(Byte);
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v3=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    const/high16 v3, -0x100

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->setBackgroundColor(I)V

    .line 959
    new-instance v3, Landroid/widget/ProgressBar;

    #v3=(UninitRef,Landroid/widget/ProgressBar;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->activity:Landroid/app/Activity;

    #v4=(Reference,Landroid/app/Activity;);
    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Landroid/widget/ProgressBar;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->progressBar:Landroid/widget/ProgressBar;

    .line 961
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 962
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    iput-object v4, v3, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 963
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->secondaryView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mFrame:Landroid/widget/FrameLayout;

    .line 964
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mobclix/android/sdk/Mobclix;->secondaryView:Landroid/view/View;

    .line 966
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mFrame:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    .line 967
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 969
    :cond_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    .line 970
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 971
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 972
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 973
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    #v4=(Reference,Landroid/widget/VideoView;);
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 975
    new-instance v3, Landroid/widget/MediaController;

    #v3=(UninitRef,Landroid/widget/MediaController;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Landroid/widget/MediaController;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mMediaController:Landroid/widget/MediaController;

    .line 976
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mMediaController:Landroid/widget/MediaController;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {v3, v4}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 977
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 979
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #v2=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v3, -0x1

    #v3=(Byte);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 980
    .local v2, videoLayout:Landroid/widget/RelativeLayout$LayoutParams;
    #v2=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v3, 0xe

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 981
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 982
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    #v3=(Reference,Landroid/widget/VideoView;);
    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v3, -0x2

    #v3=(Byte);
    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 984
    .local v0, centerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v3, 0xe

    #v3=(PosByte);
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 985
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 986
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->progressBar:Landroid/widget/ProgressBar;

    #v3=(Reference,Landroid/widget/ProgressBar;);
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    iput-object v4, v3, Lcom/mobclix/android/sdk/Mobclix;->secondaryView:Landroid/view/View;

    .line 990
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->addView(Landroid/view/View;)V

    .line 991
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->addView(Landroid/view/View;)V

    .line 992
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 993
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v0           #centerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #videoLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 994
    :catch_0
    #v1=(Uninit);
    move-exception v1

    .line 995
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    #v0=(Reference,Landroid/widget/VideoView;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;Landroid/widget/VideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->video:Landroid/widget/VideoView;

    return-void
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
    .locals 1
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->activity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1012
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->activity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1006
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->progressBar:Landroid/widget/ProgressBar;

    #v0=(Reference,Landroid/widget/ProgressBar;);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1001
    return-void
.end method
