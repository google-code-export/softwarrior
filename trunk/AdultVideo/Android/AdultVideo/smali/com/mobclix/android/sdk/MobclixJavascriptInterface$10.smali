.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;
.super Ljava/lang/Object;
.source "MobclixJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->displayContractAd(FLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget v1, v1, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->duration:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->exit(I)V

    .line 2144
    return-void
.end method
