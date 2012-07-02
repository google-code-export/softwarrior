.class Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchImageThread"
.end annotation


# instance fields
.field private bmImg:Landroid/graphics/Bitmap;

.field private handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V
    .locals 0
    .parameter "url"
    .parameter "h"

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    .line 1057
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    .line 1058
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1063
    :try_start_0
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v0, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1065
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    #v2=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1067
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    #v1=(Reference,Lorg/apache/http/HttpEntity;);
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    .line 1068
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1070
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    #v4=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    .end local v0           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v1           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->sendEmptyMessage(I)Z

    .line 1073
    return-void

    .line 1071
    :catch_0
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    goto :goto_0
.end method
