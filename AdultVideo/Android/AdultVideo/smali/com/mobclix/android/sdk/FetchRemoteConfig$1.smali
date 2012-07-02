.class Lcom/mobclix/android/sdk/FetchRemoteConfig$1;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/FetchRemoteConfig;->onPostExecute(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/FetchRemoteConfig;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/FetchRemoteConfig;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig$1;->this$0:Lcom/mobclix/android/sdk/FetchRemoteConfig;

    .line 436
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v2, "android.intent.action.VIEW"

    #v2=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig$1;->obj1:Ljava/lang/Object;

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 439
    .local v0, mIntent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig$1;->this$0:Lcom/mobclix/android/sdk/FetchRemoteConfig;

    iget-object v1, v1, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method
