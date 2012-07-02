.class public Lcom/softwarrior/avideo/AdultLink;
.super Ljava/lang/Object;
.source "AdultLink.java"


# instance fields
.field private image:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/AdultLink;);
    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultLink;->image:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultLink;->videoUrl:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultLink;->image:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "videoUrl"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultLink;->videoUrl:Ljava/lang/String;

    .line 20
    return-void
.end method
