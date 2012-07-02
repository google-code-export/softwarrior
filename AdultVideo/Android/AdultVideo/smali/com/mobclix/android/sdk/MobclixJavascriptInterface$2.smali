.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixJavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 910
    invoke-direct {p0, p2, p3}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->obj1:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$1(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "0, \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;->obj2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v3, v0, v1, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    .line 914
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method
