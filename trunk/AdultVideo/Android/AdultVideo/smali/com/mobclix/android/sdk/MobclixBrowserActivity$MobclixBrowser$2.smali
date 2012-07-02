.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;
.super Landroid/webkit/WebChromeClient;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    .line 1057
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;);
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 1061
    return-void
.end method
