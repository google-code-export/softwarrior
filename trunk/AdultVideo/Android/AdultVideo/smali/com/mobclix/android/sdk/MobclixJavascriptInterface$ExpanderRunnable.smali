.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;
.super Ljava/lang/Object;
.source "MobclixJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpanderRunnable"
.end annotation


# instance fields
.field duration:I

.field fHeight:I

.field fLeftMargin:I

.field fTopMargin:I

.field fWidth:I

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;IIIII)V
    .locals 0
    .parameter
    .parameter "fTopMargin"
    .parameter "fLeftMargin"
    .parameter "fWidth"
    .parameter "fHeight"
    .parameter "duration"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;);
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fTopMargin:I

    .line 2014
    iput p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fLeftMargin:I

    .line 2015
    iput p4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fWidth:I

    .line 2016
    iput p5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fHeight:I

    .line 2017
    iput p6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->duration:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizing()V

    .line 2026
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2028
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2029
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fLeftMargin:I

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fTopMargin:I

    #v2=(Integer);
    iget v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fWidth:I

    #v3=(Integer);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->fHeight:I

    #v4=(Integer);
    iget v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;->duration:I

    #v5=(Integer);
    move-object v6, p0

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;);
    invoke-virtual/range {v0 .. v6}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->expand(IIIIILandroid/view/animation/Animation$AnimationListener;)V

    .line 2022
    return-void
.end method
