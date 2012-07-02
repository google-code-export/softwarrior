.class Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobclixHttpClient"
.end annotation


# instance fields
.field httpGet:Lorg/apache/http/client/methods/HttpGet;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "u"

    .prologue
    .line 1018
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1019
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    .line 1020
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    #v0=(UninitRef,Lorg/apache/http/client/methods/HttpGet;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 1021
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$3()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return-void
.end method


# virtual methods
.method public execute()Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    #v2=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    invoke-super {p0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1031
    .local v0, httpResponse:Lorg/apache/http/HttpResponse;
    #v0=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .end local v0           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    #v1=(Reference,Ljava/lang/Throwable;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
