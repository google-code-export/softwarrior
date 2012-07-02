.class Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.super Ljava/util/TimerTask;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchResponseThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "u"
    .parameter "h"

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1081
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    .line 1082
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    .line 1083
    return-void
.end method

.method private sendErrorCode(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 1162
    new-instance v1, Landroid/os/Message;

    #v1=(UninitRef,Landroid/os/Message;);
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1163
    .local v1, msg:Landroid/os/Message;
    #v1=(Reference,Landroid/os/Message;);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef,Landroid/os/Bundle;);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1164
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference,Landroid/os/Bundle;);
    const-string v2, "type"

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "failure"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1167
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1086
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$3()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v13

    #v13=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v13}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 1091
    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    const-string v14, ""

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_0

    .line 1092
    const/16 v13, -0x1f7

    #v13=(Short);
    invoke-direct {p0, v13}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V

    .line 1093
    :cond_0
    const-string v8, ""

    .line 1094
    .local v8, response:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    const/4 v0, 0x0

    .line 1097
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    #v0=(Null);
    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v13}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v4, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1100
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    #v6=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1101
    .local v5, httpEntity:Lorg/apache/http/HttpEntity;
    #v5=(Reference,Lorg/apache/http/HttpEntity;);
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 1105
    .local v9, responseCode:I
    #v9=(Integer);
    const/16 v13, 0xc8

    #v13=(PosShort);
    if-eq v9, v13, :cond_1

    const/16 v13, 0xfb

    if-ne v9, v13, :cond_3

    .line 1106
    :cond_1
    if-eqz v5, :cond_3

    .line 1107
    new-instance v1, Ljava/io/BufferedReader;

    #v1=(UninitRef,Ljava/io/BufferedReader;);
    new-instance v13, Ljava/io/InputStreamReader;

    #v13=(UninitRef,Ljava/io/InputStreamReader;);
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #v13=(Reference,Ljava/io/InputStreamReader;);
    const/16 v14, 0x1f40

    #v14=(PosShort);
    invoke-direct {v1, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    #v1=(Reference,Ljava/io/BufferedReader;);
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, tmp:Ljava/lang/String;
    :goto_0
    #v12=(Reference,Ljava/lang/String;);v14=(Conflicted);
    if-nez v12, :cond_2

    .line 1114
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1116
    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_5

    .line 1118
    new-instance v7, Landroid/os/Message;

    #v7=(UninitRef,Landroid/os/Message;);
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1119
    .local v7, msg:Landroid/os/Message;
    #v7=(Reference,Landroid/os/Message;);
    new-instance v2, Landroid/os/Bundle;

    #v2=(UninitRef,Landroid/os/Bundle;);
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1120
    .local v2, bundle:Landroid/os/Bundle;
    #v2=(Reference,Landroid/os/Bundle;);
    const-string v13, "type"

    #v13=(Reference,Ljava/lang/String;);
    const-string v14, "success"

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v13, "response"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1123
    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v13, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    .line 1154
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    #v0=(Reference,Ljava/io/BufferedReader;);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1157
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    :goto_2
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    return-void

    .line 1111
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_3
    #v0=(Null);v1=(Reference,Ljava/io/BufferedReader;);v2=(Uninit);v3=(Uninit);v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v5=(Reference,Lorg/apache/http/HttpEntity;);v6=(Reference,Lorg/apache/http/HttpResponse;);v7=(Uninit);v9=(Integer);v10=(Uninit);v11=(Uninit);v12=(Reference,Ljava/lang/String;);v13=(Reference,Ljava/lang/Object;);
    new-instance v13, Ljava/lang/StringBuilder;

    #v13=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #v14=(Reference,Ljava/lang/String;);
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v13=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1112
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    goto :goto_0

    .line 1128
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    #v1=(Uninit);v12=(Uninit);v13=(PosShort);
    packed-switch v9, :pswitch_data_0

    .line 1142
    const/16 v3, -0x1f7

    .line 1147
    .local v3, errorCode:I
    :goto_3
    :try_start_4
    #v3=(Integer);v10=(Conflicted);v13=(Conflicted);
    invoke-direct {p0, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1149
    .end local v3           #errorCode:I
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    :catch_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);v14=(Conflicted);
    move-exception v11

    .line 1151
    .local v11, t:Ljava/lang/Throwable;
    :goto_4
    #v0=(Reference,Ljava/io/BufferedReader;);v2=(Conflicted);v7=(Conflicted);v11=(Reference,Ljava/lang/Throwable;);v12=(Conflicted);
    const/16 v13, -0x1f7

    :try_start_5
    #v13=(Short);
    invoke-direct {p0, v13}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1154
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1155
    :catch_1
    move-exception v13

    #v13=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 1130
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    :pswitch_0
    :try_start_7
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v5=(Reference,Lorg/apache/http/HttpEntity;);v6=(Reference,Lorg/apache/http/HttpResponse;);v7=(Uninit);v9=(Integer);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(PosShort);v14=(Reference,Ljava/lang/String;);
    const-string v13, "X-Mobclix-Suballocation"

    #v13=(Reference,Ljava/lang/String;);
    invoke-interface {v6, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1131
    .local v10, sub:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    if-nez v10, :cond_4

    .line 1132
    const/16 v3, -0x1f7

    .restart local v3       #errorCode:I
    #v3=(Short);
    goto :goto_3

    .line 1134
    .end local v3           #errorCode:I
    :cond_4
    #v3=(Uninit);
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result v3

    .line 1139
    .restart local v3       #errorCode:I
    #v3=(Integer);
    goto :goto_3

    .line 1152
    .end local v3           #errorCode:I
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    .end local v10           #sub:Ljava/lang/String;
    :catchall_0
    #v0=(Reference,Ljava/io/BufferedReader;);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v13

    .line 1154
    :goto_5
    :try_start_8
    #v13=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1156
    :goto_6
    throw v13

    .line 1155
    :catch_2
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_6

    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    :catch_3
    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;);v5=(Reference,Lorg/apache/http/HttpEntity;);v6=(Reference,Lorg/apache/http/HttpResponse;);v9=(Integer);v11=(Uninit);v13=(Conflicted);v14=(Conflicted);
    move-exception v13

    #v13=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 1152
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    #v0=(Null);v1=(Reference,Ljava/io/BufferedReader;);v3=(Uninit);v10=(Uninit);v13=(Conflicted);
    move-exception v13

    #v13=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    #v0=(Reference,Ljava/io/BufferedReader;);
    goto :goto_5

    .line 1149
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    #v0=(Null);v13=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    #v0=(Reference,Ljava/io/BufferedReader;);
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_5
    #v0=(Null);v2=(Uninit);v7=(Uninit);v11=(Uninit);v12=(Reference,Ljava/lang/String;);v13=(Boolean);
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    #v0=(Reference,Ljava/io/BufferedReader;);
    goto :goto_1

    .line 1128
    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
    .end packed-switch
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "u"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    return-void
.end method
