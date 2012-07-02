.class public Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdMobInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1384
    #v3=(Null);
    const-string v0, "MobclixCreative"

    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Ad Listener Callback - "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeView(Landroid/view/View;)V

    .line 1386
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->addView(Landroid/view/View;)V

    .line 1388
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1389
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 1395
    :goto_0
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0

    .line 1391
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    const-string v1, ""

    iput-object v1, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V

    goto :goto_0
.end method
