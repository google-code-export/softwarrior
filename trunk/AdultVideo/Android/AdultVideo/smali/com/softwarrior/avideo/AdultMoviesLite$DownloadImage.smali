.class public Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;
.super Landroid/os/AsyncTask;
.source "AdultMoviesLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwarrior/avideo/AdultMoviesLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field currentImage:I

.field final synthetic this$0:Lcom/softwarrior/avideo/AdultMoviesLite;


# direct methods
.method public constructor <init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;);
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    .line 117
    const/4 v1, 0x0

    #v1=(Null);
    aget-object v1, p1, v1

    #v1=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->currentImage:I

    .line 119
    sget-object v1, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    iget v2, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->currentImage:I

    #v2=(Integer);
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwarrior/avideo/AdultLink;

    invoke-virtual {v1}, Lcom/softwarrior/avideo/AdultLink;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, url:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    invoke-static {v1, v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$2(Lcom/softwarrior/avideo/AdultMoviesLite;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference,Landroid/graphics/Bitmap;);
    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->currentImage:I

    #v1=(Integer);
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
