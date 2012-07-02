.class Lcom/mobclix/android/sdk/MobclixCreativeManager;
.super Ljava/lang/Object;
.source "MobclixCreativeManager.java"


# instance fields
.field creatives:Lorg/json/JSONArray;

.field nCreative:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "rawResponse"
    .parameter "n"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreativeManager;);
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    .line 15
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    .line 17
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, response:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v1, "creatives"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->creatives:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v0           #response:Lorg/json/JSONObject;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 19
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method getCreative()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->creatives:Lorg/json/JSONArray;

    #v1=(Reference,Lorg/json/JSONArray;);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference,Lorg/json/JSONException;);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method getIndex()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    #v0=(Integer);
    return v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->creatives:Lorg/json/JSONArray;

    #v0=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method nextCreative()Z
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    .line 27
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->nCreative:I

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreativeManager;->creatives:Lorg/json/JSONArray;

    #v1=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method
