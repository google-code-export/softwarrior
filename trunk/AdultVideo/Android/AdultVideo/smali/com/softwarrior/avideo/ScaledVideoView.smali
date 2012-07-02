.class public Lcom/softwarrior/avideo/ScaledVideoView;
.super Landroid/widget/VideoView;
.source "ScaledVideoView.java"


# instance fields
.field hVideo:I

.field wVideo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 15
    #p0=(Reference,Lcom/softwarrior/avideo/ScaledVideoView;);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    #p0=(Reference,Lcom/softwarrior/avideo/ScaledVideoView;);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    #p0=(Reference,Lcom/softwarrior/avideo/ScaledVideoView;);
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 36
    iget v0, p0, Lcom/softwarrior/avideo/ScaledVideoView;->wVideo:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwarrior/avideo/ScaledVideoView;->hVideo:I

    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Lcom/softwarrior/avideo/ScaledVideoView;->wVideo:I

    iget v1, p0, Lcom/softwarrior/avideo/ScaledVideoView;->hVideo:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/softwarrior/avideo/ScaledVideoView;->setMeasuredDimension(II)V

    .line 38
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public setVideoAspect(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 28
    iput p1, p0, Lcom/softwarrior/avideo/ScaledVideoView;->wVideo:I

    .line 29
    iput p2, p0, Lcom/softwarrior/avideo/ScaledVideoView;->hVideo:I

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/softwarrior/avideo/ScaledVideoView;->onMeasure(II)V

    .line 31
    return-void
.end method
