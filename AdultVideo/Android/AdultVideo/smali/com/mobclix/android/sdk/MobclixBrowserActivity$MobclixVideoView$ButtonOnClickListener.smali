.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonOnClickListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "u"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;->context:Landroid/content/Context;

    .line 929
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 933
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;->url:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 935
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference,Landroid/net/Uri;);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 936
    .local v0, mIntent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 937
    return-void
.end method
