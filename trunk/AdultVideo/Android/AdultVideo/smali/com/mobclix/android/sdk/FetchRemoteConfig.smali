.class Lcom/mobclix/android/sdk/FetchRemoteConfig;
.super Landroid/os/AsyncTask;
.source "MobclixConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static running:Z


# instance fields
.field c:Lcom/mobclix/android/sdk/Mobclix;

.field private instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "MobclixConfig"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->running:Z

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    #p0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 41
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    .line 33
    return-void
.end method

.method private downloadCustomImages()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    #v14=(One);
    const/4 v8, 0x0

    .line 527
    #v8=(Null);
    sget-object v10, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    #v10=(Reference,[Ljava/lang/String;);
    array-length v11, v10

    #v11=(Integer);
    move v9, v8

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Integer);v9=(Integer);v12=(Conflicted);v13=(Conflicted);
    if-lt v9, v11, :cond_0

    .line 558
    return-void

    .line 527
    :cond_0
    aget-object v7, v10, v9

    .line 528
    .local v7, s:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    sget-object v8, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v8=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 529
    .local v1, customAdUrl:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 532
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    #v3=(UninitRef,Lorg/apache/http/impl/client/DefaultHttpClient;);
    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 535
    .local v3, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    #v3=(Reference,Lorg/apache/http/impl/client/DefaultHttpClient;);
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    #v5=(UninitRef,Lorg/apache/http/client/methods/HttpGet;);
    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 536
    .local v5, httpGet:Lorg/apache/http/client/methods/HttpGet;
    #v5=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    const-string v8, "Cookie"

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v8, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 540
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    #v6=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 543
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    #v4=(Reference,Lorg/apache/http/HttpEntity;);
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V

    .line 545
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, bmImg:Landroid/graphics/Bitmap;
    #v0=(Reference,Landroid/graphics/Bitmap;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v12=(Reference,Ljava/lang/StringBuilder;);
    const-string v13, "_mc_cached_custom_ad.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v8, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 548
    .local v2, fos:Ljava/io/FileOutputStream;
    #v2=(Reference,Ljava/io/FileOutputStream;);
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    #v12=(PosByte);
    invoke-virtual {v0, v8, v12, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 549
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v12, "CustomAdUrl"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v8, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v8, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    const/4 v12, 0x1

    #v12=(One);
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    #v12=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0           #bmImg:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    add-int/lit8 v8, v9, 0x1

    #v8=(Integer);
    move v9, v8

    goto/16 :goto_0

    .line 555
    :cond_1
    #v8=(Boolean);
    sget-object v8, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    #v8=(Reference,Ljava/util/HashMap;);
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    #v12=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 553
    :catch_0
    #v8=(Conflicted);v12=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method private getConfigUrl(Z)Ljava/lang/String;
    .locals 7
    .parameter "usePref"

    .prologue
    .line 466
    iget-object v4, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v0, v4, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 467
    .local v0, configServer:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v1, data:Ljava/lang/StringBuffer;
    :try_start_0
    #v1=(Reference,Ljava/lang/StringBuffer;);
    const-string v4, "ConfigServer"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 470
    const-string v4, "ConfigServer"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_0
    #v4=(Conflicted);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v4, "?p=android"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v4, "&a="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v4, "&m="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    const-string v4, "&v="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v4, "&d="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v4, "&dm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    const-string v4, "&dv="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v4, "&hwdm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v4, "&g="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    iget-object v4, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 482
    const-string v4, "&ll="

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_1
    #v4=(Conflicted);
    const-string v4, "offlineSessions"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 486
    :try_start_1
    const-string v4, "&off="

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "offlineSessions"

    invoke-static {v5}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 489
    :cond_2
    :goto_0
    :try_start_2
    #v4=(Conflicted);
    const-string v4, "totalSessionTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 491
    :try_start_3
    const-string v4, "&st="

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "totalSessionTime"

    invoke-static {v5}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 494
    :cond_3
    :goto_1
    :try_start_4
    #v4=(Conflicted);
    const-string v4, "totalIdleTime"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 496
    :try_start_5
    const-string v4, "&it="

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "totalIdleTime"

    invoke-static {v5}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 501
    :cond_4
    :goto_2
    :try_start_6
    #v4=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 502
    const-string v4, "&pd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    :cond_5
    const-string v4, "&mcc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMcc()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const-string v4, "&mnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMnc()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    iget-object v4, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    iget-boolean v4, v4, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 506
    const-string v4, "&new=true"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 508
    :cond_6
    :try_start_7
    #v4=(Conflicted);
    const-string v4, "MCReferralData"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 509
    const-string v4, "MCReferralData"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, referral:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 511
    const-string v4, "&r="

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 519
    .end local v3           #referral:Ljava/lang/String;
    :cond_7
    :goto_3
    :try_start_8
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v4

    .line 521
    :goto_4
    #v2=(Conflicted);v4=(Reference,Ljava/lang/String;);v5=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 520
    :catch_0
    #v2=(Uninit);v4=(Conflicted);
    move-exception v2

    .line 521
    .local v2, e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_4

    .line 514
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    #v2=(Uninit);v4=(Conflicted);v5=(Reference,Ljava/lang/String;);v6=(Reference,Ljava/lang/String;);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 497
    :catch_2
    #v3=(Uninit);v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 492
    :catch_3
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 487
    :catch_4
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/FetchRemoteConfig;->doInBackground([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    #v0=(Reference,Lorg/json/JSONArray;);
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 40
    .parameter "strings"

    .prologue
    .line 44
    sget-boolean v34, Lcom/mobclix/android/sdk/FetchRemoteConfig;->running:Z

    #v34=(Boolean);
    if-eqz v34, :cond_0

    .line 45
    const/4 v6, 0x0

    .line 353
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Lorg/json/JSONArray;);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    return-object v6

    .line 47
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v35=(Uninit);v36=(Uninit);v37=(Uninit);v38=(Uninit);v39=(Uninit);
    const/16 v34, 0x1

    #v34=(One);
    sput-boolean v34, Lcom/mobclix/android/sdk/FetchRemoteConfig;->running:Z

    .line 49
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    if-nez v34, :cond_1

    .line 50
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    #v1=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iput-object v0, v1, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 52
    :cond_1
    #v1=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    sget-object v35, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    #v35=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v34 .. v35}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 53
    .local v22, instrPath:Ljava/lang/String;
    #v22=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "config"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v35

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "update_session"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 59
    const/4 v6, 0x0

    .line 61
    .local v6, appAlerts:Lorg/json/JSONArray;
    #v6=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "update"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "parse_cache"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "load_misc_settings"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 66
    :try_start_0
    const-string v34, "deviceId"

    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_c

    .line 67
    const-string v34, "deviceId"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 68
    .local v25, prefDeviceId:Ljava/lang/String;
    #v25=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    #v34=(Boolean);
    if-nez v34, :cond_2

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v25           #prefDeviceId:Ljava/lang/String;
    :cond_2
    :goto_1
    #v0=(Conflicted);v25=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    const-string v34, "idleTimeout"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_3

    .line 78
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "idleTimeout"

    #v35=(Reference,Ljava/lang/String;);
    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    #v35=(Integer);
    move/from16 v0, v35

    #v0=(Integer);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    .line 79
    :cond_3
    #v0=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    const-string v34, "pollTime"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_4

    .line 80
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "pollTime"

    #v35=(Reference,Ljava/lang/String;);
    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    #v35=(Integer);
    move/from16 v0, v35

    #v0=(Integer);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 82
    :cond_4
    #v0=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "load_adunits"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 85
    sget-object v35, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    move-object/from16 v0, v35

    array-length v0, v0

    #v0=(Integer);
    move/from16 v36, v0

    #v36=(Integer);
    const/16 v34, 0x0

    :goto_2
    #v0=(Conflicted);v10=(Conflicted);v13=(Conflicted);v16=(Conflicted);v29=(Conflicted);v34=(Integer);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    move/from16 v0, v34

    #v0=(Integer);
    move/from16 v1, v36

    #v1=(Integer);
    if-lt v0, v1, :cond_d

    .line 114
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 117
    const/4 v7, 0x1

    .line 121
    .local v7, attempt:I
    :goto_3
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Lorg/json/JSONArray;);v7=(Integer);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v34

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    #v0=(Integer);
    move/from16 v34, v0

    #v34=(Integer);
    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v34

    move/from16 v1, v35

    #v1=(One);
    if-ne v0, v1, :cond_10

    .line 308
    :cond_5
    #v1=(Conflicted);v35=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v34

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    #v0=(Integer);
    move/from16 v34, v0

    #v34=(Integer);
    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v34

    move/from16 v1, v35

    #v1=(One);
    if-eq v0, v1, :cond_b

    .line 309
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    const-string v35, "parse_cache"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "load_urls"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 311
    const-string v34, "ConfigServer"

    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_6

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "ConfigServer"

    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 313
    :cond_6
    #v34=(Conflicted);
    const-string v34, "AdServer"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_7

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "AdServer"

    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 315
    :cond_7
    #v34=(Conflicted);
    const-string v34, "AnalyticsServer"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "AnalyticsServer"

    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 317
    :cond_8
    #v34=(Conflicted);
    const-string v34, "VcServer"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_9

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "VcServer"

    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 319
    :cond_9
    #v34=(Conflicted);
    const-string v34, "FeedbackServer"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_a

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const-string v35, "FeedbackServer"

    invoke-static/range {v35 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 321
    :cond_a
    #v34=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v35

    #v0=(One);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 322
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    #v0=(One);
    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    .line 324
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 342
    :cond_b
    #v0=(Conflicted);v1=(Conflicted);v34=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    sget-object v35, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    #v35=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v34 .. v35}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->sync()V

    .line 351
    const/16 v34, 0x0

    #v34=(Null);
    sput-boolean v34, Lcom/mobclix/android/sdk/FetchRemoteConfig;->running:Z

    goto/16 :goto_0

    .line 72
    .end local v7           #attempt:I
    :cond_c
    :try_start_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Boolean);v36=(Uninit);v37=(Uninit);v38=(Uninit);v39=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v35

    #v0=(One);
    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    .line 73
    const-string v34, "deviceId"

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    #v35=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 75
    :catch_0
    #v0=(Conflicted);v25=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-exception v34

    #v34=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 85
    :cond_d
    #v0=(Integer);v1=(Integer);v10=(Conflicted);v13=(Conflicted);v16=(Conflicted);v29=(Conflicted);v34=(Integer);v35=(Reference,[Ljava/lang/String;);v36=(Integer);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    aget-object v29, v35, v34

    .line 86
    .local v29, s:Ljava/lang/String;
    #v29=(Reference,Ljava/lang/String;);
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v37

    #v37=(Boolean);
    if-eqz v37, :cond_e

    .line 87
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, c:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    const-string v37, ","

    #v37=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v37

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, cs:[Ljava/lang/String;
    :try_start_2
    #v13=(Reference,[Ljava/lang/String;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    const/16 v38, 0x0

    #v38=(Null);
    aget-object v38, v13, v38

    #v38=(Reference,Ljava/lang/String;);
    const-string v39, "true"

    #v39=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    #v38=(Boolean);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    :goto_4
    :try_start_3
    #v39=(Conflicted);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    const/16 v38, 0x1

    #v38=(One);
    aget-object v38, v13, v38

    #v38=(Reference,Ljava/lang/String;);
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    #v38=(LongLo);v39=(LongHi);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    :goto_5
    :try_start_4
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    const/16 v38, 0x2

    #v38=(PosByte);
    aget-object v38, v13, v38

    #v38=(Reference,Ljava/lang/String;);
    const-string v39, "true"

    #v39=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    #v38=(Boolean);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 95
    :goto_6
    :try_start_5
    #v39=(Conflicted);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    const/16 v38, 0x3

    #v38=(PosByte);
    aget-object v38, v13, v38

    #v38=(Reference,Ljava/lang/String;);
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    #v38=(LongLo);v39=(LongHi);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 97
    :goto_7
    :try_start_6
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    const/16 v38, 0x4

    #v38=(PosByte);
    aget-object v38, v13, v38

    #v38=(Reference,Ljava/lang/String;);
    const-string v39, "true"

    #v39=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    #v38=(Boolean);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 106
    .end local v10           #c:Ljava/lang/String;
    .end local v13           #cs:[Ljava/lang/String;
    :goto_8
    #v10=(Conflicted);v13=(Conflicted);v39=(Conflicted);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    const/16 v38, 0x0

    #v38=(Null);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v37, Ljava/lang/StringBuilder;

    #v37=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v37=(Reference,Ljava/lang/StringBuilder;);
    const-string v38, "CustomAdUrl"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v37

    #v37=(Boolean);
    if-eqz v37, :cond_f

    .line 108
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v37=(Reference,Ljava/util/HashMap;);
    new-instance v38, Ljava/lang/StringBuilder;

    #v38=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    #v39=(Reference,Ljava/lang/String;);
    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v38=(Reference,Ljava/lang/StringBuilder;);
    const-string v39, "CustomAdUrl"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_9
    #v39=(Conflicted);
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .line 90
    .restart local v10       #c:Ljava/lang/String;
    .restart local v13       #cs:[Ljava/lang/String;
    :catch_1
    #v1=(Conflicted);v10=(Reference,Ljava/lang/String;);v13=(Reference,[Ljava/lang/String;);v38=(Conflicted);
    move-exception v16

    .local v16, e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    const/16 v38, 0x1

    #v38=(One);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 92
    .end local v16           #e:Ljava/lang/Exception;
    :catch_2
    #v16=(Conflicted);v38=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    const-wide/16 v38, 0x7530

    #v38=(LongLo);v39=(LongHi);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 94
    .end local v16           #e:Ljava/lang/Exception;
    :catch_3
    #v16=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    const/16 v38, 0x0

    #v38=(Null);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 96
    .end local v16           #e:Ljava/lang/Exception;
    :catch_4
    #v16=(Conflicted);v38=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    const-wide/32 v38, 0x1d4c0

    #v38=(LongLo);v39=(LongHi);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 98
    .end local v16           #e:Ljava/lang/Exception;
    :catch_5
    #v16=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    const/16 v38, 0x1

    #v38=(One);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 100
    .end local v10           #c:Ljava/lang/String;
    .end local v13           #cs:[Ljava/lang/String;
    .end local v16           #e:Ljava/lang/Exception;
    :cond_e
    #v0=(Integer);v1=(Integer);v10=(Conflicted);v13=(Conflicted);v16=(Conflicted);v37=(Boolean);v38=(Conflicted);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    #v37=(Reference,Ljava/util/HashMap;);
    const/16 v38, 0x1

    #v38=(One);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    #v0=(Reference,Ljava/util/HashMap;);
    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    const-wide/16 v38, 0x7530

    #v38=(LongLo);v39=(LongHi);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    const/16 v38, 0x0

    #v38=(Null);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    const-wide/32 v38, 0x1d4c0

    #v38=(LongLo);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    const/16 v38, 0x1

    #v38=(One);
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    #v38=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 110
    :cond_f
    #v37=(Boolean);v39=(Conflicted);
    sget-object v37, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v37=(Reference,Ljava/util/HashMap;);
    const-string v38, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 123
    .end local v29           #s:Ljava/lang/String;
    .restart local v7       #attempt:I
    :cond_10
    #v0=(Integer);v1=(One);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Lorg/json/JSONArray;);v7=(Integer);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v35=(One);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    new-instance v35, Ljava/lang/StringBuilder;

    #v35=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v36, "attempt_"

    #v36=(Reference,Ljava/lang/String;);
    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v35=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "build_request"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 126
    const/16 v34, 0x1

    #v34=(One);
    move/from16 v0, v34

    #v0=(One);
    if-ne v7, v0, :cond_15

    const/16 v34, 0x1

    :goto_a
    #v34=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    move/from16 v1, v34

    #v1=(Boolean);
    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/FetchRemoteConfig;->getConfigUrl(Z)Ljava/lang/String;

    move-result-object v34

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    #v1=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iput-object v0, v1, Lcom/mobclix/android/sdk/FetchRemoteConfig;->url:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "send_request"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 131
    const-string v27, ""

    .line 132
    .local v27, response:Ljava/lang/String;
    #v27=(Reference,Ljava/lang/String;);
    const/4 v11, 0x0

    .line 133
    .local v11, con:Ljava/net/HttpURLConnection;
    #v11=(Null);
    const/4 v9, 0x0

    .line 136
    .local v9, br:Ljava/io/BufferedReader;
    :try_start_7
    #v9=(Null);
    new-instance v18, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    #v18=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->url:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v18

    #v0=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 138
    .local v18, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    invoke-virtual/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 139
    .local v20, httpResponse:Lorg/apache/http/HttpResponse;
    #v20=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 140
    .local v19, httpEntity:Lorg/apache/http/HttpEntity;
    #v19=(Reference,Lorg/apache/http/HttpEntity;);
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    .line 142
    .local v28, responseCode:I
    #v28=(Integer);
    const/16 v34, 0xc8

    #v34=(PosShort);
    move/from16 v0, v28

    #v0=(Integer);
    move/from16 v1, v34

    #v1=(PosShort);
    if-ne v0, v1, :cond_1f

    .line 143
    new-instance v8, Ljava/io/BufferedReader;

    #v8=(UninitRef,Ljava/io/BufferedReader;);
    new-instance v34, Ljava/io/InputStreamReader;

    #v34=(UninitRef,Ljava/io/InputStreamReader;);
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #v34=(Reference,Ljava/io/InputStreamReader;);
    const/16 v35, 0x1f40

    #v35=(PosShort);
    move-object/from16 v0, v34

    #v0=(Reference,Ljava/io/InputStreamReader;);
    move/from16 v1, v35

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    .line 144
    .end local v9           #br:Ljava/io/BufferedReader;
    .local v8, br:Ljava/io/BufferedReader;
    :try_start_8
    #v8=(Reference,Ljava/io/BufferedReader;);
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    .line 145
    .local v30, tmp:Ljava/lang/String;
    :goto_b
    #v1=(Conflicted);v30=(Reference,Ljava/lang/String;);v35=(Conflicted);
    if-nez v30, :cond_16

    .line 149
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "handle_response"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 153
    const-string v34, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result v34

    #v34=(Boolean);
    if-nez v34, :cond_13

    .line 157
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    const-string v35, "decode_json"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 158
    new-instance v12, Lorg/json/JSONObject;

    #v12=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v12, config:Lorg/json/JSONObject;
    #v12=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "save_json"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "raw_config_json"

    sget-object v36, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "decoded_config_json"

    sget-object v36, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v12, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "load_config"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 167
    const-string v34, "urls"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 168
    .local v31, urls:Lorg/json/JSONObject;
    #v31=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "config"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "ads"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "analytics"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "vc"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "feedback"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "debug"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix;->debugServer:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "idle_timeout"

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    #v35=(Integer);
    move/from16 v0, v35

    #v0=(Integer);
    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 176
    :try_start_a
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const-string v35, "poll_time"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    #v35=(Integer);
    move/from16 v0, v35

    #v0=(Integer);
    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    .line 179
    :goto_c
    :try_start_b
    #v0=(Conflicted);v35=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    #v35=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v35

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    #v0=(Integer);
    move/from16 v35, v0

    #v35=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    #v0=(Integer);
    move/from16 v36, v0

    #v36=(Integer);
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 181
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    const-string v35, "set_default_values"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 182
    new-instance v26, Ljava/util/HashMap;

    #v26=(UninitRef,Ljava/util/HashMap;);
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v26, rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v26=(Reference,Ljava/util/HashMap;);
    const-string v34, "ConfigServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v34, "AdServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v34, "AnalyticsServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v34, "VcServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v34, "FeedbackServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v34, "idleTimeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    #v0=(Integer);
    move/from16 v35, v0

    #v35=(Integer);
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    #v0=(Reference,Ljava/util/HashMap;);
    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v34, "pollTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    #v0=(Integer);
    move/from16 v35, v0

    #v35=(Integer);
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    #v0=(Reference,Ljava/util/HashMap;);
    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v34, "ad_units"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 193
    .local v5, adUnits:Lorg/json/JSONArray;
    #v5=(Reference,Lorg/json/JSONArray;);
    const/16 v21, 0x0

    .local v21, i:I
    :goto_d
    #v21=(Integer);v36=(Conflicted);
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-result v34

    #v34=(Integer);
    move/from16 v0, v21

    #v0=(Integer);
    move/from16 v1, v34

    #v1=(Integer);
    if-lt v0, v1, :cond_17

    .line 226
    :try_start_c
    const-string v34, "debug_config"

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 228
    .local v15, debug:Lorg/json/JSONObject;
    #v15=(Reference,Lorg/json/JSONObject;);
    sget-object v35, Lcom/mobclix/android/sdk/MobclixInstrumentation;->MC_DEBUG_CATS:[Ljava/lang/String;

    move-object/from16 v0, v35

    array-length v0, v0

    #v0=(Integer);
    move/from16 v36, v0

    #v36=(Integer);
    const/16 v34, 0x0

    :goto_e
    #v0=(Conflicted);v1=(Conflicted);v34=(Integer);
    move/from16 v0, v34

    #v0=(Integer);
    move/from16 v1, v36

    #v1=(Integer);
    if-lt v0, v1, :cond_1c

    .line 233
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 234
    .local v14, d:Ljava/util/Iterator;
    :goto_f
    #v0=(Conflicted);v1=(Conflicted);v14=(Reference,Ljava/util/Iterator;);v34=(Conflicted);v36=(Conflicted);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-result v34

    #v34=(Boolean);
    if-nez v34, :cond_1d

    .line 248
    .end local v14           #d:Ljava/util/Iterator;
    .end local v15           #debug:Lorg/json/JSONObject;
    :goto_10
    :try_start_d
    #v14=(Conflicted);v15=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    const-string v34, "app_alerts"

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    move-result-object v6

    .line 252
    :goto_11
    :try_start_e
    #v0=(Conflicted);
    const-string v34, "native_urls"

    move-object/from16 v0, v34

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 253
    .local v24, nUrls:Lorg/json/JSONArray;
    #v24=(Reference,Lorg/json/JSONArray;);
    const/16 v21, 0x0

    :goto_12
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    move-result v34

    #v34=(Integer);
    move/from16 v0, v21

    #v0=(Integer);
    move/from16 v1, v34

    #v1=(Integer);
    if-lt v0, v1, :cond_1e

    .line 258
    .end local v24           #nUrls:Lorg/json/JSONArray;
    :goto_13
    :try_start_f
    #v0=(Conflicted);v1=(Conflicted);v24=(Conflicted);v34=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    .line 259
    const-string v34, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    #v35=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_11
    #v35=(Conflicted);
    const-string v34, "offlineSessions"

    const-string v35, "0"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v34, "totalSessionTime"

    const-string v35, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v34, "totalIdleTime"

    const-string v35, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 266
    const-string v34, "MCReferralData"

    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_12

    .line 267
    const-string v34, "MCReferralData"

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;)V

    .line 270
    :cond_12
    #v34=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #v35=(Null);
    move/from16 v0, v35

    #v0=(Null);
    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    .line 275
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v35

    #v0=(One);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 294
    .end local v5           #adUnits:Lorg/json/JSONArray;
    .end local v12           #config:Lorg/json/JSONObject;
    .end local v21           #i:I
    .end local v26           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30           #tmp:Ljava/lang/String;
    .end local v31           #urls:Lorg/json/JSONObject;
    :cond_13
    :goto_14
    :try_start_10
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v12=(Conflicted);v21=(Conflicted);v26=(Conflicted);v30=(Conflicted);v31=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 296
    :goto_15
    if-eqz v11, :cond_14

    .line 297
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    .end local v18           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v19           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v28           #responseCode:I
    :cond_14
    :goto_16
    #v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v28=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 303
    const/16 v34, 0x1

    #v34=(One);
    move/from16 v0, v34

    #v0=(One);
    if-gt v7, v0, :cond_5

    .line 305
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 126
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #con:Ljava/net/HttpURLConnection;
    .end local v27           #response:Ljava/lang/String;
    :cond_15
    #v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v27=(Conflicted);v35=(Reference,Ljava/lang/String;);v36=(Reference,Ljava/lang/String;);
    const/16 v34, 0x0

    #v34=(Null);
    goto/16 :goto_a

    .line 146
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v11       #con:Ljava/net/HttpURLConnection;
    .restart local v18       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v19       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v27       #response:Ljava/lang/String;
    .restart local v28       #responseCode:I
    .restart local v30       #tmp:Ljava/lang/String;
    :cond_16
    :try_start_11
    #v0=(Reference,Ljava/lang/Object;);v1=(Conflicted);v8=(Reference,Ljava/io/BufferedReader;);v9=(Null);v11=(Null);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v19=(Reference,Lorg/apache/http/HttpEntity;);v20=(Reference,Lorg/apache/http/HttpResponse;);v27=(Reference,Ljava/lang/String;);v28=(Integer);v30=(Reference,Ljava/lang/String;);v34=(Reference,Ljava/lang/Object;);v35=(Conflicted);
    new-instance v34, Ljava/lang/StringBuilder;

    #v34=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    #v35=(Reference,Ljava/lang/String;);
    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v34=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 147
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move-result-object v30

    goto/16 :goto_b

    .line 194
    .restart local v5       #adUnits:Lorg/json/JSONArray;
    .restart local v12       #config:Lorg/json/JSONObject;
    .restart local v21       #i:I
    .restart local v26       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v31       #urls:Lorg/json/JSONObject;
    :cond_17
    :try_start_12
    #v0=(Integer);v1=(Integer);v3=(Reference,Ljava/lang/String;);v5=(Reference,Lorg/json/JSONArray;);v12=(Reference,Lorg/json/JSONObject;);v21=(Integer);v26=(Reference,Ljava/util/HashMap;);v31=(Reference,Lorg/json/JSONObject;);v34=(Integer);v36=(Conflicted);
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 195
    .local v4, a:Lorg/json/JSONObject;
    #v4=(Reference,Lorg/json/JSONObject;);
    const-string v34, "size"

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v34

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 196
    .restart local v29       #s:Ljava/lang/String;
    #v29=(Reference,Ljava/lang/String;);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    const-string v35, "enabled"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    #v35=(Boolean);
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v34, "refresh"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    #v34=(LongLo);v35=(LongHi);
    const-wide/16 v36, -0x1

    #v36=(LongLo);v37=(LongHi);
    cmp-long v34, v34, v36

    #v34=(Byte);
    if-nez v34, :cond_18

    .line 198
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-wide/16 v35, -0x1

    #v35=(LongLo);v36=(LongHi);
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_17
    #v37=(Conflicted);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    const-string v35, "autoplay"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    #v35=(Boolean);
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v34, "autoplay_interval"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    #v34=(LongLo);v35=(LongHi);
    const-wide/16 v36, -0x1

    #v36=(LongLo);v37=(LongHi);
    cmp-long v34, v34, v36

    #v34=(Byte);
    if-nez v34, :cond_19

    .line 203
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-wide/16 v35, -0x1

    #v35=(LongLo);v36=(LongHi);
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_18
    #v37=(Conflicted);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    const-string v35, "autoplay"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    #v35=(Boolean);
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v35, Ljava/lang/StringBuilder;

    #v35=(UninitRef,Ljava/lang/StringBuilder;);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Boolean;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    #v34=(Boolean);
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v34

    #v34=(Reference,Ljava/lang/String;);
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);v35=(Reference,Ljava/lang/StringBuilder;);
    const-string v34, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 209
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Boolean;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    #v34=(Boolean);
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v34

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 210
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->rmRequireUser:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Boolean;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    #v34=(Boolean);
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v34

    #v34=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 208
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 213
    :try_start_13
    const-string v34, "customAdUrl"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .restart local v10       #c:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    #v34=(Boolean);
    if-eqz v34, :cond_1b

    .line 215
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 193
    .end local v10           #c:Ljava/lang/String;
    :goto_19
    #v10=(Conflicted);
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 200
    :cond_18
    :try_start_14
    #v34=(Byte);v35=(LongHi);v36=(LongLo);v37=(LongHi);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-string v35, "refresh"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    #v35=(LongLo);v36=(LongHi);
    const-wide/16 v37, 0x3e8

    #v37=(LongLo);v38=(LongHi);
    mul-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_17

    .line 281
    .end local v4           #a:Lorg/json/JSONObject;
    .end local v5           #adUnits:Lorg/json/JSONArray;
    .end local v12           #config:Lorg/json/JSONObject;
    .end local v21           #i:I
    .end local v26           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #s:Ljava/lang/String;
    .end local v31           #urls:Lorg/json/JSONObject;
    :catch_6
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v12=(Conflicted);v21=(Conflicted);v26=(Conflicted);v29=(Conflicted);v31=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);
    move-exception v16

    .line 282
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_15
    #v16=(Reference,Ljava/lang/Exception;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, -0x1

    #v35=(Byte);
    move/from16 v0, v35

    #v0=(Byte);
    move-object/from16 v1, v34

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_14

    .line 289
    .end local v16           #e:Ljava/lang/Exception;
    .end local v30           #tmp:Ljava/lang/String;
    :catch_7
    #v0=(Conflicted);v1=(Conflicted);v16=(Conflicted);v30=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-exception v16

    .line 291
    .end local v18           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v19           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v28           #responseCode:I
    .restart local v16       #e:Ljava/lang/Exception;
    :goto_1a
    :try_start_16
    #v16=(Reference,Ljava/lang/Exception;);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v28=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, -0x1

    #v35=(Byte);
    move/from16 v0, v35

    #v0=(Byte);
    move-object/from16 v1, v34

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 294
    :try_start_17
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 296
    :goto_1b
    if-eqz v11, :cond_14

    .line 297
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_16

    .line 205
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #a:Lorg/json/JSONObject;
    .restart local v5       #adUnits:Lorg/json/JSONArray;
    .restart local v12       #config:Lorg/json/JSONObject;
    .restart local v18       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v19       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #i:I
    .restart local v26       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28       #responseCode:I
    .restart local v29       #s:Ljava/lang/String;
    .restart local v30       #tmp:Ljava/lang/String;
    .restart local v31       #urls:Lorg/json/JSONObject;
    :cond_19
    :try_start_18
    #v0=(Reference,Ljava/lang/String;);v3=(Reference,Ljava/lang/String;);v4=(Reference,Lorg/json/JSONObject;);v5=(Reference,Lorg/json/JSONArray;);v12=(Reference,Lorg/json/JSONObject;);v16=(Conflicted);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v19=(Reference,Lorg/apache/http/HttpEntity;);v20=(Reference,Lorg/apache/http/HttpResponse;);v21=(Integer);v26=(Reference,Ljava/util/HashMap;);v28=(Integer);v29=(Reference,Ljava/lang/String;);v30=(Reference,Ljava/lang/String;);v31=(Reference,Lorg/json/JSONObject;);v34=(Byte);v35=(LongHi);v36=(LongLo);v37=(LongHi);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->autoplayInterval:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-string v35, "autoplay_interval"

    #v35=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    #v35=(LongLo);v36=(LongHi);
    const-wide/16 v37, 0x3e8

    #v37=(LongLo);v38=(LongHi);
    mul-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    #v35=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_18

    .line 292
    .end local v4           #a:Lorg/json/JSONObject;
    .end local v5           #adUnits:Lorg/json/JSONArray;
    .end local v12           #config:Lorg/json/JSONObject;
    .end local v18           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v19           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #i:I
    .end local v26           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28           #responseCode:I
    .end local v29           #s:Ljava/lang/String;
    .end local v30           #tmp:Ljava/lang/String;
    .end local v31           #urls:Lorg/json/JSONObject;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v12=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v26=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);
    move-exception v34

    .line 294
    :goto_1c
    :try_start_19
    #v34=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    .line 296
    :goto_1d
    if-eqz v11, :cond_1a

    .line 297
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 298
    :cond_1a
    throw v34

    .line 217
    .restart local v4       #a:Lorg/json/JSONObject;
    .restart local v5       #adUnits:Lorg/json/JSONArray;
    .restart local v10       #c:Ljava/lang/String;
    .restart local v12       #config:Lorg/json/JSONObject;
    .restart local v18       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v19       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #i:I
    .restart local v26       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28       #responseCode:I
    .restart local v29       #s:Ljava/lang/String;
    .restart local v30       #tmp:Ljava/lang/String;
    .restart local v31       #urls:Lorg/json/JSONObject;
    :cond_1b
    :try_start_1a
    #v0=(Reference,Ljava/lang/Object;);v1=(Reference,Ljava/lang/String;);v3=(Reference,Ljava/lang/String;);v4=(Reference,Lorg/json/JSONObject;);v5=(Reference,Lorg/json/JSONArray;);v10=(Reference,Ljava/lang/String;);v12=(Reference,Lorg/json/JSONObject;);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v19=(Reference,Lorg/apache/http/HttpEntity;);v20=(Reference,Lorg/apache/http/HttpResponse;);v21=(Integer);v26=(Reference,Ljava/util/HashMap;);v28=(Integer);v29=(Reference,Ljava/lang/String;);v30=(Reference,Ljava/lang/String;);v31=(Reference,Lorg/json/JSONObject;);v34=(Boolean);v35=(Reference,Ljava/lang/StringBuilder;);v36=(LongHi);
    new-instance v34, Ljava/lang/StringBuilder;

    #v34=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v34=(Reference,Ljava/lang/StringBuilder;);
    const-string v35, "CustomAdUrl"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;)V

    .line 218
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    goto/16 :goto_19

    .line 220
    .end local v10           #c:Ljava/lang/String;
    :catch_8
    #v10=(Conflicted);v34=(Conflicted);
    move-exception v16

    .line 221
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_1b
    #v16=(Reference,Ljava/lang/Exception;);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    goto/16 :goto_19

    .line 228
    .end local v4           #a:Lorg/json/JSONObject;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v29           #s:Ljava/lang/String;
    .restart local v15       #debug:Lorg/json/JSONObject;
    :cond_1c
    :try_start_1c
    #v0=(Integer);v1=(Integer);v4=(Conflicted);v15=(Reference,Lorg/json/JSONObject;);v16=(Conflicted);v29=(Conflicted);v34=(Integer);v36=(Integer);
    aget-object v32, v35, v34

    .line 230
    .local v32, v:Ljava/lang/String;
    #v32=(Reference,Ljava/lang/String;);
    new-instance v37, Ljava/lang/StringBuilder;

    #v37=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v38, "debug_"

    #v38=(Reference,Ljava/lang/String;);
    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v37=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v37

    #v0=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v1, v32

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    .line 228
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_e

    .line 236
    .end local v32           #v:Ljava/lang/String;
    .restart local v14       #d:Ljava/util/Iterator;
    :cond_1d
    :try_start_1d
    #v0=(Conflicted);v1=(Conflicted);v14=(Reference,Ljava/util/Iterator;);v32=(Conflicted);v34=(Boolean);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    #v23=(Reference,Ljava/lang/Object;);
    check-cast v23, Ljava/lang/String;

    .line 237
    .local v23, key:Ljava/lang/String;
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 238
    .local v33, value:Ljava/lang/String;
    #v33=(Reference,Ljava/lang/String;);
    sget-object v34, Lcom/mobclix/android/sdk/Mobclix;->debugConfig:Ljava/util/HashMap;

    #v34=(Reference,Ljava/util/HashMap;);
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v34, Ljava/lang/StringBuilder;

    #v34=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v35, "debug_"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v34=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    goto/16 :goto_f

    .line 241
    .end local v23           #key:Ljava/lang/String;
    .end local v33           #value:Ljava/lang/String;
    :catch_9
    #v0=(Conflicted);v1=(Conflicted);v23=(Conflicted);v33=(Conflicted);v34=(Conflicted);
    move-exception v17

    .line 242
    .local v17, e1:Ljava/lang/Exception;
    :try_start_1e
    #v17=(Reference,Ljava/lang/Exception;);
    sget-object v34, Lcom/mobclix/android/sdk/FetchRemoteConfig;->TAG:Ljava/lang/String;

    #v34=(Reference,Ljava/lang/String;);
    new-instance v35, Ljava/lang/StringBuilder;

    #v35=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v36, "ERROR: "

    #v36=(Reference,Ljava/lang/String;);
    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v35=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    goto/16 :goto_f

    .line 245
    .end local v14           #d:Ljava/util/Iterator;
    .end local v15           #debug:Lorg/json/JSONObject;
    .end local v17           #e1:Ljava/lang/Exception;
    :catch_a
    #v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move-exception v34

    #v34=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_10

    .line 254
    .restart local v24       #nUrls:Lorg/json/JSONArray;
    :cond_1e
    :try_start_1f
    #v0=(Integer);v1=(Integer);v24=(Reference,Lorg/json/JSONArray;);v34=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->nativeUrls:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    #v35=(Reference,Ljava/lang/String;);
    invoke-interface/range {v34 .. v35}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    .line 253
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_12

    .line 287
    .end local v5           #adUnits:Lorg/json/JSONArray;
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v12           #config:Lorg/json/JSONObject;
    .end local v21           #i:I
    .end local v24           #nUrls:Lorg/json/JSONArray;
    .end local v26           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30           #tmp:Ljava/lang/String;
    .end local v31           #urls:Lorg/json/JSONObject;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :cond_1f
    :try_start_20
    #v0=(Integer);v1=(PosShort);v3=(Conflicted);v5=(Conflicted);v8=(Conflicted);v12=(Conflicted);v21=(Conflicted);v24=(Conflicted);v26=(Conflicted);v30=(Conflicted);v31=(Conflicted);v34=(PosShort);v36=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, -0x1

    #v35=(Byte);
    move/from16 v0, v35

    #v0=(Byte);
    move-object/from16 v1, v34

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    #v8=(Null);
    goto/16 :goto_14

    .line 295
    .end local v18           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v19           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v28           #responseCode:I
    .restart local v16       #e:Ljava/lang/Exception;
    :catch_b
    #v8=(Reference,Ljava/io/BufferedReader;);v16=(Reference,Ljava/lang/Exception;);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v28=(Conflicted);v36=(Conflicted);
    move-exception v16

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v35

    #v0=(Byte);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    goto/16 :goto_1b

    .end local v16           #e:Ljava/lang/Exception;
    :catch_c
    #v0=(Conflicted);v1=(Conflicted);v16=(Conflicted);v35=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v35, v0

    #v35=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v36, -0x1

    #v36=(Byte);
    move/from16 v0, v36

    #v0=(Byte);
    move-object/from16 v1, v35

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    goto/16 :goto_1d

    .end local v16           #e:Ljava/lang/Exception;
    .restart local v18       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v19       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v28       #responseCode:I
    :catch_d
    #v0=(Conflicted);v16=(Conflicted);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v19=(Reference,Lorg/apache/http/HttpEntity;);v20=(Reference,Lorg/apache/http/HttpResponse;);v28=(Integer);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    #v16=(Reference,Ljava/lang/Exception;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v34, v0

    #v34=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    const/16 v35, -0x1

    #v35=(Byte);
    move/from16 v0, v35

    #v0=(Byte);
    move-object/from16 v1, v34

    iput v0, v1, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    goto/16 :goto_15

    .line 292
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v18           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v19           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v28           #responseCode:I
    .restart local v9       #br:Ljava/io/BufferedReader;
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v28=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Reference,Ljava/lang/String;);
    move-exception v34

    #v34=(Reference,Ljava/lang/Throwable;);
    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    #v8=(Null);
    goto/16 :goto_1c

    .line 289
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :catch_e
    #v8=(Conflicted);v34=(Conflicted);
    move-exception v16

    #v16=(Reference,Ljava/lang/Exception;);
    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    #v8=(Null);
    goto/16 :goto_1a

    .line 256
    .restart local v5       #adUnits:Lorg/json/JSONArray;
    .restart local v12       #config:Lorg/json/JSONObject;
    .restart local v18       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v19       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #i:I
    .restart local v26       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28       #responseCode:I
    .restart local v30       #tmp:Ljava/lang/String;
    .restart local v31       #urls:Lorg/json/JSONObject;
    :catch_f
    #v3=(Reference,Ljava/lang/String;);v5=(Reference,Lorg/json/JSONArray;);v8=(Reference,Ljava/io/BufferedReader;);v12=(Reference,Lorg/json/JSONObject;);v16=(Conflicted);v18=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v19=(Reference,Lorg/apache/http/HttpEntity;);v20=(Reference,Lorg/apache/http/HttpResponse;);v21=(Integer);v26=(Reference,Ljava/util/HashMap;);v28=(Integer);v30=(Reference,Ljava/lang/String;);v31=(Reference,Lorg/json/JSONObject;);v36=(Conflicted);
    move-exception v34

    #v34=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_13

    .line 249
    :catch_10
    #v34=(Conflicted);
    move-exception v34

    #v34=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_11

    .line 177
    .end local v5           #adUnits:Lorg/json/JSONArray;
    .end local v21           #i:I
    .end local v26           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_11
    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);v5=(Conflicted);v21=(Conflicted);v26=(Conflicted);v36=(Reference,Ljava/lang/String;);
    move-exception v34

    goto/16 :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/FetchRemoteConfig;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 28
    .parameter "appAlerts"

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 462
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    return-void

    .line 358
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Integer);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v24

    #v24=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    if-ge v11, v0, :cond_0

    .line 361
    :try_start_0
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 362
    .local v2, a:Lorg/json/JSONObject;
    #v2=(Reference,Lorg/json/JSONObject;);
    const-string v24, "id"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, id:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    if-eqz v12, :cond_2

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_3

    .line 358
    .end local v2           #a:Lorg/json/JSONObject;
    .end local v12           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v12=(Conflicted);v24=(Conflicted);
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 367
    .restart local v2       #a:Lorg/json/JSONObject;
    .restart local v12       #id:Ljava/lang/String;
    :cond_3
    #v0=(Reference,Ljava/lang/String;);v2=(Reference,Lorg/json/JSONObject;);v12=(Reference,Ljava/lang/String;);v24=(Boolean);
    const/16 v19, 0x0

    .line 368
    .local v19, timesShown:I
    #v19=(Null);
    const-wide/16 v14, 0x0

    .line 369
    .local v14, lastTimeShown:J
    #v14=(LongLo);v15=(LongHi);
    new-instance v24, Ljava/lang/StringBuilder;

    #v24=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v25, "MCAppAlert"

    #v25=(Reference,Ljava/lang/String;);
    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v24=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, appAlertPref:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_4

    .line 371
    const-string v24, ","

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 372
    .local v6, appAlertPrefs:[Ljava/lang/String;
    #v6=(Reference,[Ljava/lang/String;);
    const/16 v24, 0x0

    :try_start_1
    #v24=(Null);
    aget-object v24, v6, v24

    #v24=(Reference,Ljava/lang/String;);
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result v19

    .line 373
    :goto_2
    #v19=(Integer);
    const/16 v24, 0x1

    :try_start_2
    #v24=(One);
    aget-object v24, v6, v24

    #v24=(Reference,Ljava/lang/String;);
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-wide v14

    .line 376
    .end local v6           #appAlertPrefs:[Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_3
    #v6=(Conflicted);v24=(Conflicted);
    const-string v24, "title"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 377
    .local v20, title:Ljava/lang/String;
    #v20=(Reference,Ljava/lang/String;);
    if-eqz v20, :cond_2

    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_2

    const-string v24, "null"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_2

    .line 379
    const/16 v17, 0x0

    .line 381
    .local v17, message:Ljava/lang/String;
    :try_start_4
    #v17=(Null);
    const-string v24, "message"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 382
    #v17=(Reference,Ljava/lang/String;);
    if-eqz v17, :cond_5

    const-string v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_5

    const-string v24, "null"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_6

    .line 383
    :cond_5
    #v24=(Conflicted);
    const/16 v17, 0x0

    .line 385
    :cond_6
    :goto_4
    const/16 v16, 0x0

    .line 387
    .local v16, maxDisplays:I
    :try_start_5
    #v16=(Null);
    const-string v24, "max_displays"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v16

    .line 389
    :goto_5
    #v16=(Integer);
    if-eqz v16, :cond_7

    move/from16 v0, v19

    #v0=(Integer);
    move/from16 v1, v16

    #v1=(Integer);
    if-ge v0, v1, :cond_2

    .line 391
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);
    const-wide/16 v9, 0x0

    .line 393
    .local v9, displayInterval:J
    :try_start_6
    #v9=(LongLo);v10=(LongHi);
    const-string v24, "display_interval"

    move-object/from16 v0, v24

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v24

    #v24=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v24, v0

    #v24=(LongLo);v25=(LongHi);
    const-wide/16 v26, 0x3e8

    #v26=(LongLo);v27=(LongHi);
    mul-long v9, v24, v26

    .line 395
    :goto_6
    #v0=(Conflicted);v1=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    const-wide/16 v24, 0x0

    #v24=(LongLo);v25=(LongHi);
    cmp-long v24, v9, v24

    #v24=(Byte);
    if-eqz v24, :cond_8

    add-long v24, v14, v9

    :try_start_7
    #v24=(LongLo);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    #v26=(LongLo);v27=(LongHi);
    cmp-long v24, v24, v26

    #v24=(Byte);
    if-gez v24, :cond_2

    .line 397
    :cond_8
    #v26=(Conflicted);v27=(Conflicted);
    const-string v24, "target_versions"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 398
    .local v23, versions:Lorg/json/JSONArray;
    #v23=(Reference,Lorg/json/JSONArray;);
    const/16 v18, 0x0

    .line 399
    .local v18, targeted:Z
    #v18=(Null);
    const/4 v13, 0x0

    .local v13, j:I
    :goto_7
    #v13=(Integer);v18=(Boolean);v24=(Conflicted);v25=(Conflicted);
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v24

    #v24=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    if-lt v13, v0, :cond_14

    .line 407
    if-eqz v18, :cond_2

    .line 409
    const/4 v3, 0x0

    .line 411
    .local v3, actionButton:Ljava/lang/String;
    :try_start_8
    #v3=(Null);
    const-string v24, "action_button"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    #v3=(Reference,Ljava/lang/String;);
    if-eqz v3, :cond_9

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_9

    const-string v24, "null"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_a

    .line 413
    :cond_9
    #v24=(Conflicted);
    const/4 v3, 0x0

    .line 415
    :cond_a
    :goto_8
    #v0=(Conflicted);
    const/4 v4, 0x0

    .line 417
    .local v4, actionUrl:Ljava/lang/String;
    :try_start_9
    #v4=(Null);
    const-string v24, "action_url"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    #v4=(Reference,Ljava/lang/String;);
    if-eqz v4, :cond_b

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_b

    const-string v24, "null"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_c

    .line 419
    :cond_b
    #v24=(Conflicted);
    const/4 v4, 0x0

    .line 421
    :cond_c
    :goto_9
    #v0=(Conflicted);
    if-eqz v4, :cond_d

    if-eqz v3, :cond_2

    .line 422
    :cond_d
    const/4 v8, 0x0

    .line 424
    .local v8, dismissButton:Ljava/lang/String;
    :try_start_a
    #v8=(Null);
    const-string v24, "dismiss_button"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 425
    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_e

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    #v24=(Boolean);
    if-nez v24, :cond_e

    const-string v24, "null"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_f

    .line 426
    :cond_e
    #v24=(Conflicted);
    const/4 v8, 0x0

    .line 428
    :cond_f
    :goto_a
    #v0=(Conflicted);
    if-nez v4, :cond_10

    if-eqz v8, :cond_2

    .line 430
    :cond_10
    :try_start_b
    new-instance v7, Landroid/app/AlertDialog$Builder;

    #v7=(UninitRef,Landroid/app/AlertDialog$Builder;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    #v7=(Reference,Landroid/app/AlertDialog$Builder;);
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    const/16 v24, 0x0

    #v24=(Null);
    move/from16 v0, v24

    #v0=(Null);
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 433
    if-eqz v17, :cond_11

    .line 434
    move-object/from16 v0, v17

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    :cond_11
    if-eqz v4, :cond_12

    .line 436
    new-instance v24, Lcom/mobclix/android/sdk/FetchRemoteConfig$1;

    #v24=(UninitRef,Lcom/mobclix/android/sdk/FetchRemoteConfig$1;);
    move-object/from16 v0, v24

    #v0=(UninitRef,Lcom/mobclix/android/sdk/FetchRemoteConfig$1;);
    move-object/from16 v1, p0

    #v1=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    invoke-direct {v0, v1, v4}, Lcom/mobclix/android/sdk/FetchRemoteConfig$1;-><init>(Lcom/mobclix/android/sdk/FetchRemoteConfig;Ljava/lang/Object;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$1;);v24=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$1;);
    move-object/from16 v0, v24

    invoke-virtual {v7, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    :cond_12
    #v1=(Conflicted);
    if-eqz v8, :cond_13

    .line 446
    new-instance v24, Lcom/mobclix/android/sdk/FetchRemoteConfig$2;

    #v24=(UninitRef,Lcom/mobclix/android/sdk/FetchRemoteConfig$2;);
    move-object/from16 v0, v24

    #v0=(UninitRef,Lcom/mobclix/android/sdk/FetchRemoteConfig$2;);
    move-object/from16 v1, p0

    #v1=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig;);
    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/FetchRemoteConfig$2;-><init>(Lcom/mobclix/android/sdk/FetchRemoteConfig;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$2;);v24=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$2;);
    move-object/from16 v0, v24

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    :cond_13
    #v1=(Conflicted);
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 456
    add-int/lit8 v19, v19, 0x1

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 458
    new-instance v24, Ljava/lang/StringBuilder;

    #v24=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v25, "MCAppAlert"

    #v25=(Reference,Ljava/lang/String;);
    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v24=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    #v25=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    #v26=(Reference,Ljava/lang/String;);
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v25=(Reference,Ljava/lang/StringBuilder;);
    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 459
    .end local v2           #a:Lorg/json/JSONObject;
    .end local v3           #actionButton:Ljava/lang/String;
    .end local v4           #actionUrl:Ljava/lang/String;
    .end local v5           #appAlertPref:Ljava/lang/String;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #dismissButton:Ljava/lang/String;
    .end local v9           #displayInterval:J
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #j:I
    .end local v14           #lastTimeShown:J
    .end local v16           #maxDisplays:I
    .end local v17           #message:Ljava/lang/String;
    .end local v18           #targeted:Z
    .end local v19           #timesShown:I
    .end local v20           #title:Ljava/lang/String;
    .end local v23           #versions:Lorg/json/JSONArray;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 401
    .restart local v2       #a:Lorg/json/JSONObject;
    .restart local v5       #appAlertPref:Ljava/lang/String;
    .restart local v9       #displayInterval:J
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #j:I
    .restart local v14       #lastTimeShown:J
    .restart local v16       #maxDisplays:I
    .restart local v17       #message:Ljava/lang/String;
    .restart local v18       #targeted:Z
    .restart local v19       #timesShown:I
    .restart local v20       #title:Ljava/lang/String;
    .restart local v23       #versions:Lorg/json/JSONArray;
    :cond_14
    :try_start_c
    #v0=(Integer);v2=(Reference,Lorg/json/JSONObject;);v5=(Reference,Ljava/lang/String;);v9=(LongLo);v10=(LongHi);v12=(Reference,Ljava/lang/String;);v13=(Integer);v14=(LongLo);v15=(LongHi);v16=(Integer);v17=(Reference,Ljava/lang/String;);v18=(Boolean);v19=(Integer);v20=(Reference,Ljava/lang/String;);v23=(Reference,Lorg/json/JSONArray;);v24=(Integer);
    move-object/from16 v0, v23

    #v0=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 402
    .local v22, version:Ljava/lang/String;
    #v22=(Reference,Ljava/lang/String;);
    const-string v24, "\\*"

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    #v25=(Null);
    aget-object v21, v24, v25

    .line 403
    .local v21, v:Ljava/lang/String;
    #v21=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/FetchRemoteConfig;->c:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    #v26=(Integer);
    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-result v24

    #v24=(Boolean);
    if-eqz v24, :cond_15

    .line 404
    const/16 v18, 0x1

    .line 399
    .end local v21           #v:Ljava/lang/String;
    .end local v22           #version:Ljava/lang/String;
    :cond_15
    :goto_b
    #v1=(Conflicted);v21=(Conflicted);v22=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 427
    .restart local v3       #actionButton:Ljava/lang/String;
    .restart local v4       #actionUrl:Ljava/lang/String;
    .restart local v8       #dismissButton:Ljava/lang/String;
    :catch_1
    #v0=(Conflicted);v3=(Reference,Ljava/lang/String;);v4=(Reference,Ljava/lang/String;);v8=(Reference,Ljava/lang/String;);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_a

    .line 420
    .end local v8           #dismissButton:Ljava/lang/String;
    :catch_2
    #v8=(Conflicted);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_9

    .line 414
    .end local v4           #actionUrl:Ljava/lang/String;
    :catch_3
    #v4=(Conflicted);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_8

    .line 405
    .end local v3           #actionButton:Ljava/lang/String;
    :catch_4
    #v0=(Reference,Ljava/lang/Object;);v3=(Conflicted);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto :goto_b

    .line 394
    .end local v13           #j:I
    .end local v18           #targeted:Z
    .end local v23           #versions:Lorg/json/JSONArray;
    :catch_5
    #v0=(Conflicted);v13=(Conflicted);v18=(Conflicted);v23=(Conflicted);v25=(Reference,Ljava/lang/String;);
    move-exception v24

    goto/16 :goto_6

    .line 388
    .end local v9           #displayInterval:J
    :catch_6
    #v0=(Reference,Ljava/lang/String;);v1=(Reference,Ljava/lang/String;);v9=(Conflicted);v10=(Conflicted);v16=(Null);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_5

    .line 384
    .end local v16           #maxDisplays:I
    :catch_7
    #v16=(Conflicted);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_4

    .line 373
    .end local v17           #message:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .restart local v6       #appAlertPrefs:[Ljava/lang/String;
    :catch_8
    #v1=(Conflicted);v6=(Reference,[Ljava/lang/String;);v17=(Conflicted);v20=(Conflicted);v24=(Conflicted);
    move-exception v24

    #v24=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_3

    .line 372
    :catch_9
    #v19=(Null);
    move-exception v24

    goto/16 :goto_2
.end method
