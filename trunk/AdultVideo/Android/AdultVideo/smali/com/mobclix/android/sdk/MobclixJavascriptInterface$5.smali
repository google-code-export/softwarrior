.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixJavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->calendarGetCalendars(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 1179
    invoke-direct {p0, p2, p3}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$2(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Integer;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;->obj2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->calendarGetCalendars(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return-void
.end method
