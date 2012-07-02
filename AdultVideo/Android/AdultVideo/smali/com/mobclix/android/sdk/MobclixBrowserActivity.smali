.class public Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.super Landroid/app/Activity;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final TYPE_ADD_CONTACT:I = 0x8

.field private static final TYPE_BROWSER:I = 0x2

.field private static final TYPE_CAMERA:I = 0x4

.field private static final TYPE_EXPANDER:I = 0x3

.field private static final TYPE_FULLSCREEN:I = 0x9

.field private static final TYPE_GALLERY:I = 0x5

.field private static final TYPE_GALLERY_TO_SERVER:I = 0x6

.field private static final TYPE_GET_CONTACT:I = 0x7

.field private static final TYPE_HTML5_VIDEO:I = 0xa

.field private static final TYPE_OFFER:I = 0x1

.field private static final TYPE_VIDEO:I


# instance fields
.field private final MENU_BOOKMARK:I

.field private final MENU_CLOSE:I

.field private final MENU_FORWARD:I

.field private TAG:Ljava/lang/String;

.field private asyncRequestThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/String;

.field firstOpen:Z

.field private forwardingIntent:Landroid/content/Intent;

.field private handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

.field imageUri:Landroid/net/Uri;

.field mFrame:Landroid/widget/FrameLayout;

.field private scale:F

.field screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    #v1=(One);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    const-string v0, "mobclix-browser"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    .line 77
    const/high16 v0, 0x3f80

    #v0=(Integer);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    .line 81
    new-instance v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;);
    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    .line 97
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_BOOKMARK:I

    .line 101
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_FORWARD:I

    .line 102
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_CLOSE:I

    .line 109
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->firstOpen:Z

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    #v0=(Reference,Ljava/util/LinkedList;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    return-object v0
.end method

.method public static convertImageUriToFile(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 11
    .parameter "imageUri"
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    .line 463
    #v10=(Null);
    const/4 v6, 0x0

    .line 465
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Null);
    const/4 v0, 0x3

    :try_start_0
    #v0=(PosByte);
    new-array v2, v0, [Ljava/lang/String;

    #v2=(Reference,[Ljava/lang/String;);
    const/4 v0, 0x0

    #v0=(Null);
    const-string v1, "_data"

    #v1=(Reference,Ljava/lang/String;);
    aput-object v1, v2, v0

    const/4 v0, 0x1

    #v0=(One);
    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    #v0=(PosByte);
    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 468
    .local v2, proj:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 469
    #v3=(Null);
    const/4 v4, 0x0

    .line 470
    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v0, p1

    #v0=(Reference,Landroid/app/Activity;);
    move-object v1, p0

    .line 466
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    #v6=(Reference,Landroid/database/Cursor;);
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 472
    .local v7, file_ColumnIndex:I
    #v7=(Integer);
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 473
    .local v9, orientation_ColumnIndex:I
    #v9=(Integer);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 474
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, orientation:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    new-instance v0, Ljava/io/File;

    #v0=(UninitRef,Ljava/io/File;);
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    #v0=(Reference,Ljava/io/File;);
    if-eqz v6, :cond_0

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v8           #orientation:Ljava/lang/String;
    :cond_0
    :goto_0
    #v8=(Conflicted);
    return-object v0

    .line 479
    :cond_1
    #v0=(Boolean);v8=(Uninit);
    if-eqz v6, :cond_2

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    .line 477
    #v0=(Null);
    goto :goto_0

    .line 478
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #file_ColumnIndex:I
    .end local v9           #orientation_ColumnIndex:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v0

    .line 479
    #v0=(Reference,Ljava/lang/Throwable;);
    if-eqz v6, :cond_3

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_3
    throw v0
.end method

.method private dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 117
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    #v0=(Integer);
    int-to-float v1, p1

    #v1=(Float);
    mul-float/2addr v0, v1

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 449
    #v3=(Null);
    const/4 v0, 0x1

    #v0=(One);
    new-array v2, v0, [Ljava/lang/String;

    #v2=(Reference,[Ljava/lang/String;);
    const/4 v0, 0x0

    #v0=(Null);
    const-string v1, "_data"

    #v1=(Reference,Ljava/lang/String;);
    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    move-object v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    move-object v1, p1

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    .line 450
    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 451
    .local v7, cursor:Landroid/database/Cursor;
    #v7=(Reference,Landroid/database/Cursor;);
    if-eqz v7, :cond_0

    .line 456
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 457
    .local v6, column_index:I
    #v6=(Integer);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 459
    .end local v6           #column_index:I
    :cond_0
    #v3=(Reference,Ljava/lang/String;);v6=(Conflicted);
    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 318
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 319
    :cond_0
    const/4 v12, 0x4

    #v12=(PosByte);
    move/from16 v0, p1

    #v0=(Integer);
    if-ne v0, v12, :cond_5

    .line 322
    const/4 v12, -0x1

    #v12=(Byte);
    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 323
    :try_start_0
    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;

    #v12=(Reference,Landroid/net/Uri;);
    invoke-static {v12, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->convertImageUriToFile(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v6

    .line 324
    .local v6, in:Ljava/io/File;
    #v6=(Reference,Ljava/io/File;);
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 325
    .local v7, pic:Landroid/graphics/Bitmap;
    #v7=(Reference,Landroid/graphics/Bitmap;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v4, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    .line 326
    .local v4, height:I
    #v4=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v11, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 328
    .local v11, width:I
    #v11=(Integer);
    if-eqz v4, :cond_1

    if-nez v11, :cond_3

    .line 329
    :cond_1
    move-object v8, v7

    .line 335
    .local v8, scaledPic:Landroid/graphics/Bitmap;
    :goto_0
    #v8=(Reference,Landroid/graphics/Bitmap;);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    #v1=(Reference,Ljava/io/ByteArrayOutputStream;);
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #v12=(Reference,Landroid/graphics/Bitmap$CompressFormat;);
    const/16 v13, 0xa

    #v13=(PosByte);
    invoke-virtual {v8, v12, v13, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 338
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    #v13=(Reference,[B);
    invoke-static {v13}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoTaken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    const/4 v1, 0x0

    .line 341
    #v1=(Null);
    const/4 v8, 0x0

    .line 342
    #v8=(Null);
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #height:I
    .end local v6           #in:Ljava/io/File;
    .end local v7           #pic:Landroid/graphics/Bitmap;
    .end local v8           #scaledPic:Landroid/graphics/Bitmap;
    .end local v11           #width:I
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/4 v13, 0x0

    #v13=(Null);
    iput-object v13, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 445
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 446
    return-void

    .line 331
    .restart local v4       #height:I
    .restart local v6       #in:Ljava/io/File;
    .restart local v7       #pic:Landroid/graphics/Bitmap;
    .restart local v11       #width:I
    :cond_3
    :try_start_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);v6=(Reference,Ljava/io/File;);v7=(Reference,Landroid/graphics/Bitmap;);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Integer);v13=(Uninit);v14=(Uninit);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v12, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 332
    #v12=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v13

    #v13=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v13, v13, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v13}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v13

    iget v13, v13, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    #v13=(Integer);
    const/4 v14, 0x1

    .line 331
    #v14=(One);
    invoke-static {v7, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 333
    .restart local v8       #scaledPic:Landroid/graphics/Bitmap;
    #v8=(Reference,Landroid/graphics/Bitmap;);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_0

    .line 344
    .end local v4           #height:I
    .end local v6           #in:Ljava/io/File;
    .end local v7           #pic:Landroid/graphics/Bitmap;
    .end local v8           #scaledPic:Landroid/graphics/Bitmap;
    .end local v11           #width:I
    :cond_4
    #v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v11=(Uninit);v12=(Byte);v13=(Uninit);v14=(Uninit);
    if-nez p2, :cond_2

    .line 345
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "User canceled."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v2

    .line 348
    .local v2, e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "Error processing photo."

    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v11=(Uninit);v12=(PosByte);v13=(Uninit);v14=(Uninit);
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_a

    .line 353
    const/4 v12, -0x1

    #v12=(Byte);
    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    .line 354
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 357
    .local v10, selectedImageUri:Landroid/net/Uri;
    #v10=(Reference,Landroid/net/Uri;);
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, filemanagerstring:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 363
    .local v9, selectedImagePath:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    if-nez v9, :cond_6

    .line 364
    move-object v9, v3

    .line 366
    :cond_6
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 368
    .local v5, i:Landroid/net/Uri;
    #v5=(Reference,Landroid/net/Uri;);
    new-instance v6, Ljava/io/File;

    #v6=(UninitRef,Ljava/io/File;);
    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v6       #in:Ljava/io/File;
    #v6=(Reference,Ljava/io/File;);
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    #v12=(Reference,Ljava/lang/String;);
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 370
    .restart local v7       #pic:Landroid/graphics/Bitmap;
    #v7=(Reference,Landroid/graphics/Bitmap;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v4, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    .line 371
    .restart local v4       #height:I
    #v4=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v11, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 373
    .restart local v11       #width:I
    #v11=(Integer);
    if-eqz v4, :cond_7

    if-nez v11, :cond_8

    .line 374
    :cond_7
    move-object v8, v7

    .line 379
    .restart local v8       #scaledPic:Landroid/graphics/Bitmap;
    :goto_2
    #v8=(Reference,Landroid/graphics/Bitmap;);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    const/4 v7, 0x0

    .line 380
    #v7=(Null);
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 381
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    #v1=(Reference,Ljava/io/ByteArrayOutputStream;);
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #v12=(Reference,Landroid/graphics/Bitmap$CompressFormat;);
    const/16 v13, 0xa

    #v13=(PosByte);
    invoke-virtual {v8, v12, v13, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 383
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    #v13=(Reference,[B);
    invoke-static {v13}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoTaken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 385
    const/4 v8, 0x0

    .line 386
    #v8=(Null);
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 392
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #filemanagerstring:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #i:Landroid/net/Uri;
    .end local v6           #in:Ljava/io/File;
    .end local v7           #pic:Landroid/graphics/Bitmap;
    .end local v8           #scaledPic:Landroid/graphics/Bitmap;
    .end local v9           #selectedImagePath:Ljava/lang/String;
    .end local v10           #selectedImageUri:Landroid/net/Uri;
    .end local v11           #width:I
    :catch_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v2

    .line 393
    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "Error processing photo."

    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 376
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #filemanagerstring:Ljava/lang/String;
    .restart local v4       #height:I
    .restart local v5       #i:Landroid/net/Uri;
    .restart local v6       #in:Ljava/io/File;
    .restart local v7       #pic:Landroid/graphics/Bitmap;
    .restart local v9       #selectedImagePath:Ljava/lang/String;
    .restart local v10       #selectedImageUri:Landroid/net/Uri;
    .restart local v11       #width:I
    :cond_8
    :try_start_3
    #v1=(Uninit);v2=(Uninit);v3=(Reference,Ljava/lang/String;);v4=(Integer);v5=(Reference,Landroid/net/Uri;);v6=(Reference,Ljava/io/File;);v7=(Reference,Landroid/graphics/Bitmap;);v8=(Uninit);v9=(Reference,Ljava/lang/String;);v10=(Reference,Landroid/net/Uri;);v11=(Integer);v13=(Uninit);v14=(Uninit);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    iget v12, v12, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 377
    #v12=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v13

    #v13=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v13, v13, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v13}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v13

    iget v13, v13, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    #v13=(Integer);
    const/4 v14, 0x1

    .line 376
    #v14=(One);
    invoke-static {v7, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8       #scaledPic:Landroid/graphics/Bitmap;
    #v8=(Reference,Landroid/graphics/Bitmap;);
    goto :goto_2

    .line 389
    .end local v3           #filemanagerstring:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #i:Landroid/net/Uri;
    .end local v6           #in:Ljava/io/File;
    .end local v7           #pic:Landroid/graphics/Bitmap;
    .end local v8           #scaledPic:Landroid/graphics/Bitmap;
    .end local v9           #selectedImagePath:Ljava/lang/String;
    .end local v10           #selectedImageUri:Landroid/net/Uri;
    .end local v11           #width:I
    :cond_9
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Byte);v13=(Uninit);v14=(Uninit);
    if-nez p2, :cond_2

    .line 390
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "User canceled."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 396
    :cond_a
    #v12=(PosByte);v13=(Uninit);
    const/4 v12, 0x6

    move/from16 v0, p1

    if-ne v0, v12, :cond_d

    .line 398
    const/4 v12, -0x1

    #v12=(Byte);
    move/from16 v0, p2

    if-ne v0, v12, :cond_c

    .line 399
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 402
    .restart local v10       #selectedImageUri:Landroid/net/Uri;
    #v10=(Reference,Landroid/net/Uri;);
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3       #filemanagerstring:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 408
    .restart local v9       #selectedImagePath:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    if-nez v9, :cond_b

    .line 409
    move-object v9, v3

    .line 411
    :cond_b
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sendImageToServer(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 416
    .end local v3           #filemanagerstring:Ljava/lang/String;
    .end local v9           #selectedImagePath:Ljava/lang/String;
    .end local v10           #selectedImageUri:Landroid/net/Uri;
    :catch_2
    #v3=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v2

    .line 417
    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "Error processing photo."

    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 413
    .end local v2           #e:Ljava/lang/Exception;
    :cond_c
    #v2=(Uninit);v3=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Byte);v13=(Uninit);
    if-nez p2, :cond_2

    .line 414
    :try_start_5
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "User canceled."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 420
    :cond_d
    #v12=(PosByte);v13=(Uninit);
    const/4 v12, 0x7

    move/from16 v0, p1

    if-ne v0, v12, :cond_f

    .line 422
    const/4 v12, -0x1

    #v12=(Byte);
    move/from16 v0, p2

    if-ne v0, v12, :cond_e

    .line 423
    :try_start_6
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    #v13=(Reference,Landroid/net/Uri;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactPicked(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 428
    :catch_3
    #v12=(Conflicted);v13=(Conflicted);
    move-exception v2

    .line 429
    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "Error getting contact."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    #v2=(Uninit);v12=(Byte);v13=(Uninit);
    if-nez p2, :cond_2

    .line 426
    :try_start_7
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "User canceled."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 431
    :cond_f
    #v12=(PosByte);v13=(Uninit);
    const/16 v12, 0x8

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 433
    const/4 v12, -0x1

    #v12=(Byte);
    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 434
    :try_start_8
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactAdded()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 439
    :catch_4
    #v12=(Conflicted);v13=(Conflicted);
    move-exception v2

    .line 440
    .restart local v2       #e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "Error getting contact."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 436
    .end local v2           #e:Ljava/lang/Exception;
    :cond_10
    #v2=(Uninit);v12=(Byte);v13=(Uninit);
    if-nez p2, :cond_2

    .line 437
    :try_start_9
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v12

    #v12=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v12

    const-string v13, "User canceled."

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v13}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    #v8=(Reference,Landroid/content/res/Resources;);
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    #v8=(Integer);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    .line 127
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    #v8=(Reference,Landroid/content/Intent;);
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 128
    .local v2, extras:Landroid/os/Bundle;
    #v2=(Reference,Landroid/os/Bundle;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 131
    const/4 v8, 0x0

    #v8=(Null);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 132
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 133
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    .line 134
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    invoke-direct {v8, p0, p0, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .line 232
    :cond_0
    :goto_0
    #v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    new-instance v8, Landroid/widget/FrameLayout;

    #v8=(UninitRef,Landroid/widget/FrameLayout;);
    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #v8=(Reference,Landroid/widget/FrameLayout;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 233
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->mFrame:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/TableLayout$LayoutParams;

    #v9=(UninitRef,Landroid/widget/TableLayout$LayoutParams;);
    const/4 v10, -0x1

    #v10=(Byte);
    const/4 v11, -0x1

    #v11=(Byte);
    invoke-direct {v9, v10, v11}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    #v9=(Reference,Landroid/widget/TableLayout$LayoutParams;);
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 235
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->mFrame:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 236
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 135
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v10=(Uninit);v11=(Uninit);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "browser"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 136
    const/4 v8, 0x2

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 137
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 138
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    invoke-direct {v8, p0, p0, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    goto :goto_0

    .line 139
    :cond_2
    #v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "expander"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_3

    .line 140
    const/4 v8, 0x3

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 141
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 142
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 143
    .local v7, w:Landroid/view/Window;
    #v7=(Reference,Landroid/view/Window;);
    const/16 v8, 0x400

    #v8=(PosShort);
    const/16 v9, 0x400

    #v9=(PosShort);
    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 144
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v8, p0, p0, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .line 147
    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef,Landroid/content/IntentFilter;);
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, filter:Landroid/content/IntentFilter;
    #v4=(Reference,Landroid/content/IntentFilter;);
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    invoke-direct {v8, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    .line 150
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 151
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v7           #w:Landroid/view/Window;
    :cond_3
    #v4=(Uninit);v7=(Uninit);v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "fullscreen"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_4

    .line 152
    const/16 v8, 0x9

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 153
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 154
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 155
    .restart local v7       #w:Landroid/view/Window;
    #v7=(Reference,Landroid/view/Window;);
    const/16 v8, 0x400

    #v8=(PosShort);
    const/16 v9, 0x400

    #v9=(PosShort);
    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 156
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;);
    invoke-direct {v8, p0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .line 159
    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef,Landroid/content/IntentFilter;);
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v4       #filter:Landroid/content/IntentFilter;
    #v4=(Reference,Landroid/content/IntentFilter;);
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    invoke-direct {v8, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    .line 162
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 163
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v7           #w:Landroid/view/Window;
    :cond_4
    #v4=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Reference,Ljava/lang/String;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "camera"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_5

    .line 164
    const/4 v8, 0x4

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 167
    const-string v3, "camera.jpg"

    .line 169
    .local v3, fileName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v6, values:Landroid/content/ContentValues;
    #v6=(Reference,Landroid/content/ContentValues;);
    const-string v8, "title"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v8, "description"

    const-string v9, "Image capture by camera"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    new-instance v8, Landroid/content/Intent;

    #v8=(UninitRef,Landroid/content/Intent;);
    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Landroid/content/Intent;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    .line 180
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "output"

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;

    #v10=(Reference,Landroid/net/Uri;);
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "android.intent.extra.videoQuality"

    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 175
    :catch_0
    #v10=(Uninit);
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_5
    #v1=(Uninit);v3=(Uninit);v6=(Uninit);v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "gallery"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_6

    .line 185
    const/4 v8, 0x5

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 187
    new-instance v8, Landroid/content/Intent;

    #v8=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    #v8=(Reference,Landroid/content/Intent;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    .line 188
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "image/*"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 192
    :cond_6
    #v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sendToServer"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 193
    const/4 v8, 0x6

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 195
    new-instance v8, Landroid/content/Intent;

    #v8=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    #v8=(Reference,Landroid/content/Intent;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    .line 196
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "image/*"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 200
    :cond_7
    #v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "contact"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_8

    .line 201
    const/4 v8, 0x7

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    goto/16 :goto_1

    .line 203
    :cond_8
    #v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "addContact"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_9

    .line 204
    const/16 v8, 0x8

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 207
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, contact:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixContacts;->getInstance()Lcom/mobclix/android/sdk/MobclixContacts;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/mobclix/android/sdk/MobclixContacts;->getAddContactIntent(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 209
    .end local v0           #contact:Lorg/json/JSONObject;
    :catch_1
    #v0=(Conflicted);v8=(Conflicted);
    move-exception v1

    .line 211
    .restart local v1       #e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v8

    #v8=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v8

    const-string v9, "Error getting contact."

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto/16 :goto_1

    .line 215
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    #v0=(Uninit);v1=(Uninit);v8=(Boolean);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "html5Video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 216
    const/16 v8, 0xa

    #v8=(PosByte);
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 218
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    #v8=(Reference,Landroid/content/res/Resources;);
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    .line 219
    .local v5, orientation:I
    #v5=(Integer);
    const/4 v8, 0x2

    #v8=(PosByte);
    if-ne v5, v8, :cond_a

    .line 220
    const/4 v5, 0x0

    .line 223
    :goto_2
    #v5=(Boolean);
    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    .line 225
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 226
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    #v8=(Reference,Landroid/view/Window;);
    const/16 v9, 0x80

    #v9=(PosShort);
    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 227
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 228
    .restart local v7       #w:Landroid/view/Window;
    #v7=(Reference,Landroid/view/Window;);
    const/16 v8, 0x400

    #v8=(PosShort);
    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 229
    new-instance v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;);
    invoke-direct {v8, p0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;);
    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    goto/16 :goto_0

    .line 222
    .end local v7           #w:Landroid/view/Window;
    :cond_a
    #v5=(Integer);v7=(Uninit);v8=(PosByte);v9=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 615
    #v1=(Null);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 630
    :goto_0
    #v0=(Boolean);v1=(Reference,Landroid/view/MenuItem;);v3=(Conflicted);
    return v0

    .line 621
    :sswitch_0
    #v0=(One);v1=(Null);v3=(Uninit);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 622
    const-string v2, "Bookmark"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 623
    const v3, 0x1080033

    #v3=(Integer);
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 624
    const-string v2, "Forward"

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 625
    const v3, 0x108003d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 626
    const/4 v2, 0x2

    #v2=(PosByte);
    const-string v3, "Close"

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 627
    #v1=(Reference,Landroid/view/MenuItem;);
    const v2, 0x1080038

    #v2=(Integer);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;);
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 552
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x4

    .line 573
    #v2=(PosByte);
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 610
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    #v0=(Boolean);v2=(Short);
    return v0

    .line 575
    :sswitch_0
    #v0=(Integer);v2=(PosByte);
    if-ne p1, v2, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 579
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 581
    :sswitch_1
    #v0=(Integer);
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    .line 583
    #v0=(One);
    goto :goto_0

    .line 585
    :cond_1
    #v0=(Integer);
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 587
    :sswitch_2
    #v0=(Integer);
    if-ne p1, v2, :cond_3

    .line 588
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->canGoBack()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadAd()V

    .line 590
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    const/16 v2, 0x1f4

    #v2=(PosShort);
    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->exit(I)V

    move v0, v1

    .line 591
    #v0=(One);
    goto :goto_0

    .line 593
    :cond_3
    #v0=(Integer);v2=(PosByte);
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 595
    :sswitch_3
    #v0=(Integer);
    if-ne p1, v2, :cond_6

    .line 596
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->canGoBack()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const/4 v2, -0x2

    #v2=(Byte);
    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->canGoBackOrForward(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->goBack()V

    :goto_1
    move v0, v1

    .line 606
    #v0=(One);
    goto :goto_0

    .line 600
    :cond_4
    #v0=(Boolean);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadAd()V

    .line 601
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->clearHistory()V

    goto :goto_1

    .line 605
    :cond_5
    #v0=(Boolean);v2=(PosByte);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreenAd;->exit(I)V

    goto :goto_1

    .line 608
    :cond_6
    #v0=(Integer);v2=(PosByte);
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto/16 :goto_0

    .line 573
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 635
    #v1=(One);
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    move v0, v2

    .line 667
    :goto_0
    #v0=(Boolean);v2=(Reference,Ljava/lang/String;);
    return v0

    .line 637
    :sswitch_0
    #v0=(Integer);v2=(Null);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 649
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 639
    :pswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 640
    #v0=(One);
    goto :goto_0

    .line 642
    :pswitch_1
    #v0=(Integer);v2=(Null);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->canGoForward()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->goForward()V

    :cond_0
    #v0=(Conflicted);
    move v0, v1

    .line 644
    #v0=(One);
    goto :goto_0

    .line 646
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->exit(I)V

    move v0, v1

    .line 647
    #v0=(One);
    goto :goto_0

    .line 652
    :sswitch_1
    #v0=(Integer);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 664
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 654
    :pswitch_3
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 655
    #v0=(One);
    goto :goto_0

    .line 657
    :pswitch_4
    #v0=(Integer);v2=(Null);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_1
    #v0=(Conflicted);
    move v0, v1

    .line 659
    #v0=(One);
    goto/16 :goto_0

    .line 661
    :pswitch_5
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    move v0, v1

    .line 662
    #v0=(One);
    goto/16 :goto_0

    .line 635
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 559
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 569
    :goto_0
    :pswitch_0
    #v0=(Conflicted);
    return-void

    .line 561
    :pswitch_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 564
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->pauseListeners()V

    goto :goto_0

    .line 559
    #v0=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 494
    const-string v0, "imageUri"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 495
    const-string v0, "imageUri"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;

    .line 496
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    #v2=(Null);
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 269
    :pswitch_0
    #v0=(Uninit);v1=(Integer);v2=(Null);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->resumeListeners()V

    .line 271
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iput-boolean v2, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 274
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->firstOpen:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHidden()V

    .line 277
    :cond_0
    #v1=(Conflicted);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->firstOpen:Z

    goto :goto_0

    .line 280
    :pswitch_1
    #v1=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v1

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 286
    :cond_2
    #v2=(Null);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    .line 290
    :pswitch_2
    #v1=(Integer);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    #v1=(Reference,Landroid/content/Intent;);
    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v2, "Select Picture"

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 292
    :cond_3
    #v2=(Null);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    .line 295
    :pswitch_3
    #v1=(Integer);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    #v1=(Reference,Landroid/content/Intent;);
    if-eqz v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    const-string v2, "Select Picture"

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 297
    :cond_4
    #v2=(Null);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    .line 300
    :pswitch_4
    #v1=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixContacts;->getInstance()Lcom/mobclix/android/sdk/MobclixContacts;

    move-result-object v1

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixContacts;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixContacts;->getPickContactIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 304
    :pswitch_5
    :try_start_0
    #v1=(Integer);v2=(Null);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->forwardingIntent:Landroid/content/Intent;

    #v1=(Reference,Landroid/content/Intent;);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 305
    :catch_0
    #v1=(Conflicted);
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v1

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v1

    const-string v2, "Error getting contact."

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCanceled(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 266
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;

    #v0=(Reference,Landroid/net/Uri;);
    if-eqz v0, :cond_0

    .line 488
    const-string v0, "imageUri"

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->imageUri:Landroid/net/Uri;

    #v1=(Reference,Landroid/net/Uri;);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 489
    :cond_0
    #v1=(Conflicted);
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 240
    #v3=(One);
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 242
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 244
    :pswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$5(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->runNextAsyncRequest()V

    .line 246
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Loading..."

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$6(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/app/ProgressDialog;)V

    .line 247
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;);
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 253
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 242
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 502
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v2=(Integer);
    sparse-switch v2, :sswitch_data_0

    .line 545
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 506
    :sswitch_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 507
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;Landroid/widget/VideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    :try_start_1
    #v0=(Conflicted);v3=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onCustomViewHidden"

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Class;

    #v4=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 513
    .local v1, m:Ljava/lang/reflect/Method;
    #v1=(Reference,Ljava/lang/reflect/Method;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixHTML5Video;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->mCustomViewCallback:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_2
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    .line 508
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Conflicted);v4=(Uninit);
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    #v0=(Reference,Ljava/lang/Exception;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    :catch_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 515
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    #v0=(Conflicted);v3=(Reference,Ljava/lang/Object;);
    move-exception v0

    .line 516
    .restart local v0       #e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 522
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V

    goto :goto_0

    .line 526
    :cond_1
    #v2=(Boolean);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->open:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->exit(I)V

    .line 528
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V

    goto/16 :goto_0

    .line 533
    :sswitch_2
    #v2=(Integer);v3=(Uninit);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V

    goto/16 :goto_0

    .line 537
    :cond_2
    #v2=(Boolean);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->open:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V

    goto/16 :goto_0

    .line 502
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public runNextAsyncRequest()V
    .locals 3

    .prologue
    .line 672
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    #v1=(Reference,Ljava/util/LinkedList;);
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    #v1=(Reference,Ljava/util/LinkedList;);
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/Thread;

    .line 674
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 689
    .end local v0           #thread:Ljava/lang/Thread;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 677
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 679
    :pswitch_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$8(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Z)V

    .line 680
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 681
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->createAdButtonBanner()V

    .line 682
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
