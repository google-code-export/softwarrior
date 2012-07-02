.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;->this$2:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;

    .line 1100
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;->obj1:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 1103
    return-void
.end method
