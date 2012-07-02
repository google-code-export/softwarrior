.class Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenAllocationPage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;
    }
.end annotation


# instance fields
.field network:Ljava/lang/String;

.field oaAdView:Landroid/widget/RelativeLayout;

.field params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 12
    .parameter "p"
    .parameter "c"

    .prologue
    .line 1267
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 1264
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    const-string v10, "openadmob"

    #v10=(Reference,Ljava/lang/String;);
    iput-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    .line 1265
    const/4 v10, 0x0

    #v10=(Null);
    iput-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    .line 1269
    :try_start_0
    const-string v10, "network"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1272
    :goto_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    #v7=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1273
    .local v7, paramsBuffer:Ljava/lang/StringBuffer;
    #v7=(Reference,Ljava/lang/StringBuffer;);
    const-string v10, "params"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1274
    .local v8, pp:Lorg/json/JSONObject;
    #v8=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    #v3=(Reference,Ljava/util/Iterator;);v4=(Conflicted);v9=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_2

    .line 1280
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    iput-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1284
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v7           #paramsBuffer:Ljava/lang/StringBuffer;
    .end local v8           #pp:Lorg/json/JSONObject;
    :goto_2
    #v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const/4 v2, 0x0

    .line 1285
    .local v2, eventConsumed:Z
    #v2=(Null);
    const/4 v6, 0x0

    .line 1286
    .local v6, openAllocationCode:I
    #v6=(Null);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    const-string v11, "openadmob"

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_3

    .line 1287
    const/16 v6, -0x2ee

    .line 1294
    :goto_3
    #v6=(Short);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_4
    #v2=(Boolean);v5=(Conflicted);v11=(Conflicted);
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-nez v11, :cond_5

    .line 1301
    if-eqz v2, :cond_7

    .line 1315
    :cond_1
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 1275
    .end local v2           #eventConsumed:Z
    .end local v6           #openAllocationCode:I
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #paramsBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #pp:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Reference,Ljava/util/Iterator;);v5=(Uninit);v6=(Uninit);v7=(Reference,Ljava/lang/StringBuffer;);v8=(Reference,Lorg/json/JSONObject;);v10=(Boolean);v11=(Uninit);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Object;);
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1276
    .local v4, k:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1277
    .local v9, v:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1282
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #k:Ljava/lang/String;
    .end local v7           #paramsBuffer:Ljava/lang/StringBuffer;
    .end local v8           #pp:Lorg/json/JSONObject;
    .end local v9           #v:Ljava/lang/String;
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v10

    #v10=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 1288
    .restart local v2       #eventConsumed:Z
    .restart local v6       #openAllocationCode:I
    :cond_3
    #v2=(Null);v6=(Null);v10=(Boolean);v11=(Reference,Ljava/lang/String;);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    #v10=(Reference,Ljava/lang/String;);
    const-string v11, "opengoogle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_4

    .line 1289
    const/16 v6, -0x2774

    #v6=(Short);
    goto :goto_3

    .line 1291
    :cond_4
    #v6=(Null);
    const/16 v6, -0x3ee

    #v6=(Short);
    goto :goto_3

    .line 1294
    :cond_5
    #v2=(Boolean);v5=(Conflicted);v10=(Reference,Ljava/util/Iterator;);v11=(Boolean);
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1295
    .local v5, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v5, :cond_0

    .line 1296
    if-nez v2, :cond_6

    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v5, v11, v6}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z

    move-result v11

    #v11=(Boolean);
    if-nez v11, :cond_6

    const/4 v2, 0x0

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_6

    .line 1303
    .end local v5           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_7
    #v2=(Boolean);v5=(Conflicted);
    const/16 v10, -0x2ee

    #v10=(Short);
    if-eq v6, v10, :cond_8

    .line 1304
    const/16 v10, -0x2774

    if-ne v6, v10, :cond_1

    .line 1306
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->googleAllocation()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 1307
    :catch_1
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAllocation()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 1310
    :catch_2
    move-exception v1

    .line 1311
    .local v1, e1:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v10, v10, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11}, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAd(Ljava/lang/String;)V

    goto :goto_5

    .line 1269
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e1:Ljava/lang/Exception;
    .end local v2           #eventConsumed:Z
    .end local v6           #openAllocationCode:I
    :catch_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);
    move-exception v10

    goto/16 :goto_0
.end method


# virtual methods
.method adMobAllocation()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1318
    const-string v4, "com.admob.android.ads.AdView"

    .line 1319
    .local v4, className:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    .line 1321
    .local v2, AdMobAdViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v2=(Null);
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1322
    #v2=(Reference,Ljava/lang/Class;);
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/Class;

    #v14=(Reference,[Ljava/lang/Class;);
    const/4 v15, 0x0

    #v15=(Null);
    const-class v16, Landroid/app/Activity;

    #v16=(Reference,Ljava/lang/Class;);
    aput-object v16, v14, v15

    invoke-virtual {v2, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 1323
    .local v5, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    #v5=(Reference,Ljava/lang/reflect/Constructor;);
    const/4 v14, 0x1

    #v14=(One);
    new-array v11, v14, [Ljava/lang/Object;

    #v11=(Reference,[Ljava/lang/Object;);
    const/4 v15, 0x0

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v14=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-virtual {v14}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    aput-object v14, v11, v15

    .line 1324
    .local v11, params:[Ljava/lang/Object;
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    .line 1326
    const/4 v3, 0x0

    .line 1327
    .local v3, adMobAdListener:Ljava/lang/Object;
    #v3=(Null);
    const/4 v1, 0x0

    .line 1329
    .local v1, AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v1=(Null);
    const-string v14, "com.admob.android.ads.AdListener"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1330
    #v1=(Reference,Ljava/lang/Class;);
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    .line 1332
    .local v6, handler:Ljava/lang/reflect/InvocationHandler;
    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 1333
    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Class;

    #v15=(Reference,[Ljava/lang/Class;);
    const/16 v16, 0x0

    #v16=(Null);
    aput-object v1, v15, v16

    .line 1332
    invoke-static {v14, v15, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v14

    .line 1331
    invoke-virtual {v1, v14}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1336
    #v3=(Reference,Ljava/lang/Object;);
    const-string v14, "setAdListener"

    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Class;

    #v15=(Reference,[Ljava/lang/Class;);
    const/16 v16, 0x0

    aput-object v1, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1337
    .local v10, m:Ljava/lang/reflect/Method;
    #v10=(Reference,Ljava/lang/reflect/Method;);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference,[Ljava/lang/Object;);
    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .local v8, keywordsBuffer:Ljava/lang/StringBuilder;
    #v8=(Reference,Ljava/lang/StringBuilder;);
    new-instance v13, Ljava/lang/StringBuilder;

    #v13=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1341
    .local v13, queryBuffer:Ljava/lang/StringBuilder;
    #v13=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v14, v14, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v14, v14, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    #v7=(Conflicted);v9=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Reference,Ljava/lang/String;);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_3

    .line 1356
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    #v14=(Integer);
    if-lez v14, :cond_1

    .line 1357
    const-string v14, "setKeywords"

    #v14=(Reference,Ljava/lang/String;);
    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Class;

    #v15=(Reference,[Ljava/lang/Class;);
    const/16 v16, 0x0

    #v16=(Null);
    const-class v17, Ljava/lang/String;

    #v17=(Reference,Ljava/lang/Class;);
    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference,[Ljava/lang/Object;);
    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :cond_1
    #v14=(Conflicted);v15=(Conflicted);v16=(Reference,Ljava/lang/String;);v17=(Conflicted);
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    #v14=(Integer);
    if-lez v14, :cond_2

    .line 1361
    const-string v14, "setSearchQuery"

    #v14=(Reference,Ljava/lang/String;);
    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Class;

    #v15=(Reference,[Ljava/lang/Class;);
    const/16 v16, 0x0

    #v16=(Null);
    const-class v17, Ljava/lang/String;

    #v17=(Reference,Ljava/lang/Class;);
    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    const/4 v15, 0x1

    #v15=(One);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference,[Ljava/lang/Object;);
    const/16 v16, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    :cond_2
    #v14=(Conflicted);v15=(Conflicted);v16=(Reference,Ljava/lang/String;);v17=(Conflicted);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    #v14=(Reference,Landroid/widget/RelativeLayout;);
    new-instance v15, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;

    #v15=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;);
    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    #v15=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;);
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    const/4 v15, 0x4

    #v15=(PosByte);
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v14, v14, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    #v15=(Reference,Landroid/widget/RelativeLayout;);
    invoke-virtual {v14, v15}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 1377
    return-void

    .line 1341
    :cond_3
    #v15=(Boolean);v17=(Uninit);
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1342
    .local v9, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v9, :cond_0

    .line 1343
    invoke-interface {v9}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v7

    .line 1344
    .local v7, keywords:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    if-nez v7, :cond_4

    .line 1345
    const-string v7, ""

    .line 1346
    :cond_4
    const-string v15, ""

    #v15=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_5

    .line 1347
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    #v15=(Reference,Ljava/lang/StringBuilder;);
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_5
    #v15=(Conflicted);
    invoke-interface {v9}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->query()Ljava/lang/String;

    move-result-object v12

    .line 1350
    .local v12, query:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    if-nez v12, :cond_6

    .line 1351
    const-string v12, ""

    .line 1352
    :cond_6
    const-string v15, ""

    #v15=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_0

    .line 1353
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    #v15=(Reference,Ljava/lang/StringBuilder;);
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method googleAllocation()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1400
    const-string v28, "MobclixCreative"

    #v28=(Reference,Ljava/lang/String;);
    const-string v29, "googleAllocation()"

    #v29=(Reference,Ljava/lang/String;);
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v10, "com.google.ads.AdView"

    .line 1402
    .local v10, className:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    const/16 v16, 0x0

    .line 1404
    .local v16, googleAdViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v16=(Null);
    const/4 v9, 0x0

    .line 1405
    .local v9, adsize320x50:Ljava/lang/Object;
    #v9=(Null);
    const/4 v8, 0x0

    .line 1406
    .local v8, adsize300x250:Ljava/lang/Object;
    #v8=(Null);
    const-string v28, "com.google.ads.AdSize"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 1407
    .local v15, googleAdSizeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v15=(Reference,Ljava/lang/Class;);
    invoke-virtual {v15}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1408
    .local v12, consts:[Ljava/lang/reflect/Field;
    #v12=(Reference,[Ljava/lang/reflect/Field;);
    const/16 v18, 0x0

    .local v18, i:I
    #v18=(Null);
    move-object v7, v8

    #v7=(Null);
    move-object v6, v9

    .end local v8           #adsize300x250:Ljava/lang/Object;
    .end local v9           #adsize320x50:Ljava/lang/Object;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v6=(Reference,Ljava/lang/Object;);v7=(Reference,Ljava/lang/Object;);v8=(Reference,Ljava/lang/Object;);v9=(Reference,Ljava/lang/Object;);v18=(Integer);v28=(Conflicted);
    array-length v0, v12

    #v0=(Integer);
    move/from16 v28, v0

    #v28=(Integer);
    move/from16 v0, v18

    move/from16 v1, v28

    #v1=(Integer);
    if-lt v0, v1, :cond_3

    .line 1415
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 1416
    #v16=(Reference,Ljava/lang/Class;);
    const/16 v28, 0x3

    #v28=(PosByte);
    move/from16 v0, v28

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v28, v0

    #v28=(Reference,[Ljava/lang/Class;);
    const/16 v29, 0x0

    #v29=(Null);
    const-class v30, Landroid/app/Activity;

    #v30=(Reference,Ljava/lang/Class;);
    aput-object v30, v28, v29

    const/16 v29, 0x1

    #v29=(One);
    aput-object v15, v28, v29

    const/16 v29, 0x2

    #v29=(PosByte);
    const-class v30, Ljava/lang/String;

    aput-object v30, v28, v29

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    #v1=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 1418
    .local v11, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    #v11=(Reference,Ljava/lang/reflect/Constructor;);
    const/16 v24, 0x0

    #v24=(Null);
    check-cast v24, [Ljava/lang/Object;

    .line 1420
    .local v6, adsize:Ljava/lang/Object;
    .local v24, params:[Ljava/lang/Object;
    #v24=(Reference,[Ljava/lang/Object;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "300x250"

    #v29=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    #v28=(Boolean);
    if-eqz v28, :cond_0

    .end local v6           #adsize:Ljava/lang/Object;
    .local v7, adsize:Ljava/lang/Object;
    move-object v6, v7

    .line 1423
    .end local v7           #adsize:Ljava/lang/Object;
    .restart local v6       #adsize:Ljava/lang/Object;
    :cond_0
    const/16 v28, 0x3

    #v28=(PosByte);
    move/from16 v0, v28

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v24, v0

    .end local v24           #params:[Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1424
    #v29=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object/from16 v28, v0

    #v28=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-virtual/range {v28 .. v28}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v28

    check-cast v28, Landroid/app/Activity;

    aput-object v28, v24, v29

    const/16 v28, 0x1

    .line 1425
    #v28=(One);
    aput-object v6, v24, v28

    const/16 v28, 0x2

    .line 1426
    #v28=(PosByte);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v29

    #v29=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->getAdMobApplicationId()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v24, v28

    .line 1428
    .restart local v24       #params:[Ljava/lang/Object;
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    #v28=(Reference,Ljava/lang/Object;);
    check-cast v28, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    .line 1430
    const/4 v4, 0x0

    .line 1431
    .local v4, adMobAdListener:Ljava/lang/Object;
    #v4=(Null);
    const/4 v3, 0x0

    .line 1432
    .local v3, AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v3=(Null);
    const-string v28, "com.google.ads.AdListener"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1433
    #v3=(Reference,Ljava/lang/Class;);
    new-instance v17, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;

    #v17=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    .line 1435
    .local v17, handler:Ljava/lang/reflect/InvocationHandler;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);v17=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v28

    .line 1436
    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Class;);
    const/16 v30, 0x0

    #v30=(Null);
    aput-object v3, v29, v30

    .line 1435
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v28

    .line 1434
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1440
    #v4=(Reference,Ljava/lang/Object;);
    const-string v28, "setAdListener"

    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Class;);
    const/16 v30, 0x0

    aput-object v3, v29, v30

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    .line 1441
    .local v25, setAdListenerMethod:Ljava/lang/reflect/Method;
    #v25=(Reference,Ljava/lang/reflect/Method;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Object;);
    const/16 v30, 0x0

    aput-object v4, v29, v30

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const-string v28, "com.google.ads.AdRequest"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1445
    .local v13, googleAdRequestClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v13=(Reference,Ljava/lang/Class;);
    const/16 v28, 0x0

    #v28=(Null);
    move/from16 v0, v28

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v28, v0

    #v28=(Reference,[Ljava/lang/Class;);
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 1446
    .local v14, googleAdRequestConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    #v14=(Reference,Ljava/lang/reflect/Constructor;);
    const/16 v28, 0x0

    #v28=(Null);
    move/from16 v0, v28

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v24, v0

    .line 1447
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1449
    .local v5, adRequest:Ljava/lang/Object;
    #v5=(Reference,Ljava/lang/Object;);
    new-instance v20, Ljava/util/HashSet;

    #v20=(UninitRef,Ljava/util/HashSet;);
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1450
    .local v20, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v20=(Reference,Ljava/util/HashSet;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object/from16 v28, v0

    #v28=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v19=(Conflicted);v21=(Conflicted);v22=(Conflicted);v29=(Conflicted);
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    #v29=(Boolean);
    if-nez v29, :cond_5

    .line 1462
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v28

    #v28=(Integer);
    if-lez v28, :cond_2

    .line 1463
    const-string v28, "setKeywords"

    #v28=(Reference,Ljava/lang/String;);
    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Class;);
    const/16 v30, 0x0

    const-class v31, Ljava/util/Set;

    #v31=(Reference,Ljava/lang/Class;);
    aput-object v31, v29, v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    #v1=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    .line 1464
    .local v26, setKeywordsMethod:Ljava/lang/reflect/Method;
    #v26=(Reference,Ljava/lang/reflect/Method;);
    const/16 v28, 0x1

    #v28=(One);
    move/from16 v0, v28

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v28, v0

    #v28=(Reference,[Ljava/lang/Object;);
    const/16 v29, 0x0

    #v29=(Null);
    aput-object v20, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .end local v26           #setKeywordsMethod:Ljava/lang/reflect/Method;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v26=(Conflicted);v28=(Conflicted);v29=(Boolean);v31=(Conflicted);
    const-string v28, "setTesting"

    #v28=(Reference,Ljava/lang/String;);
    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Class;);
    const/16 v30, 0x0

    sget-object v31, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #v31=(Reference,Ljava/lang/Class;);
    aput-object v31, v29, v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    #v1=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    .line 1467
    .local v27, setTestingMethod:Ljava/lang/reflect/Method;
    #v27=(Reference,Ljava/lang/reflect/Method;);
    const/16 v28, 0x1

    #v28=(One);
    move/from16 v0, v28

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v28, v0

    #v28=(Reference,[Ljava/lang/Object;);
    const/16 v29, 0x0

    #v29=(Null);
    const/16 v30, 0x1

    #v30=(One);
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    #v30=(Reference,Ljava/lang/Boolean;);
    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    const-string v28, "loadAd"

    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference,[Ljava/lang/Class;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Class;);
    const/16 v30, 0x0

    #v30=(Null);
    aput-object v13, v29, v30

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 1470
    .local v23, loadAdMethod:Ljava/lang/reflect/Method;
    #v23=(Reference,Ljava/lang/reflect/Method;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    move-object/from16 v29, v0

    #v29=(Reference,[Ljava/lang/Object;);
    const/16 v30, 0x0

    aput-object v5, v29, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    new-instance v29, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;

    #v29=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;);
    move-object/from16 v0, v29

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;);
    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;);v29=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;);
    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    #v29=(PosByte);
    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->oaAdView:Landroid/widget/RelativeLayout;

    move-object/from16 v29, v0

    #v29=(Reference,Landroid/widget/RelativeLayout;);
    invoke-virtual/range {v28 .. v29}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 1484
    return-void

    .line 1409
    .end local v3           #AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #adMobAdListener:Ljava/lang/Object;
    .end local v5           #adRequest:Ljava/lang/Object;
    .end local v6           #adsize:Ljava/lang/Object;
    .end local v11           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v13           #googleAdRequestClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v14           #googleAdRequestConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v17           #handler:Ljava/lang/reflect/InvocationHandler;
    .end local v20           #keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23           #loadAdMethod:Ljava/lang/reflect/Method;
    .end local v24           #params:[Ljava/lang/Object;
    .end local v25           #setAdListenerMethod:Ljava/lang/reflect/Method;
    .end local v27           #setTestingMethod:Ljava/lang/reflect/Method;
    :cond_3
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Null);v17=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Integer);v30=(Uninit);v31=(Uninit);
    aget-object v28, v12, v18

    #v28=(Reference,Ljava/lang/reflect/Field;);
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "BANNER"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    #v28=(Boolean);
    if-eqz v28, :cond_4

    .line 1410
    aget-object v28, v12, v18

    #v28=(Reference,Ljava/lang/reflect/Field;);
    const/16 v29, 0x0

    #v29=(Null);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #adsize320x50:Ljava/lang/Object;
    move-object v6, v9

    .line 1411
    .end local v9           #adsize320x50:Ljava/lang/Object;
    :cond_4
    #v28=(Conflicted);v29=(Reference,Ljava/lang/String;);
    aget-object v28, v12, v18

    #v28=(Reference,Ljava/lang/reflect/Field;);
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "IAB_MRECT"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    #v28=(Boolean);
    if-eqz v28, :cond_7

    .line 1412
    aget-object v28, v12, v18

    #v28=(Reference,Ljava/lang/reflect/Field;);
    const/16 v29, 0x0

    #v29=(Null);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1408
    :goto_1
    #v28=(Conflicted);v29=(Reference,Ljava/lang/String;);
    add-int/lit8 v18, v18, 0x1

    move-object v7, v8

    goto/16 :goto_0

    .line 1450
    .restart local v3       #AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #adMobAdListener:Ljava/lang/Object;
    .restart local v5       #adRequest:Ljava/lang/Object;
    .restart local v6       #adsize:Ljava/lang/Object;
    .restart local v11       #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v13       #googleAdRequestClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v14       #googleAdRequestConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v17       #handler:Ljava/lang/reflect/InvocationHandler;
    .restart local v20       #keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24       #params:[Ljava/lang/Object;
    .restart local v25       #setAdListenerMethod:Ljava/lang/reflect/Method;
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference,[Ljava/lang/Object;);v3=(Reference,Ljava/lang/Class;);v4=(Reference,Ljava/lang/Object;);v5=(Reference,Ljava/lang/Object;);v11=(Reference,Ljava/lang/reflect/Constructor;);v13=(Reference,Ljava/lang/Class;);v14=(Reference,Ljava/lang/reflect/Constructor;);v16=(Reference,Ljava/lang/Class;);v17=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;);v19=(Conflicted);v20=(Reference,Ljava/util/HashSet;);v21=(Conflicted);v22=(Conflicted);v24=(Reference,[Ljava/lang/Object;);v25=(Reference,Ljava/lang/reflect/Method;);v28=(Reference,Ljava/util/Iterator;);v29=(Boolean);v30=(Null);
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference,Ljava/lang/Object;);
    check-cast v22, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1451
    .local v22, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v22, :cond_1

    .line 1452
    invoke-interface/range {v22 .. v22}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v19

    .line 1453
    .local v19, k:Ljava/lang/String;
    #v19=(Reference,Ljava/lang/String;);
    if-nez v19, :cond_6

    .line 1454
    const-string v19, ""

    .line 1455
    :cond_6
    const-string v29, ""

    #v29=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    #v0=(Reference,Ljava/lang/String;);
    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    #v29=(Boolean);
    if-nez v29, :cond_1

    .line 1456
    const-string v29, ",\\s*"

    #v29=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1457
    .local v21, ks:[Ljava/lang/String;
    #v21=(Reference,[Ljava/lang/String;);
    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v21

    array-length v0, v0

    #v0=(Integer);
    move/from16 v29, v0

    #v29=(Integer);
    move/from16 v0, v18

    move/from16 v1, v29

    #v1=(Integer);
    if-ge v0, v1, :cond_1

    .line 1458
    aget-object v29, v21, v18

    #v29=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    #v0=(Reference,Ljava/util/HashSet;);
    move-object/from16 v1, v29

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .end local v3           #AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #adMobAdListener:Ljava/lang/Object;
    .end local v5           #adRequest:Ljava/lang/Object;
    .end local v6           #adsize:Ljava/lang/Object;
    .end local v11           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v13           #googleAdRequestClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v14           #googleAdRequestConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v17           #handler:Ljava/lang/reflect/InvocationHandler;
    .end local v19           #k:Ljava/lang/String;
    .end local v20           #keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21           #ks:[Ljava/lang/String;
    .end local v22           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    .end local v24           #params:[Ljava/lang/Object;
    .end local v25           #setAdListenerMethod:Ljava/lang/reflect/Method;
    :cond_7
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Null);v17=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v24=(Uninit);v25=(Uninit);v28=(Boolean);v30=(Uninit);
    move-object v8, v7

    goto :goto_1
.end method
