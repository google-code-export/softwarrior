.class public Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field public isScreenOn:Z

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1402
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->isScreenOn:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "android.intent.action.SCREEN_OFF"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_0
    #v0=(Boolean);
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
