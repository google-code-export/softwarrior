.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;
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
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;->this$2:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;

    .line 1135
    invoke-direct {p0, p2, p3}, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;->obj2:Ljava/lang/Object;

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, value:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;->obj1:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1139
    return-void
.end method
