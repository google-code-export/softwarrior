.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;
.super Ljava/lang/Object;
.source "MobclixJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendImageToServerThread"
.end annotation


# instance fields
.field private imagePath:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "p"
    .parameter "u"

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1963
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;);
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->serverUrl:Ljava/lang/String;

    .line 1964
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1969
    :try_start_0
    new-instance v3, Ljava/io/File;

    #v3=(UninitRef,Ljava/io/File;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->imagePath:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1970
    .local v3, in:Ljava/io/File;
    #v3=(Reference,Ljava/io/File;);
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1973
    .local v5, pic:Landroid/graphics/Bitmap;
    #v5=(Reference,Landroid/graphics/Bitmap;);
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1974
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference,Ljava/io/ByteArrayOutputStream;);
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    #v8=(PosByte);
    invoke-virtual {v5, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1977
    new-instance v6, Ljava/net/URL;

    #v6=(UninitRef,Ljava/net/URL;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->serverUrl:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v6, url:Ljava/net/URL;
    #v6=(Reference,Ljava/net/URL;);
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    #v1=(Reference,Ljava/net/URLConnection;);
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1979
    .local v1, connection:Ljava/net/HttpURLConnection;
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1980
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1981
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1982
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1983
    new-instance v4, Ljava/io/DataOutputStream;

    #v4=(UninitRef,Ljava/io/DataOutputStream;);
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    #v7=(Reference,Ljava/io/OutputStream;);
    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1986
    .local v4, out:Ljava/io/DataOutputStream;
    #v4=(Reference,Ljava/io/DataOutputStream;);
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1989
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 1990
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1991
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1992
    const/4 v5, 0x0

    .line 1993
    #v5=(Null);
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1995
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    invoke-static {v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$0(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1996
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    invoke-static {v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$1(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->access$0(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    #v10=(Reference,Ljava/lang/String;);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v8, v9, v10, v11}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #in:Ljava/io/File;
    .end local v4           #out:Ljava/io/DataOutputStream;
    .end local v5           #pic:Landroid/graphics/Bitmap;
    .end local v6           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    const/4 v8, 0x0

    #v8=(Null);
    iput-object v8, v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoSendingThread:Ljava/lang/Thread;

    .line 2003
    return-void

    .line 1998
    :catch_0
    move-exception v2

    .line 1999
    .local v2, e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v7

    #v7=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v7, v7, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    .line 2000
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v7

    iget-object v7, v7, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v7

    const-string v8, "Error processing photo."

    invoke-virtual {v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCanceled(Ljava/lang/String;)V

    goto :goto_0
.end method
