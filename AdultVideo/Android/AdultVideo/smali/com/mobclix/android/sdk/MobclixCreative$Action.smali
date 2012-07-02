.class Lcom/mobclix/android/sdk/MobclixCreative$Action;
.super Ljava/lang/Object;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Action"
.end annotation


# instance fields
.field autoplay:Z

.field browserType:Ljava/lang/String;

.field cachedHTML:Ljava/lang/String;

.field cachedImageBitmap:Landroid/graphics/Bitmap;

.field cachedImageHeight:I

.field cachedImageWidth:I

.field private onShowUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field private rawJSON:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 1
    .parameter
    .parameter "creative"

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    const-string v0, "null"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 1489
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    .line 1490
    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;

    .line 1491
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    .line 1496
    const-string v0, ""

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 1497
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    .line 1498
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    .line 1503
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 5
    .parameter
    .parameter "action"
    .parameter "creative"

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    const-string v3, "null"

    #v3=(Reference,Ljava/lang/String;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 1489
    const-string v3, ""

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    .line 1490
    const-string v3, "standard"

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;

    .line 1491
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    .line 1494
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    .line 1496
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 1497
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #v3=(Reference,Ljava/util/ArrayList;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    .line 1498
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #v3=(Reference,Ljava/util/ArrayList;);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    .line 1508
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    .line 1509
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1510
    const-string v3, "type"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 1511
    const-string v3, "autoplay"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1512
    const-string v3, "autoplay"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1518
    :cond_0
    :try_start_1
    const-string v3, "eventUrls"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1519
    .local v0, eventUrls:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v3, "onShow"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1520
    .local v2, t:Lorg/json/JSONArray;
    #v2=(Reference,Lorg/json/JSONArray;);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v4=(Conflicted);
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    #v3=(Integer);
    if-lt v1, v3, :cond_2

    .line 1523
    const-string v3, "onTouch"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1524
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    #v3=(Integer);
    if-lt v1, v3, :cond_3

    .line 1531
    .end local v0           #eventUrls:Lorg/json/JSONObject;
    .end local v1           #i:I
    .end local v2           #t:Lorg/json/JSONArray;
    :goto_2
    :try_start_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "url"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 1532
    :try_start_3
    const-string v3, "url"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1533
    :goto_3
    :try_start_4
    const-string v3, "browserType"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1535
    :goto_4
    :try_start_5
    const-string v3, "preload"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 1536
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadPreload()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1543
    :cond_1
    :goto_5
    #v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1521
    .restart local v0       #eventUrls:Lorg/json/JSONObject;
    .restart local v1       #i:I
    .restart local v2       #t:Lorg/json/JSONArray;
    :cond_2
    :try_start_6
    #v0=(Reference,Lorg/json/JSONObject;);v1=(Integer);v2=(Reference,Lorg/json/JSONArray;);v3=(Integer);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    #v3=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :cond_3
    #v3=(Integer);v4=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    #v3=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1538
    .end local v0           #eventUrls:Lorg/json/JSONObject;
    .end local v1           #i:I
    .end local v2           #t:Lorg/json/JSONArray;
    :cond_4
    :try_start_7
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 1539
    :try_start_8
    const-string v3, "baseUrl"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1540
    :goto_6
    :try_start_9
    const-string v3, "html"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1541
    :goto_7
    :try_start_a
    const-string v3, "browserType"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_5

    .line 1543
    :catch_1
    #v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    #v3=(Reference,Lorg/json/JSONException;);
    goto :goto_5

    .line 1540
    :catch_2
    #v4=(Reference,Ljava/lang/String;);
    move-exception v3

    goto :goto_7

    .line 1539
    :catch_3
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Lorg/json/JSONException;);
    goto :goto_6

    .line 1537
    :catch_4
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Lorg/json/JSONException;);
    goto :goto_5

    .line 1533
    :catch_5
    move-exception v3

    goto :goto_4

    .line 1532
    :catch_6
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Lorg/json/JSONException;);
    goto :goto_3

    .line 1528
    :catch_7
    #v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto :goto_2
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    return-object v0
.end method


# virtual methods
.method public act()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1567
    :try_start_0
    #v8=(One);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    #v5=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_3

    .line 1573
    :goto_1
    #v6=(Conflicted);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    #v0=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_4

    .line 1578
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Z)V

    .line 1579
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v6, "url"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadUrl()V

    .line 1589
    :cond_2
    :goto_3
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Z)V

    .line 1591
    return v8

    .line 1567
    :cond_3
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Reference,Ljava/util/Iterator;);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    .line 1568
    .local v3, t:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    #v4=(UninitRef,Ljava/lang/Thread;);
    new-instance v6, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v7, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v7}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #v7=(Reference,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v6, v3, v7}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v6=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1569
    .local v4, trackingThread:Ljava/lang/Thread;
    #v4=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1571
    .end local v3           #t:Ljava/lang/String;
    .end local v4           #trackingThread:Ljava/lang/Thread;
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 1573
    :cond_4
    #v0=(Conflicted);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1574
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_0

    .line 1575
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v0, v6}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_2

    .line 1581
    .end local v0           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_5
    #v0=(Conflicted);v5=(Boolean);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 1582
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1583
    .local v1, mIntent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, packageName:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1585
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1586
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public getAutoplay()Z
    .locals 1

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    #v0=(Boolean);
    return v0
.end method

.method loadPreload()V
    .locals 4

    .prologue
    .line 1550
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Action$1;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action$1;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1561
    .local v0, preloadHTML:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    return-void
.end method

.method loadUrl()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 1597
    :try_start_0
    #v10=(One);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, ""

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 1653
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 1599
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Reference,Ljava/lang/String;);v10=(One);v11=(Uninit);v12=(Uninit);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1605
    .local v7, uri:Landroid/net/Uri;
    #v7=(Reference,Landroid/net/Uri;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v9, "mobclix://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, tmp:[Ljava/lang/String;
    #v6=(Reference,[Ljava/lang/String;);
    array-length v8, v6

    #v8=(Integer);
    if-gt v8, v10, :cond_2

    .line 1606
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, "mobclix%3A%2F%2F"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    #v8=(Integer);
    if-le v8, v10, :cond_4

    .line 1608
    :cond_2
    aget-object v0, v6, v10

    .line 1610
    .local v0, customAdString:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    new-instance v9, Ljava/lang/Thread;

    #v9=(UninitRef,Ljava/lang/Thread;);
    new-instance v10, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;

    #v10=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11, v12}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;)V

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;);
    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v9=(Reference,Ljava/lang/Thread;);
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V

    .line 1611
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$10(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1612
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    #v3=(Conflicted);v9=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1613
    .local v3, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v3, :cond_3

    .line 1614
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v3, v9, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V

    goto :goto_1

    .line 1600
    .end local v0           #customAdString:Ljava/lang/String;
    .end local v3           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    .end local v6           #tmp:[Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Conflicted);v9=(Conflicted);v10=(One);v11=(Uninit);v12=(Uninit);
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0

    .line 1619
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #tmp:[Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_4
    #v1=(Uninit);v6=(Reference,[Ljava/lang/String;);v7=(Reference,Landroid/net/Uri;);v8=(Integer);v9=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    #v2=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v8

    #v8=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getNativeUrls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    #v8=(Integer);
    if-lt v2, v8, :cond_5

    .line 1628
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_8

    .line 1629
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, "minimal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 1630
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1631
    .local v4, mIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1632
    .local v5, packageName:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    const-class v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1633
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "browser"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1634
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1620
    .end local v4           #mIntent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_5
    #v4=(Uninit);v5=(Uninit);v8=(Integer);v10=(One);
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getNativeUrls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_6

    .line 1622
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    const-string v8, "android.intent.action.VIEW"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1623
    .restart local v4       #mIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1619
    .end local v4           #mIntent:Landroid/content/Intent;
    :cond_6
    #v4=(Uninit);v8=(Boolean);
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1639
    :cond_7
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    const-string v8, "android.intent.action.VIEW"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1640
    .restart local v4       #mIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1652
    :goto_3
    #v5=(Conflicted);v10=(Conflicted);
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    goto/16 :goto_0

    .line 1642
    .end local v4           #mIntent:Landroid/content/Intent;
    :cond_8
    #v4=(Uninit);v5=(Uninit);v8=(Boolean);v10=(One);
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1643
    .restart local v4       #mIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1645
    .restart local v5       #packageName:Ljava/lang/String;
    :try_start_1
    #v5=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    const-string v9, "cachedHTML"

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1647
    :goto_4
    #v10=(Conflicted);
    const-class v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1648
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "browser"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1649
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1646
    :catch_1
    #v10=(Conflicted);
    move-exception v8

    goto :goto_4
.end method
