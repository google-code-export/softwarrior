.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;
.super Landroid/webkit/WebChromeClient;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    .line 1055
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;);
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1057
    #v4=(One);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 1069
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    return v4

    .line 1059
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getTopContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1061
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1062
    const v2, 0x104000a

    #v2=(Integer);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$1;);
    invoke-direct {v3, p0, p4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$1;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1068
    .local v0, alert:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1094
    #v4=(One);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 1112
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v4

    .line 1096
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getTopContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1098
    const-string v3, "Confirm Navigation"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1099
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1100
    const-string v2, "Leave this Page"

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;);
    invoke-direct {v3, p0, p4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$4;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1105
    const-string v2, "Stay on this Page"

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$5;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$5;);
    invoke-direct {v3, p0, p4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$5;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$5;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1111
    .local v0, alert:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1073
    #v4=(One);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 1090
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    return v4

    .line 1075
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getTopContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1076
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1077
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1078
    const v2, 0x104000a

    #v2=(Integer);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$2;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$2;);
    invoke-direct {v3, p0, p4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$2;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    const/high16 v2, 0x104

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$3;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$3;);
    invoke-direct {v3, p0, p4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$3;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1088
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1089
    .local v0, alert:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    const/4 v7, 0x1

    .line 1116
    #v7=(One);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 1150
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v7

    .line 1121
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getTopContext()Landroid/content/Context;

    move-result-object v3

    .line 1124
    .local v3, mContext:Landroid/content/Context;
    #v3=(Reference,Landroid/content/Context;);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1127
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    new-instance v2, Landroid/widget/EditText;

    #v2=(UninitRef,Landroid/widget/EditText;);
    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v2, editInput:Landroid/widget/EditText;
    #v2=(Reference,Landroid/widget/EditText;);
    if-eqz p4, :cond_1

    .line 1129
    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    :cond_1
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1132
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1133
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1134
    const v5, 0x104000a

    .line 1135
    #v5=(Integer);
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;);
    invoke-direct {v6, p0, p5, v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$6;);
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1141
    const/high16 v5, 0x104

    .line 1142
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;);
    invoke-direct {v6, p0, p5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;Ljava/lang/Object;)V

    .line 1141
    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2$7;);
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1149
    .local v0, alertDialog:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iput-object p2, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1159
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->killCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V

    .line 1186
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1164
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-nez v0, :cond_2

    .line 1166
    instance-of v0, p1, Landroid/widget/FrameLayout;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->showCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 1170
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->hasBeenIntervalSinceLastAutoplay(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$7(Lcom/mobclix/android/sdk/MobclixCreative;Z)V

    .line 1173
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Long;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    instance-of v0, p1, Landroid/widget/FrameLayout;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->showCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 1177
    :cond_3
    #v0=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->touched:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 1178
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->showCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1182
    :cond_4
    #v0=(Boolean);
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->killCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
