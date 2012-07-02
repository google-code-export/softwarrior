.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;
.super Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;->this$2:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;

    .line 1142
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;->obj1:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 1145
    return-void
.end method
