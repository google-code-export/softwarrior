.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;
.super Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixFullScreenAd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V
    .locals 5
    .parameter
    .parameter "a"

    .prologue
    const/16 v3, 0x400

    #v3=(PosShort);
    const/4 v4, -0x1

    .line 1164
    #v4=(Byte);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 1153
    invoke-direct {p0, p1, p2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    .line 1155
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1156
    .local v1, ww:Landroid/view/Window;
    #v1=(Reference,Landroid/view/Window;);
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1158
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1159
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1160
    .local v0, avlp:Landroid/widget/LinearLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, v2, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    .line 1163
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized exit(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1195
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return-void

    .line 1171
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    iput-object v4, v3, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    .line 1172
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1173
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->open:Z

    .line 1175
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1176
    .local v1, w:Landroid/view/Window;
    #v1=(Reference,Landroid/view/Window;);
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1177
    .local v2, wlp:Landroid/view/WindowManager$LayoutParams;
    #v2=(Reference,Landroid/view/WindowManager$LayoutParams;);
    iget v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->windowFlags:I

    #v3=(Integer);
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1178
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1180
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1182
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->removeAllViews()V

    .line 1184
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContract()V

    .line 1185
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    if-eqz v3, :cond_2

    .line 1186
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    #v0=(Conflicted);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 1190
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->destroy()V

    .line 1191
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1194
    :cond_2
    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);v4=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1168
    .end local v1           #w:Landroid/view/Window;
    .end local v2           #wlp:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 1186
    .restart local v1       #w:Landroid/view/Window;
    .restart local v2       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :try_start_2
    #v1=(Reference,Landroid/view/Window;);v2=(Reference,Landroid/view/WindowManager$LayoutParams;);v4=(Boolean);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 1187
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v0, :cond_1

    .line 1188
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->fullScreenAdView:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-interface {v0, v4}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->onDismissAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
