.class public Lcom/softwarrior/avideo/AdultMoviesLite;
.super Landroid/app/Activity;
.source "AdultMoviesLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;,
        Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;
    }
.end annotation


# static fields
.field public static adultLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/softwarrior/avideo/AdultLink;",
            ">;"
        }
    .end annotation
.end field

.field public static maxResults:I

.field public static numPagesPerSection:I

.field public static proxy:Ljava/lang/String;

.field public static simpleSections:[Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mImages:[Landroid/widget/ImageView;

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 41
    #v3=(PosByte);
    const-string v0, ""

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/softwarrior/avideo/AdultMoviesLite;->proxy:Ljava/lang/String;

    .line 43
    const/16 v0, 0x18

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const/4 v1, 0x0

    .line 45
    #v1=(Null);
    const-string v2, "amateur"

    #v2=(Reference,Ljava/lang/String;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "anal"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "ass"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 46
    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cumshots"

    aput-object v2, v0, v1

    const-string v1, "double_penetration"

    #v1=(Reference,Ljava/lang/String;);
    aput-object v1, v0, v3

    const/16 v1, 0xa

    #v1=(PosByte);
    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 47
    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 49
    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 50
    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "threesome"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "toys"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/softwarrior/avideo/AdultMoviesLite;->simpleSections:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x3c

    #v0=(PosByte);
    sput v0, Lcom/softwarrior/avideo/AdultMoviesLite;->numPagesPerSection:I

    .line 55
    sput v3, Lcom/softwarrior/avideo/AdultMoviesLite;->maxResults:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 166
    #p0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    new-instance v0, Lcom/softwarrior/avideo/AdultMoviesLite$1;

    #v0=(UninitRef,Lcom/softwarrior/avideo/AdultMoviesLite$1;);
    invoke-direct {v0, p0}, Lcom/softwarrior/avideo/AdultMoviesLite$1;-><init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V

    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$1;);
    iput-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/softwarrior/avideo/AdultMoviesLite;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->pd:Landroid/app/ProgressDialog;

    #v0=(Reference,Landroid/app/ProgressDialog;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/softwarrior/avideo/AdultMoviesLite;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/softwarrior/avideo/AdultMoviesLite;->onSearchComplete()V

    return-void
.end method

.method static synthetic access$2(Lcom/softwarrior/avideo/AdultMoviesLite;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/softwarrior/avideo/AdultMoviesLite;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference,Landroid/graphics/Bitmap;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/softwarrior/avideo/AdultMoviesLite;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->mImages:[Landroid/widget/ImageView;

    #v0=(Reference,[Landroid/widget/ImageView;);
    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "imgUrl"

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 136
    .local v3, bm:Landroid/graphics/Bitmap;
    #v3=(Null);
    const/4 v0, 0x0

    .line 138
    .local v0, aURL:Ljava/net/URL;
    :try_start_0
    #v0=(Null);
    new-instance v1, Ljava/net/URL;

    #v1=(UninitRef,Ljava/net/URL;);
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #aURL:Ljava/net/URL;
    .local v1, aURL:Ljava/net/URL;
    :try_start_1
    #v1=(Reference,Ljava/net/URL;);
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 141
    .local v4, conn:Ljava/net/URLConnection;
    #v4=(Reference,Ljava/net/URLConnection;);
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 142
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 143
    .local v5, is:Ljava/io/InputStream;
    #v5=(Reference,Ljava/io/InputStream;);
    new-instance v2, Ljava/io/BufferedInputStream;

    #v2=(UninitRef,Ljava/io/BufferedInputStream;);
    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v2, bis:Ljava/io/BufferedInputStream;
    #v2=(Reference,Ljava/io/BufferedInputStream;);
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 146
    #v3=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 147
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .end local v1           #aURL:Ljava/net/URL;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_0
    #v0=(Reference,Ljava/net/URL;);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v3

    .line 149
    .restart local v0       #aURL:Ljava/net/URL;
    :catch_0
    #v0=(Null);v2=(Uninit);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v6

    #v6=(Reference,Ljava/lang/Exception;);
    goto :goto_0

    .end local v0           #aURL:Ljava/net/URL;
    .restart local v1       #aURL:Ljava/net/URL;
    :catch_1
    #v1=(Reference,Ljava/net/URL;);v2=(Conflicted);v3=(Reference,Landroid/graphics/Bitmap;);v4=(Conflicted);v5=(Conflicted);v6=(Uninit);
    move-exception v6

    #v6=(Reference,Ljava/lang/Exception;);
    move-object v0, v1

    .end local v1           #aURL:Ljava/net/URL;
    .restart local v0       #aURL:Ljava/net/URL;
    #v0=(Reference,Ljava/net/URL;);
    goto :goto_0
.end method

.method private onSearchComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 78
    #v6=(Null);
    sget-object v3, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    #v3=(Reference,Ljava/util/List;);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    new-array v3, v3, [Landroid/widget/ImageView;

    #v3=(Reference,[Landroid/widget/ImageView;);
    iput-object v3, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->mImages:[Landroid/widget/ImageView;

    .line 80
    new-instance v0, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;

    #v0=(UninitRef,Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;);
    invoke-direct {v0, p0, p0}, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;-><init>(Lcom/softwarrior/avideo/AdultMoviesLite;Landroid/content/Context;)V

    .line 81
    .local v0, adapter:Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;
    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;);
    invoke-virtual {v0}, Lcom/softwarrior/avideo/AdultMoviesLite$ImageAdapter;->createLoadingImages()Z

    .line 83
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v4=(Conflicted);v5=(Conflicted);
    sget-object v3, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    if-lt v2, v3, :cond_0

    .line 89
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/softwarrior/avideo/AdultMoviesLite;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/GridView;

    .line 90
    .local v1, gridview:Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    const-string v3, "Press menu to load more movies"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    new-instance v3, Lcom/softwarrior/avideo/AdultMoviesLite$2;

    #v3=(UninitRef,Lcom/softwarrior/avideo/AdultMoviesLite$2;);
    invoke-direct {v3, p0}, Lcom/softwarrior/avideo/AdultMoviesLite$2;-><init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V

    #v3=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$2;);
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void

    .line 85
    .end local v1           #gridview:Landroid/widget/GridView;
    :cond_0
    #v1=(Uninit);v3=(Integer);
    new-instance v3, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;

    #v3=(UninitRef,Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;);
    invoke-direct {v3, p0}, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;-><init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V

    #v3=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Integer;

    #v4=(Reference,[Ljava/lang/Integer;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/softwarrior/avideo/AdultMoviesLite$DownloadImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    #v2=(PosShort);
    const/4 v4, 0x1

    .line 59
    #v4=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/softwarrior/avideo/AdultMoviesLite;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Lcom/softwarrior/avideo/AdultMoviesLite;->getWindow()Landroid/view/Window;

    move-result-object v1

    #v1=(Reference,Landroid/view/Window;);
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 65
    const/high16 v1, 0x7f03

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/softwarrior/avideo/AdultMoviesLite;->setContentView(I)V

    .line 67
    const-string v1, "Getting Pictures"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Please wait..."

    .line 68
    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    .line 67
    #v3=(Null);
    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->pd:Landroid/app/ProgressDialog;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    .local v0, thread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 180
    #v2=(Null);
    const-string v0, "Load More Videos"

    #v0=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    const v1, 0x108004a

    .line 180
    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const/4 v0, 0x2

    #v0=(PosByte);
    const-string v1, "Exit"

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 183
    #v0=(Reference,Landroid/view/MenuItem;);
    const v1, 0x1080038

    .line 182
    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 189
    const/4 v1, 0x4

    #v1=(PosByte);
    if-ne p1, v1, :cond_0

    .line 191
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 192
    .local v0, pid:I
    #v0=(Integer);
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 195
    .end local v0           #pid:I
    :cond_0
    #v0=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 215
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    return v2

    .line 202
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-class v2, Lcom/softwarrior/avideo/AdultMoviesLite;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-virtual {p0, v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/softwarrior/avideo/AdultMoviesLite;->finish()V

    goto :goto_0

    .line 210
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    #v0=(Uninit);v2=(Integer);
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 211
    .local v1, pid:I
    #v1=(Integer);
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 200
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/softwarrior/avideo/Util;->getRandomImages()Ljava/util/List;

    move-result-object v0

    #v0=(Reference,Ljava/util/List;);
    sput-object v0, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    .line 160
    sget-object v0, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    invoke-static {}, Lcom/softwarrior/avideo/Util;->getRandomImages()Ljava/util/List;

    move-result-object v1

    #v1=(Reference,Ljava/util/List;);
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
