.class Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
.super Landroid/webkit/WebView;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobclixWebView"
.end annotation


# instance fields
.field displayed:Z

.field failedVideoAttempt:Z

.field fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

.field private html:Ljava/lang/String;

.field jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

.field loaded:Z

.field mCustomViewCallback:Ljava/lang/Object;

.field parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field touched:Z

.field video:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter "creative"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 789
    #v1=(Null);
    iget-object v0, p1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 774
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 775
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 776
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loaded:Z

    .line 777
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    .line 778
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->touched:Z

    .line 780
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 782
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->html:Ljava/lang/String;

    .line 784
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    .line 785
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    .line 786
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->failedVideoAttempt:Z

    .line 790
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 791
    invoke-virtual {p0, p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 792
    return-void
.end method

.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 3
    .parameter "adview"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 795
    #v1=(Null);
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference,Landroid/app/Activity;);
    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 774
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 775
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 776
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loaded:Z

    .line 777
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    .line 778
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->touched:Z

    .line 780
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 782
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->html:Ljava/lang/String;

    .line 784
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    .line 785
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    .line 786
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->failedVideoAttempt:Z

    .line 796
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 797
    return-void
.end method


# virtual methods
.method public getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    return-object v0
.end method

.method public getTopContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 801
    .local v0, currentActivity:Landroid/content/Context;
    #v0=(Reference,Landroid/content/Context;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 803
    :cond_0
    return-object v0
.end method

.method killCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 7
    .parameter "view"
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 865
    #v4=(Null);
    move-object v2, p1

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    .line 867
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 868
    .local v1, sdkVersion:I
    #v1=(Integer);
    const/16 v2, 0x9

    #v2=(PosByte);
    if-ge v1, v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    #v2=(Reference,Landroid/widget/VideoView;);
    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 871
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onCustomViewHidden"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    #v4=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 872
    .local v0, m:Ljava/lang/reflect/Method;
    #v0=(Reference,Ljava/lang/reflect/Method;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v0           #m:Ljava/lang/reflect/Method;
    .end local p1
    :goto_0
    #v0=(Conflicted);v2=(Reference,Ljava/lang/Object;);v3=(Conflicted);
    return-void

    .line 878
    .restart local p1
    :cond_0
    #v0=(Uninit);v2=(PosByte);v3=(Uninit);v4=(Null);
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    #v2=(Reference,Landroid/widget/VideoView;);
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 880
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;);
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 897
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    const-string v3, "http://a.mobclix.com/fail"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 898
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #v3=(UninitRef,Landroid/view/ViewGroup$LayoutParams;);
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #v3=(Reference,Landroid/view/ViewGroup$LayoutParams;);
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    #v4=(UninitRef,Landroid/view/WindowManager$LayoutParams;);
    invoke-direct {v4, v5, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    #v4=(Reference,Landroid/view/WindowManager$LayoutParams;);
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    invoke-virtual {v2, v6}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 902
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 903
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 904
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->failedVideoAttempt:Z

    goto :goto_0

    .line 874
    .restart local p1
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);
    move-exception v2

    goto :goto_0
.end method

.method public loadAd()V
    .locals 6

    .prologue
    .line 821
    const/4 v1, 0x0

    :try_start_0
    #v1=(Null);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->html:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "text/html"

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "utf-8"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 825
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 836
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 837
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 838
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->fireOnShowTrackingPixels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidDisplay()V

    .line 845
    :cond_0
    #v0=(Conflicted);
    return-void

    .line 841
    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 849
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->touched:Z

    .line 850
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public setAdHtml(Ljava/lang/String;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 815
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->html:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setJavascriptInterface(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)V
    .locals 0
    .parameter "jsInt"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 808
    return-void
.end method

.method showCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 854
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object p0, v2, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 855
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    iput-object p1, v2, Lcom/mobclix/android/sdk/Mobclix;->secondaryView:Landroid/view/View;

    .line 856
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 857
    .local v0, mIntent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, packageName:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-class v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html5Video"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 861
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    .line 862
    return-void
.end method

.method public triggerOnTouchUrls()V
    .locals 1

    .prologue
    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    #v0=(Reference,Landroid/view/ViewParent;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
