.class public Lcom/mobclix/android/sdk/MobclixInstrumentation;
.super Ljava/lang/Object;
.source "MobclixInstrumentation.java"


# static fields
.field static ADVIEW:Ljava/lang/String;

.field static final MC_DEBUG_CATS:[Ljava/lang/String;

.field static STARTUP:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final singleton:Lcom/mobclix/android/sdk/MobclixInstrumentation;


# instance fields
.field private autocloseGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private controller:Lcom/mobclix/android/sdk/Mobclix;

.field private currentBenchmarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Lorg/json/JSONObject;

.field private groupsStartCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "MobclixInstrumentation"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "startup"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    .line 19
    const-string v0, "adview"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    .line 21
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const/4 v1, 0x0

    #v1=(Null);
    sget-object v2, Lcom/mobclix/android/sdk/MobclixInstrumentation;->STARTUP:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    sget-object v2, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->MC_DEBUG_CATS:[Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-direct {v0}, Lcom/mobclix/android/sdk/MobclixInstrumentation;-><init>()V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->singleton:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #v0=(Reference,Lorg/json/JSONObject;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->autocloseGroups:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groupsStartCount:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method static getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->singleton:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    return-object v0
.end method


# virtual methods
.method addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "object"
    .parameter "desc"
    .parameter "group"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 40
    :cond_1
    :try_start_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    #v1=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const-string v8, ""

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->hasPathStarted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 187
    :cond_0
    #v8=(Conflicted);
    const/4 v4, 0x0

    .line 222
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference,Ljava/lang/String;);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-object v4

    .line 190
    :cond_2
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const-string v8, "/"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, pathComponents:[Ljava/lang/String;
    #v6=(Reference,[Ljava/lang/String;);
    array-length v8, v6

    #v8=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    if-ne v8, v9, :cond_3

    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0

    .line 193
    :cond_3
    #v4=(Uninit);
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 194
    .local v1, endDate:Ljava/lang/Long;
    #v1=(Reference,Ljava/lang/Long;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    #v8=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Object;);
    check-cast v7, Ljava/lang/Long;

    .line 196
    .local v7, startDate:Ljava/lang/Long;
    const/4 v8, 0x0

    #v8=(Null);
    aget-object v2, v6, v8

    .line 198
    .local v2, group:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    #v8=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "benchmarks"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    #v11=(LongLo);v12=(LongHi);
    sub-long/2addr v9, v11

    long-to-double v9, v9

    #v9=(DoubleLo);v10=(DoubleHi);
    const-wide v11, 0x41cdcd6500000000L

    div-double/2addr v9, v11

    invoke-virtual {v8, p1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 200
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->autocloseGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_4

    .line 203
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 206
    :cond_4
    array-length v8, v6

    #v8=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    if-gt v8, v9, :cond_5

    .line 207
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0

    .line 208
    :cond_5
    #v4=(Uninit);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v8, 0x0

    #v8=(Null);
    aget-object v8, v6, v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v5, newPathBuilder:Ljava/lang/StringBuilder;
    #v5=(Reference,Ljava/lang/StringBuilder;);
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    #v3=(Integer);v9=(Conflicted);
    array-length v8, v6

    #v8=(Integer);
    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_6

    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, " "

    #v9=(Reference,Ljava/lang/String;);
    const-string v10, ""

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\r"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\n"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, newPath:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    if-nez v8, :cond_7

    .line 216
    const/4 v4, 0x0

    #v4=(Null);
    goto/16 :goto_0

    .line 210
    .end local v4           #newPath:Ljava/lang/String;
    :cond_6
    #v4=(Uninit);v9=(Conflicted);v10=(DoubleHi);
    const-string v8, "/"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v3

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .restart local v4       #newPath:Ljava/lang/String;
    :cond_7
    #v4=(Reference,Ljava/lang/String;);v8=(Integer);v10=(Reference,Ljava/lang/String;);
    const-string v8, "/"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 218
    const/4 v4, 0x0

    #v4=(Null);
    goto/16 :goto_0

    .line 221
    .end local v1           #endDate:Ljava/lang/Long;
    .end local v2           #group:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #newPath:Ljava/lang/String;
    .end local v5           #newPathBuilder:Ljava/lang/StringBuilder;
    .end local v6           #pathComponents:[Ljava/lang/String;
    .end local v7           #startDate:Ljava/lang/Long;
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    const/4 v4, 0x0

    #v4=(Null);
    goto/16 :goto_0
.end method

.method benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "name"

    .prologue
    .line 175
    if-eqz p2, :cond_0

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->hasPathStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x0

    .line 182
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 179
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, newPath:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Long;);
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method finishGroup(Ljava/lang/String;)V
    .locals 11
    .parameter "group"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    const-string v6, ""

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->hasPathStarted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 125
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->hasPathFinishedBenchmarks(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 126
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->autocloseGroups:Ljava/util/ArrayList;

    #v6=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->autocloseGroups:Ljava/util/ArrayList;

    #v6=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    :try_start_0
    #v6=(Boolean);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 138
    .local v2, endDate:Ljava/lang/Long;
    #v2=(Reference,Ljava/lang/Long;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    #v6=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    .local v0, data:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v4, Ljava/text/SimpleDateFormat;

    #v4=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v6, "yyyy-MM-dd\'T\'hh:mmZ"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, iso8601Format:Ljava/text/DateFormat;
    #v4=(Reference,Ljava/text/SimpleDateFormat;);
    const-string v6, "endDate"

    new-instance v7, Ljava/util/Date;

    #v7=(UninitRef,Ljava/util/Date;);
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    #v7=(Reference,Ljava/util/Date;);
    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v6, "totalElapsedTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    const-string v9, "startDateNanoTime"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    sub-long/2addr v7, v9

    long-to-double v7, v7

    #v7=(DoubleLo);v8=(DoubleHi);
    const-wide v9, 0x41cdcd6500000000L

    div-double/2addr v7, v9

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    const-string v6, "startDateNanoTime"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    new-instance v3, Lorg/json/JSONObject;

    #v3=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v3, envData:Lorg/json/JSONObject;
    #v3=(Reference,Lorg/json/JSONObject;);
    const-string v6, "app_id"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v7=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v6, "platform"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getPlatform()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v6, "sdk_ver"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v6, "app_ver"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v6, "udid"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v6, "dev_model"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v6, "dev_vers"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v6, "hw_dev_model"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v6, "conn"

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v6, "environment"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const/4 v3, 0x0

    .line 159
    #v3=(Null);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "cat="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, params:Ljava/lang/StringBuilder;
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&payload="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    new-instance v6, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getDebugServer()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    .line 163
    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .local v1, debugThread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v0, 0x0

    #v0=(Null);
    goto/16 :goto_0

    .line 169
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #debugThread:Ljava/lang/Thread;
    .end local v2           #endDate:Ljava/lang/Long;
    .end local v3           #envData:Lorg/json/JSONObject;
    .end local v4           #iso8601Format:Ljava/text/DateFormat;
    .end local v5           #params:Ljava/lang/StringBuilder;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v6

    #v6=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method

.method hasPathFinishedBenchmarks(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 107
    #v2=(Null);
    if-eqz p1, :cond_0

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 109
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, keyPrefix:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    sget-object v3, Lcom/mobclix/android/sdk/MobclixInstrumentation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Current benchmarks: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->currentBenchmarks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 119
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 113
    :cond_3
    #v2=(Null);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    if-lt v4, v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 115
    :cond_4
    #v4=(Integer);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method hasPathStarted(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, group:Ljava/lang/String;
    #v0=(Null);
    const-string v2, "/"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, pathComponents:[Ljava/lang/String;
    #v1=(Reference,[Ljava/lang/String;);
    array-length v2, v1

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_0

    .line 100
    move-object v0, p1

    .line 103
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    #v2=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    return v2

    .line 102
    :cond_0
    #v0=(Null);v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v0, v1, v2

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method startGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "group"

    .prologue
    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "group"
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 51
    #v6=(Null);
    if-eqz p1, :cond_0

    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    :cond_0
    #v5=(Conflicted);
    move-object p1, v6

    .line 92
    .end local p1
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object p1

    .line 53
    .restart local p1
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    #v5=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 55
    if-eqz p2, :cond_3

    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    :cond_3
    move-object p2, p1

    .line 60
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v5

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v4, 0x0

    .line 63
    .local v4, startCount:I
    :try_start_1
    #v4=(Null);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groupsStartCount:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 67
    :goto_1
    :try_start_2
    #v4=(Integer);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5, p2}, Lcom/mobclix/android/sdk/Mobclix;->getDebugConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    move-object p1, v6

    .line 68
    #p1=(Null);
    goto :goto_0

    .line 69
    :cond_5
    #p1=(Reference,Ljava/lang/String;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5, p2}, Lcom/mobclix/android/sdk/Mobclix;->getDebugConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, groupFreq:I
    #v1=(Integer);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groupsStartCount:Ljava/util/HashMap;

    add-int/lit8 v7, v4, 0x1

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v5, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-ltz v1, :cond_7

    if-eqz v1, :cond_6

    rem-int v5, v4, v1

    #v5=(Integer);
    if-nez v5, :cond_7

    .line 76
    :cond_6
    #v5=(Conflicted);
    new-instance v3, Lorg/json/JSONObject;

    #v3=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v3, skeleton:Lorg/json/JSONObject;
    #v3=(Reference,Lorg/json/JSONObject;);
    const-string v5, "benchmarks"

    #v5=(Reference,Ljava/lang/String;);
    new-instance v7, Lorg/json/JSONObject;

    #v7=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    #v7=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v5, "data"

    new-instance v7, Lorg/json/JSONObject;

    #v7=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    #v7=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v2, Ljava/text/SimpleDateFormat;

    #v2=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v5, "yyyy-MM-dd\'T\'hh:mmZ"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, iso8601Format:Ljava/text/DateFormat;
    #v2=(Reference,Ljava/text/SimpleDateFormat;);
    const-string v5, "startDate"

    new-instance v7, Ljava/util/Date;

    #v7=(UninitRef,Ljava/util/Date;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    #v7=(Reference,Ljava/util/Date;);
    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v5, "startDateNanoTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v3, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixInstrumentation;->groups:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    const/4 v3, 0x0

    .line 86
    #v3=(Null);
    goto/16 :goto_0

    .end local v2           #iso8601Format:Ljava/text/DateFormat;
    .end local v3           #skeleton:Lorg/json/JSONObject;
    :cond_7
    #v2=(Uninit);v3=(Uninit);v5=(Conflicted);v7=(Reference,Ljava/lang/Integer;);v8=(Uninit);v9=(Uninit);
    move-object p1, v6

    .line 88
    #p1=(Null);
    goto/16 :goto_0

    .line 90
    .end local v1           #groupFreq:I
    .end local v4           #startCount:I
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);p1=(Reference,Ljava/lang/String;);
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    move-object p1, v6

    .line 92
    #p1=(Null);
    goto/16 :goto_0

    .line 64
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #startCount:I
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);v5=(Reference,Ljava/lang/Object;);v7=(Uninit);v8=(Uninit);v9=(Uninit);p1=(Reference,Ljava/lang/String;);
    move-exception v5

    goto :goto_1
.end method
