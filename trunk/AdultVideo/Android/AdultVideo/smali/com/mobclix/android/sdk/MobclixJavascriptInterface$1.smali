.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixJavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 291
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$2(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/util/HashMap;

    move-result-object v1

    #v1=(Reference,Ljava/util/HashMap;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method
