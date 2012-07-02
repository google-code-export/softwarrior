.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 1084
    return-void
.end method
