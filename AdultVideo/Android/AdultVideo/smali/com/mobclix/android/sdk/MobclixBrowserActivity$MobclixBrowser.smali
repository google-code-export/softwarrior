.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;
.super Landroid/widget/RelativeLayout;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixBrowser"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private browserType:Ljava/lang/String;

.field private cachedHTML:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 1024
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1018
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;);
    const-string v0, ""

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    .line 1019
    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;

    .line 1025
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    .line 1028
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    #v10=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v10, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1029
    .local v10, responseObject:Lorg/json/JSONObject;
    :try_start_1
    #v10=(Reference,Lorg/json/JSONObject;);
    const-string v0, "url"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1030
    :goto_0
    :try_start_2
    #v9=(Conflicted);
    const-string v0, "cachedHTML"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1031
    :goto_1
    :try_start_3
    const-string v0, "browserType"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1036
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :goto_2
    #v10=(Conflicted);
    new-instance v0, Landroid/webkit/WebView;

    #v0=(UninitRef,Landroid/webkit/WebView;);
    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #v0=(Reference,Landroid/webkit/WebView;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    .line 1037
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setProgressBarVisibility(Z)V

    .line 1038
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    #v0=(Reference,Landroid/webkit/WebView;);
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1039
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;);
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1057
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;);
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1063
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v2, -0x1

    #v2=(Byte);
    const/4 v3, -0x1

    #v3=(Byte);
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    #v0=(Reference,Landroid/webkit/WebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1069
    :goto_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->addView(Landroid/view/View;)V

    .line 1071
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;

    const-string v1, "minimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1072
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    #v8=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v0, 0x1e

    #v0=(PosByte);
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0x1e

    #v1=(PosByte);
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    #v1=(Integer);
    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1073
    .local v8, closeButtonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v8=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1075
    new-instance v7, Landroid/widget/ImageView;

    #v7=(UninitRef,Landroid/widget/ImageView;);
    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1076
    .local v7, closeButton:Landroid/widget/ImageView;
    #v7=(Reference,Landroid/widget/ImageView;);
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    const v0, 0x108005a

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    #v6=(UninitRef,Landroid/graphics/drawable/ShapeDrawable;);
    new-instance v0, Landroid/graphics/drawable/shapes/ArcShape;

    #v0=(UninitRef,Landroid/graphics/drawable/shapes/ArcShape;);
    const/4 v1, 0x0

    #v1=(Null);
    const/high16 v2, 0x43b4

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    #v0=(Reference,Landroid/graphics/drawable/shapes/ArcShape;);
    invoke-direct {v6, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1079
    .local v6, backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;
    #v6=(Reference,Landroid/graphics/drawable/ShapeDrawable;);
    const/4 v0, -0x7

    #v0=(Byte);
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, -0x7

    #v1=(Byte);
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, -0x7

    #v2=(Byte);
    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, -0x7

    #v3=(Byte);
    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 1080
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    new-instance v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;);
    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;);
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->addView(Landroid/view/View;)V

    .end local v6           #backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;
    .end local v7           #closeButton:Landroid/widget/ImageView;
    .end local v8           #closeButtonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1029
    .restart local v10       #responseObject:Lorg/json/JSONObject;
    :catch_0
    #v0=(Reference,Ljava/lang/String;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference,Lorg/json/JSONObject;);
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    #v9=(Reference,Ljava/lang/Exception;);
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1032
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :catch_1
    #v9=(Conflicted);v10=(Conflicted);
    move-exception v9

    .line 1033
    .local v9, e:Lorg/json/JSONException;
    #v9=(Reference,Lorg/json/JSONException;);
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 1030
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v10       #responseObject:Lorg/json/JSONObject;
    :catch_2
    #v9=(Conflicted);v10=(Reference,Lorg/json/JSONObject;);
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    #v9=(Reference,Ljava/lang/Exception;);
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    goto/16 :goto_1

    .line 1031
    .end local v9           #e:Ljava/lang/Exception;
    :catch_3
    #v9=(Conflicted);
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    #v9=(Reference,Ljava/lang/Exception;);
    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1067
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :cond_1
    #v0=(Boolean);v1=(Reference,Ljava/lang/String;);v2=(Byte);v3=(Byte);v9=(Conflicted);v10=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    #v0=(Reference,Landroid/webkit/WebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "text/html"

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "utf-8"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    #v0=(Reference,Landroid/webkit/WebView;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    #v0=(Reference,Landroid/webkit/WebView;);
    return-object v0
.end method
