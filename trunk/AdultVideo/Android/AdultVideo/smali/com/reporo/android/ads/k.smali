.class Lcom/reporo/android/ads/k;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field private static final i:Ljava/util/Random;

.field private static synthetic j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    #v1=(Null);
    new-instance v0, Ljava/util/Random;

    #v0=(UninitRef,Ljava/util/Random;);
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #v0=(Reference,Ljava/util/Random;);
    sput-object v0, Lcom/reporo/android/ads/k;->i:Ljava/util/Random;

    sput-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    sput-object v1, Lcom/reporo/android/ads/k;->b:Ljava/lang/String;

    sput-object v1, Lcom/reporo/android/ads/k;->c:Ljava/lang/String;

    const-string v0, "http"

    sput-object v0, Lcom/reporo/android/ads/k;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/reporo/android/ads/k;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/reporo/android/ads/k;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/reporo/android/ads/k;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/reporo/android/ads/k;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/k;);
    return-void
.end method

.method static a(Lcom/reporo/android/ads/l;)Lcom/reporo/android/ads/j;
    .locals 10

    const/16 v9, 0x3e8

    #v9=(PosShort);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, -0x1

    #v3=(Byte);
    new-instance v4, Lcom/reporo/android/ads/j;

    #v4=(UninitRef,Lcom/reporo/android/ads/j;);
    invoke-direct {v4}, Lcom/reporo/android/ads/j;-><init>()V

    #v4=(Reference,Lcom/reporo/android/ads/j;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    sget-object v0, Lcom/reporo/android/ads/k;->d:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/reporo/android/ads/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opx/www/delivery/api.php?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "z="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/reporo/android/ads/k;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/reporo/android/ads/l;->ordinal()I

    move-result v5

    #v5=(Integer);
    aget v0, v0, v5

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Invalid zone type requested."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0

    :pswitch_0
    #v0=(Integer);
    sget-object v0, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Smart zone not configured."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0

    :cond_0
    sget-object v0, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    const-string v5, ","

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    if-le v0, v5, :cond_3

    sget-object v0, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v5, ","

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/reporo/android/ads/k;->i:Ljava/util/Random;

    sget-object v6, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    const-string v7, ","

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    #v5=(Integer);
    aget-object v0, v0, v5

    :goto_0
    #v6=(Conflicted);v7=(Conflicted);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ua="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&as="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/reporo/android/ads/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&aw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/reporo/android/ads/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ab="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/reporo/android/ads/k;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ao="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/reporo/android/ads/k;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/net/URL;

    #v0=(UninitRef,Ljava/net/URL;);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/net/URL;);
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v1, Ljava/io/InputStreamReader;

    #v1=(UninitRef,Ljava/io/InputStreamReader;);
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #v1=(Reference,Ljava/io/InputStreamReader;);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const/16 v5, 0x4000

    #v5=(PosShort);
    new-array v5, v5, [C

    :goto_1
    #v5=(Reference,[C);
    array-length v6, v5

    #v6=(Integer);
    invoke-virtual {v1, v5, v8, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-ne v6, v3, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    new-instance v1, Lorg/json/JSONTokener;

    #v1=(UninitRef,Lorg/json/JSONTokener;);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Lorg/json/JSONTokener;);
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "alt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_6

    const-string v1, "alt"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v4, Lcom/reporo/android/ads/j;->h:Ljava/lang/String;

    const-string v1, "bannerid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_7

    const-string v1, "bannerid"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_7

    const-string v1, "bannerid"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    #v1=(Integer);
    iput v1, v4, Lcom/reporo/android/ads/j;->a:I

    const-string v1, "bannertext"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_8

    const-string v1, "bannertext"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    iget-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    const/16 v5, 0x29

    #v5=(PosByte);
    if-le v1, v5, :cond_9

    iget-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/16 v5, 0x28

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    #v5=(Conflicted);
    iput-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    const-string v1, "bannerurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_a

    const-string v1, "bannerurl"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v1, v4, Lcom/reporo/android/ads/j;->e:Ljava/lang/String;

    const-string v1, "campaignid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_b

    const-string v1, "campaignid"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_b

    const-string v1, "campaignid"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_7
    #v1=(Integer);
    iput v1, v4, Lcom/reporo/android/ads/j;->b:I

    const-string v1, "height"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_c

    const-string v1, "height"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_c

    const-string v1, "height"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_8
    #v1=(Integer);
    iput v1, v4, Lcom/reporo/android/ads/j;->f:I

    const-string v1, "contenttype"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_d

    const-string v1, "contenttype"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    iput-object v1, v4, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const-string v1, "url"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    #v1=(Conflicted);v2=(Reference,Ljava/lang/String;);
    iput-object v2, v4, Lcom/reporo/android/ads/j;->d:Ljava/lang/String;

    const-string v1, "width"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const-string v1, "width"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    const-string v1, "width"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    #v1=(Conflicted);v3=(Integer);
    iput v3, v4, Lcom/reporo/android/ads/j;->g:I

    invoke-static {v4}, Lcom/reporo/android/ads/k;->a(Lcom/reporo/android/ads/j;)V

    const-string v0, "Reporo SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Got:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    #v0=(Integer);v2=(Null);v3=(Byte);v5=(One);v6=(Uninit);v7=(Uninit);
    sget-object v0, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    :pswitch_1
    #v0=(Integer);v5=(Integer);
    sget-object v0, Lcom/reporo/android/ads/k;->b:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Interstitial zone not configured."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0

    :cond_4
    sget-object v0, Lcom/reporo/android/ads/k;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    #v5=(Reference,[C);v6=(Integer);v7=(Conflicted);
    invoke-virtual {v0, v5, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    #v1=(Boolean);
    move-object v1, v2

    #v1=(Null);
    goto/16 :goto_2

    :cond_7
    #v1=(Boolean);
    move v1, v3

    #v1=(Byte);
    goto/16 :goto_3

    :cond_8
    #v1=(Boolean);
    move-object v1, v2

    #v1=(Null);
    goto/16 :goto_4

    :cond_9
    #v1=(Conflicted);v5=(Conflicted);
    iget-object v1, v4, Lcom/reporo/android/ads/j;->i:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    goto/16 :goto_5

    :cond_a
    #v1=(Boolean);
    move-object v1, v2

    #v1=(Null);
    goto/16 :goto_6

    :cond_b
    #v1=(Boolean);
    move v1, v3

    #v1=(Byte);
    goto/16 :goto_7

    :cond_c
    #v1=(Boolean);
    move v1, v3

    #v1=(Byte);
    goto :goto_8

    :cond_d
    #v1=(Boolean);
    move-object v1, v2

    #v1=(Null);
    goto :goto_9

    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    #v0=(Null);
    sget-object v1, Lcom/reporo/android/ads/k;->c:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    const/16 v3, 0x80

    #v3=(PosShort);
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.reporo.android.meta.zone.smart"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.reporo.android.meta.zone.smart"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.reporo.android.meta.zone.smart"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    sget-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    sget-object v4, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    #v3=(Reference,Ljava/lang/String;);v4=(Conflicted);
    sput-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.reporo.android.meta.zone.interstitial"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #v0=(Reference,Landroid/os/Bundle;);
    const-string v1, "com.reporo.android.meta.zone.interstitial"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/reporo/android/ads/k;->b:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.reporo.android.meta.dom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reporo/android/ads/k;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/reporo/android/ads/k;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/reporo/android/ads/k;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lcom/reporo/android/ads/k;->g:Ljava/lang/String;

    new-instance v1, Landroid/util/DisplayMetrics;

    #v1=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #v1=(Reference,Landroid/util/DisplayMetrics;);
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reporo/android/ads/k;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const-string v0, "Reporo SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Smart Zones: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    sget-object v2, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Interstitial Zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/reporo/android/ads/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/reporo/android/ads/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #v2=(Conflicted);
    return-void

    :cond_2
    #v0=(Null);v2=(Reference,Landroid/content/pm/ApplicationInfo;);v3=(Reference,Ljava/lang/String;);v4=(Uninit);
    move-object v1, v0

    #v1=(Null);
    goto/16 :goto_0

    :cond_3
    :try_start_1
    #v1=(Conflicted);
    sget-object v1, Lcom/reporo/android/ads/k;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #v1=(Reference,Ljava/lang/String;);
    goto/16 :goto_1

    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    const-string v0, "Reporo SDK"

    const-string v1, "Unable to load configuration."

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static a(Lcom/reporo/android/ads/j;)V
    .locals 6

    const/4 v5, 0x0

    #v5=(Null);
    const-string v0, "txt"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const-string v1, "5"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "8"

    #v2=(Reference,Ljava/lang/String;);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "11"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17"

    aput-object v2, v0, v1

    const-class v1, Lcom/reporo/android/ads/k;

    #v1=(Reference,Ljava/lang/Class;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "/"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    sget-object v3, Lcom/reporo/android/ads/k;->i:Ljava/util/Random;

    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    #v3=(Integer);
    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #v1=(Reference,Ljava/io/ByteArrayOutputStream;);
    const/16 v2, 0x4000

    #v2=(PosShort);
    new-array v2, v2, [B

    :goto_1
    #v2=(Reference,[B);
    array-length v3, v2

    #v3=(Integer);
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/reporo/android/ads/j;->j:[B

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :cond_0
    #v0=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const-string v0, "jpeg"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "png"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "gif"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/reporo/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/net/URL;

    #v0=(UninitRef,Ljava/net/URL;);
    iget-object v1, p0, Lcom/reporo/android/ads/j;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/net/URL;);
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    :cond_2
    #v0=(Boolean);
    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Invalid or no ad retured."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0

    :cond_3
    #v2=(Reference,[B);v3=(Integer);v4=(Byte);
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/reporo/android/ads/k;->j:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/reporo/android/ads/l;->a()[Lcom/reporo/android/ads/l;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/reporo/android/ads/l;->b:Lcom/reporo/android/ads/l;

    #v1=(Reference,Lcom/reporo/android/ads/l;);
    invoke-virtual {v1}, Lcom/reporo/android/ads/l;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/reporo/android/ads/l;->a:Lcom/reporo/android/ads/l;

    #v1=(Reference,Lcom/reporo/android/ads/l;);
    invoke-virtual {v1}, Lcom/reporo/android/ads/l;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/reporo/android/ads/k;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method
