.class public Lcom/softwarrior/avideo/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/Util;);
    return-void
.end method

.method static extractAdultLinks(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "html"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/softwarrior/avideo/AdultLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, links:Ljava/util/List;,"Ljava/util/List<Lcom/softwarrior/avideo/AdultLink;>;"
    #v7=(Reference,Ljava/util/ArrayList;);
    const/4 v5, 0x0

    .line 132
    .local v5, lastEnd:I
    #v5=(Null);
    const/4 v8, 0x0

    .line 133
    .local v8, sanityCount:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    const-string v13, "/video/show/title/"

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_0

    const/16 v13, 0xa

    #v13=(PosByte);
    if-lt v8, v13, :cond_1

    .line 174
    :cond_0
    return-object v7

    .line 135
    :cond_1
    const-string v13, "/video/show/title/"

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 136
    .local v9, start:I
    #v9=(Integer);
    const-string v13, "\""

    const-string v14, "/video/show/title/"

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    #v14=(Integer);
    add-int/2addr v14, v9

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, end:I
    #v1=(Integer);
    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, videoUrl:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    const-string v13, "src=\""

    invoke-virtual {p0, v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 141
    .local v10, startImage:I
    #v10=(Integer);
    const-string v13, "\""

    const-string v14, "src=\""

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    #v14=(Integer);
    add-int/2addr v14, v10

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 143
    .local v2, endImage:I
    #v2=(Integer);
    const-string v13, "src=\""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    #v13=(Integer);
    add-int/2addr v13, v10

    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, imageUrl:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    const-string v13, "play_"

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_2

    .line 148
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, currenHtml:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v13, "background: url("

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 151
    .local v11, startTN:I
    #v11=(Integer);
    const-string v13, ")"

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .local v3, endTN:I
    #v3=(Integer);
    const-string v13, "background: url("

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    #v13=(Integer);
    add-int/2addr v13, v11

    .line 153
    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    .end local v0           #currenHtml:Ljava/lang/String;
    .end local v3           #endTN:I
    .end local v11           #startTN:I
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);v11=(Conflicted);
    const-string v13, "small"

    #v13=(Reference,Ljava/lang/String;);
    const-string v14, "medium"

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v13, ""

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 162
    add-int/lit8 v8, v8, 0x1

    .line 164
    new-instance v6, Lcom/softwarrior/avideo/AdultLink;

    #v6=(UninitRef,Lcom/softwarrior/avideo/AdultLink;);
    invoke-direct {v6}, Lcom/softwarrior/avideo/AdultLink;-><init>()V

    .line 165
    .local v6, link:Lcom/softwarrior/avideo/AdultLink;
    #v6=(Reference,Lcom/softwarrior/avideo/AdultLink;);
    invoke-virtual {v6, v12}, Lcom/softwarrior/avideo/AdultLink;->setVideoUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v4}, Lcom/softwarrior/avideo/AdultLink;->setImage(Ljava/lang/String;)V

    .line 168
    move v5, v1

    .line 170
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static getAltVideoLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/softwarrior/avideo/Util;->getHTTPResponse(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 61
    .local v1, response:Lorg/apache/http/HttpResponse;
    #v1=(Reference,Lorg/apache/http/HttpResponse;);
    const-string v2, "Location"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, redirectUrl:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v2, "media1.pornhub.com"

    const-string v3, "64.88.250.244"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method static getHTTPResponse(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "url"

    .prologue
    .line 96
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #v1=(UninitRef,Lorg/apache/http/impl/client/DefaultHttpClient;);
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 98
    .local v1, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    #v1=(Reference,Lorg/apache/http/impl/client/DefaultHttpClient;);
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    #v3=(UninitRef,Lorg/apache/http/params/BasicHttpParams;);
    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 99
    .local v3, params:Lorg/apache/http/params/HttpParams;
    #v3=(Reference,Lorg/apache/http/params/BasicHttpParams;);
    const-string v5, "http.protocol.handle-redirects"

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Boolean;);
    invoke-interface {v3, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 101
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    #v2=(UninitRef,Lorg/apache/http/client/methods/HttpGet;);
    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    #v2=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 105
    const-string v5, "User-Agent"

    .line 106
    const-string v6, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    .line 104
    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "Accept"

    .line 108
    const-string v6, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    .line 107
    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v5, "Accept-Language"

    const-string v6, "en-gb,en;q=0.5"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "Accept-Charset"

    const-string v6, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 123
    :goto_0
    #v0=(Conflicted);v4=(Reference,Lorg/apache/http/HttpResponse;);
    return-object v4

    .line 118
    :catch_0
    #v0=(Uninit);v4=(Uninit);
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0
.end method

.method static getHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    .line 180
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    #v2=(UninitRef,Lorg/apache/http/impl/client/DefaultHttpClient;);
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 182
    .local v2, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    #v2=(Reference,Lorg/apache/http/impl/client/DefaultHttpClient;);
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    #v3=(UninitRef,Lorg/apache/http/client/methods/HttpGet;);
    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    #v3=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    const-string v5, "User-Agent"

    .line 185
    #v5=(Reference,Ljava/lang/String;);
    const-string v6, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    .line 183
    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v5, "Accept"

    .line 187
    const-string v6, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    .line 186
    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "Accept-Language"

    const-string v6, "en-gb,en;q=0.5"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v5, "Accept-Charset"

    const-string v6, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 195
    .local v4, response:Lorg/apache/http/HttpResponse;
    #v4=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 197
    .local v1, entity:Lorg/apache/http/HttpEntity;
    #v1=(Reference,Lorg/apache/http/HttpEntity;);
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/softwarrior/avideo/Util;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 204
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    return-object v5

    .line 199
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v5, ""

    goto :goto_0
.end method

.method static getRandomImages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/softwarrior/avideo/AdultLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, links:Ljava/util/List;,"Ljava/util/List<Lcom/softwarrior/avideo/AdultLink;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    sget-object v4, Lcom/softwarrior/avideo/AdultMoviesLite;->simpleSections:[Ljava/lang/String;

    #v4=(Reference,[Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    aget-object v3, v4, v5

    .line 27
    .local v3, sectionName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Lcom/softwarrior/avideo/Util;->getRandomImagesBySection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, limitedResults:Ljava/util/List;,"Ljava/util/List<Lcom/softwarrior/avideo/AdultLink;>;"
    #v1=(Reference,Ljava/util/ArrayList;);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);
    sget v4, Lcom/softwarrior/avideo/AdultMoviesLite;->maxResults:I

    #v4=(Integer);
    if-lt v0, v4, :cond_0

    .line 38
    return-object v1

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Lcom/softwarrior/avideo/AdultLink;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :catch_0
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method static getRandomImagesBySection(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "sectionName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/softwarrior/avideo/AdultLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/Random;

    #v2=(UninitRef,Ljava/util/Random;);
    new-instance v4, Ljava/util/Date;

    #v4=(UninitRef,Ljava/util/Date;);
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #v4=(Reference,Ljava/util/Date;);
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 45
    .local v2, randomGenerator:Ljava/util/Random;
    #v2=(Reference,Ljava/util/Random;);
    sget v4, Lcom/softwarrior/avideo/AdultMoviesLite;->numPagesPerSection:I

    #v4=(Integer);
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 47
    .local v1, pageNum:I
    #v1=(Integer);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "http://m.pornhub.com/category/show/name/"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 48
    const-string v5, "/page/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, url:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/softwarrior/avideo/Util;->getHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, content:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Lcom/softwarrior/avideo/Util;->extractAdultLinks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method static getVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v7, "http://m.pornhub.com"

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/softwarrior/avideo/Util;->getHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, html:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v5, ""

    .line 74
    .local v5, videoHtml:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    const-string v6, ".mp4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, end:I
    #v0=(Integer);
    const/4 v3, 0x0

    .line 77
    .local v3, realEnd:I
    #v3=(Null);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v6=(Conflicted);v7=(Conflicted);
    const/16 v6, 0x3e8

    #v6=(PosShort);
    if-lt v2, v6, :cond_0

    .line 86
    :goto_1
    #v3=(Integer);v6=(Char);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string v6, "http://"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, start:I
    #v4=(Integer);
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 79
    .end local v4           #start:I
    :cond_0
    #v3=(Null);v4=(Uninit);v6=(PosShort);
    add-int v6, v0, v2

    #v6=(Integer);
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    #v6=(Char);
    const/16 v7, 0x22

    #v7=(PosByte);
    if-ne v6, v7, :cond_1

    .line 80
    add-int v3, v0, v2

    .line 81
    #v3=(Integer);
    goto :goto_1

    .line 77
    :cond_1
    #v3=(Null);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "in"

    .prologue
    .line 210
    new-instance v3, Ljava/lang/StringBuffer;

    #v3=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v3, out:Ljava/lang/StringBuffer;
    #v3=(Reference,Ljava/lang/StringBuffer;);
    const/16 v4, 0x1000

    #v4=(PosShort);
    new-array v0, v4, [B

    .line 213
    .local v0, b:[B
    :goto_0
    :try_start_0
    #v0=(Reference,[B);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, n:I
    #v2=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v2, v4, :cond_0

    .line 220
    .end local v2           #n:I
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    return-object v4

    .line 214
    .restart local v2       #n:I
    :cond_0
    :try_start_1
    #v1=(Uninit);v2=(Integer);v4=(Byte);
    new-instance v4, Ljava/lang/String;

    #v4=(UninitRef,Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    .end local v2           #n:I
    :catch_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
