.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;
.super Landroid/webkit/WebViewClient;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    .line 973
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;);
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1053
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1043
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    #v0=(Reference,Landroid/webkit/CookieSyncManager;);
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1044
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loaded:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 1046
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loaded:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->onPageFinished(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V

    .line 1048
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loaded:Z

    .line 1049
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x1

    .line 975
    #v8=(One);
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 979
    .local v7, uri:Landroid/net/Uri;
    #v7=(Reference,Landroid/net/Uri;);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    iget-boolean v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v10=(Boolean);
    if-nez v10, :cond_1

    .line 1039
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Boolean);v10=(Conflicted);v11=(Conflicted);
    return v8

    .line 984
    :cond_1
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(One);v10=(Boolean);v11=(Uninit);
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    const-string v11, "tel"

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_2

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    const-string v11, "mailto"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_5

    .line 985
    :cond_2
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v10, :cond_3

    .line 986
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    const-string v11, "null"

    iput-object v11, v10, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 987
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    .line 990
    :cond_3
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v10, :cond_4

    .line 991
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v10, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 992
    :cond_4
    #v11=(Conflicted);
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef,Landroid/content/Intent;);
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 993
    .local v3, mIntent:Landroid/content/Intent;
    #v3=(Reference,Landroid/content/Intent;);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1037
    .end local v3           #mIntent:Landroid/content/Intent;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Conflicted);
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    move v8, v9

    #v8=(Null);
    goto :goto_0

    .line 995
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(One);v10=(Boolean);v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    const-string v11, "sms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_9

    .line 996
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v10, :cond_6

    .line 997
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    const-string v11, "null"

    iput-object v11, v10, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 998
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    .line 1001
    :cond_6
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v10, :cond_7

    .line 1002
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v10, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1003
    :cond_7
    #v11=(Conflicted);
    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1004
    .local v5, smsUrl:[Ljava/lang/String;
    #v5=(Reference,[Ljava/lang/String;);
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v11, 0x0

    #v11=(Null);
    aget-object v11, v5, v11

    #v11=(Reference,Ljava/lang/String;);
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, tmp:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    #v2=(Integer);
    array-length v10, v5

    #v10=(Integer);
    if-lt v2, v10, :cond_8

    .line 1007
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1008
    const-string v10, "body"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, body:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v10, "\\?"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #v11=(Null);
    aget-object v10, v10, v11

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1010
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef,Landroid/content/Intent;);
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1011
    .restart local v3       #mIntent:Landroid/content/Intent;
    #v3=(Reference,Landroid/content/Intent;);
    const-string v10, "sms_body"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1006
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_8
    #v0=(Uninit);v3=(Uninit);v10=(Integer);v11=(Reference,Ljava/lang/String;);
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    aget-object v11, v5, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1017
    .end local v2           #i:I
    .end local v5           #smsUrl:[Ljava/lang/String;
    .end local v6           #tmp:Ljava/lang/String;
    :cond_9
    #v2=(Uninit);v5=(Uninit);v6=(Uninit);v10=(Boolean);
    const-string v10, "shouldOpenInNewWindow"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, shouldOpenInNewWindow:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    if-nez v4, :cond_d

    .line 1019
    const-string v4, ""

    .line 1022
    :goto_2
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-nez v10, :cond_a

    .line 1023
    const-string v10, "no"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_b

    .line 1024
    :cond_a
    #v10=(Conflicted);
    const-string v10, "yes"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_e

    .line 1025
    :cond_b
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v10, :cond_c

    .line 1026
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v10

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v10, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1027
    :cond_c
    #v11=(Conflicted);
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef,Landroid/content/Intent;);
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1028
    .restart local v3       #mIntent:Landroid/content/Intent;
    #v3=(Reference,Landroid/content/Intent;);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1030
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v10, :cond_0

    .line 1031
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    const-string v11, "null"

    #v11=(Reference,Ljava/lang/String;);
    iput-object v11, v10, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 1032
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    goto/16 :goto_0

    .line 1021
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_d
    #v3=(Uninit);
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    goto :goto_2

    .line 1035
    :cond_e
    #v10=(Boolean);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
