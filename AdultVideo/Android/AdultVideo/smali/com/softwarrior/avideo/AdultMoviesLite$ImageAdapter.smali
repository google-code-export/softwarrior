.class public Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdultMoviesLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwarrior/avideo/AdultMoviesLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private fis:Ljava/io/FileInputStream;

.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/softwarrior/avideo/AdultMoviesLite;


# direct methods
.method public constructor <init>(Lcom/softwarrior/avideo/AdultMoviesLite;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    #p0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;);
    iput-object p2, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method


# virtual methods
.method public createLoadingImages()Z
    .locals 8

    .prologue
    .line 231
    const/4 v3, 0x4

    .line 233
    .local v3, reflectionGap:I
    #v3=(PosByte);
    const/4 v1, 0x0

    .line 234
    .local v1, index:I
    #v1=(Null);
    iget-object v4, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v4=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v4}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;

    move-result-object v5

    #v5=(Reference,[Landroid/widget/ImageView;);
    array-length v6, v5

    #v6=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v4=(Integer);v7=(Conflicted);
    if-lt v4, v6, :cond_0

    .line 241
    const/4 v4, 0x1

    #v4=(One);
    return v4

    .line 234
    :cond_0
    #v4=(Integer);
    aget-object v0, v5, v4

    .line 236
    .local v0, imageView:Landroid/widget/ImageView;
    #v0=(Reference,Landroid/widget/ImageView;);
    new-instance v0, Landroid/widget/ImageView;

    .end local v0           #imageView:Landroid/widget/ImageView;
    #v0=(UninitRef,Landroid/widget/ImageView;);
    iget-object v7, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->mContext:Landroid/content/Context;

    #v7=(Reference,Landroid/content/Context;);
    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 237
    .restart local v0       #imageView:Landroid/widget/ImageView;
    #v0=(Reference,Landroid/widget/ImageView;);
    const v7, 0x7f020002

    #v7=(Integer);
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v7, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v7=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v7}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-object v0, v7, v2

    .line 234
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Integer;);
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 267
    const/4 v0, 0x0

    #v0=(Null);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    const-wide/high16 v2, 0x4000

    #v2=(LongLo);v3=(LongHi);
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    #v4=(Integer);
    int-to-double v4, v4

    #v4=(DoubleLo);v5=(DoubleHi);
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    double-to-float v2, v2

    #v2=(Float);
    div-float/2addr v1, v2

    #v1=(Float);
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    #v0=(Float);
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
