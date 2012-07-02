.class public Lcom/softwarrior/avideo/VideoViewer;
.super Landroid/app/Activity;
.source "VideoViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/VideoViewer;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f050006

    #v7=(Integer);
    const/16 v5, 0x400

    #v5=(PosShort);
    const/4 v6, 0x1

    .line 18
    #v6=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0, v6}, Lcom/softwarrior/avideo/VideoViewer;->requestWindowFeature(I)Z

    .line 22
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {p0, v4}, Lcom/softwarrior/avideo/VideoViewer;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0, v6}, Lcom/softwarrior/avideo/VideoViewer;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/softwarrior/avideo/VideoViewer;->getWindow()Landroid/view/Window;

    move-result-object v4

    #v4=(Reference,Landroid/view/Window;);
    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 28
    const v4, 0x7f030002

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/softwarrior/avideo/VideoViewer;->setContentView(I)V

    .line 30
    invoke-virtual {p0, v7}, Lcom/softwarrior/avideo/VideoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Lcom/softwarrior/avideo/ScaledVideoView;

    .line 32
    .local v3, videoScaled:Lcom/softwarrior/avideo/ScaledVideoView;
    const/16 v4, 0x258

    #v4=(PosShort);
    const/16 v5, 0x190

    invoke-virtual {v3, v4, v5}, Lcom/softwarrior/avideo/ScaledVideoView;->setVideoAspect(II)V

    .line 34
    invoke-virtual {p0}, Lcom/softwarrior/avideo/VideoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v4

    #v4=(Reference,Landroid/content/Intent;);
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference,Landroid/os/Bundle;);
    if-eqz v0, :cond_0

    .line 36
    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, url:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v7}, Lcom/softwarrior/avideo/VideoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/VideoView;

    .line 40
    .local v2, video:Landroid/widget/VideoView;
    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 41
    new-instance v4, Landroid/widget/MediaController;

    #v4=(UninitRef,Landroid/widget/MediaController;);
    invoke-direct {v4, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/MediaController;);
    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 42
    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 43
    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 47
    const-string v4, "Loading - You may have to tap the screen and press play for video to start"

    .line 45
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 52
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #video:Landroid/widget/VideoView;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 56
    const/4 v1, 0x4

    #v1=(PosByte);
    if-ne p1, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 59
    .local v0, pid:I
    #v0=(Integer);
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 62
    .end local v0           #pid:I
    :cond_0
    #v0=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    return v1
.end method
