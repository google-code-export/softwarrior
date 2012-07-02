.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HTMLPage"
.end annotation


# instance fields
.field private fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

.field private html:Ljava/lang/String;

.field private jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

.field private webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter "h"
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 917
    #v2=(Byte);
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 914
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 919
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 920
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->requestDisallowInterceptTouchEvent(Z)V

    .line 923
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->html:Ljava/lang/String;

    .line 925
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 926
    :catch_0
    #v1=(One);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 1
    .parameter "h"
    .parameter "fsAdView"

    .prologue
    .line 931
    invoke-virtual {p2}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference,Landroid/app/Activity;);
    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Landroid/content/Context;)V

    .line 914
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 933
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->html:Ljava/lang/String;

    .line 934
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    .line 935
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->requestDisallowInterceptTouchEvent(Z)V

    .line 937
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 938
    :catch_0
    #v0=(One);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
    .locals 1
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
    .locals 1
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    return-void
.end method


# virtual methods
.method public createLayout()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v5, 0x1

    .line 944
    #v5=(One);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    if-nez v2, :cond_0

    .line 945
    new-instance v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-direct {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 946
    new-instance v2, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v2, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;Z)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 951
    :goto_0
    #v4=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->requestDisallowInterceptTouchEvent(Z)V

    .line 954
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    if-nez v2, :cond_1

    .line 955
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 958
    .local v1, webviewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const/high16 v3, 0x200

    #v3=(Integer);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setScrollBarStyle(I)V

    .line 963
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    const-string v4, "MOBCLIX"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setJavascriptInterface(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)V

    .line 967
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 968
    .local v0, settings:Landroid/webkit/WebSettings;
    #v0=(Reference,Landroid/webkit/WebSettings;);
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 969
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 970
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 973
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1055
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1188
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1222
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->html:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setAdHtml(Ljava/lang/String;)V

    .line 1223
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadAd()V

    .line 1224
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setFocusable(Z)V

    .line 1225
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->addView(Landroid/view/View;)V

    .line 1226
    return-void

    .line 948
    .end local v0           #settings:Landroid/webkit/WebSettings;
    .end local v1           #webviewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-direct {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 949
    new-instance v2, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-direct {v2, v3, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;Z)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    goto :goto_0

    .line 957
    :cond_1
    #v4=(Conflicted);
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget v2, v2, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->screenWidth:I

    #v2=(Integer);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget v3, v3, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->screenHeight:I

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #webviewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->pauseListeners()V

    .line 1230
    return-void
.end method
