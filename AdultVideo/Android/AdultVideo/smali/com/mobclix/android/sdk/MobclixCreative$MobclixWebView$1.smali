.class Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->killCustomViewVideo(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;);
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "i"
    .parameter "j"

    .prologue
    const/4 v5, 0x0

    .line 882
    #v5=(Null);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 884
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onCustomViewHidden"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Class;

    #v4=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 885
    .local v1, m:Ljava/lang/reflect/Method;
    #v1=(Reference,Ljava/lang/reflect/Method;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference,Ljava/lang/String;);v4=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->removeView(Landroid/view/View;)V

    .line 891
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v5, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->video:Landroid/widget/VideoView;

    .line 892
    const/4 v2, 0x1

    #v2=(One);
    return v2

    .line 887
    :catch_0
    #v0=(Uninit);v2=(Reference,Ljava/lang/Object;);v3=(Conflicted);
    move-exception v0

    .line 888
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const-string v2, "MobclixCreative"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
