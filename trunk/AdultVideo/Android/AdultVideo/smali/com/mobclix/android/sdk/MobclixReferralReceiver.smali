.class public Lcom/mobclix/android/sdk/MobclixReferralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobclixReferralReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixReferralReceiver;);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 19
    .local v7, extras:Landroid/os/Bundle;
    #v7=(Reference,Landroid/os/Bundle;);
    const-string v13, "referrer"

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    .local v12, referrerString:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    if-eqz v12, :cond_0

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_0

    .line 22
    new-instance v13, Ljava/lang/StringBuilder;

    #v13=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference,Ljava/lang/String;);
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v13=(Reference,Ljava/lang/StringBuilder;);
    const-string v14, ".MCConfig"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    #v14=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/content/Context;);
    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 23
    .local v10, preferences:Landroid/content/SharedPreferences;
    #v10=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 24
    .local v11, preferencesEditor:Landroid/content/SharedPreferences$Editor;
    #v11=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v13, "MCReferralData"

    invoke-interface {v11, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    .end local v10           #preferences:Landroid/content/SharedPreferences;
    .end local v11           #preferencesEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    #v0=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    const/4 v3, 0x0

    .line 33
    .local v3, adMobReceiver:Ljava/lang/Object;
    #v3=(Null);
    const/4 v2, 0x0

    .line 35
    .local v2, InstallReceiver:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    #v2=(Null);
    const-string v4, "com.admob.android.ads.analytics.InstallReceiver"

    .line 36
    .local v4, className:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 37
    #v2=(Reference,Ljava/lang/Class;);
    const/4 v13, 0x0

    #v13=(Null);
    new-array v13, v13, [Ljava/lang/Class;

    #v13=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v2, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 38
    .local v5, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    #v5=(Reference,Ljava/lang/reflect/Constructor;);
    const/4 v13, 0x0

    #v13=(Null);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v5, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 40
    #v3=(Reference,Ljava/lang/Object;);
    const-string v13, "onReceive"

    const/4 v14, 0x2

    #v14=(PosByte);
    new-array v14, v14, [Ljava/lang/Class;

    #v14=(Reference,[Ljava/lang/Class;);
    const/4 v15, 0x0

    #v15=(Null);
    const-class v16, Landroid/content/Context;

    #v16=(Reference,Ljava/lang/Class;);
    aput-object v16, v14, v15

    const/4 v15, 0x1

    #v15=(One);
    const-class v16, Landroid/content/Intent;

    aput-object v16, v14, v15

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 41
    .local v9, m:Ljava/lang/reflect/Method;
    #v9=(Reference,Ljava/lang/reflect/Method;);
    const/4 v13, 0x2

    #v13=(PosByte);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    const/4 v14, 0x0

    #v14=(Null);
    aput-object p1, v13, v14

    const/4 v14, 0x1

    #v14=(One);
    aput-object p2, v13, v14

    invoke-virtual {v9, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v3           #adMobReceiver:Ljava/lang/Object;
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v9           #m:Ljava/lang/reflect/Method;
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void

    .line 42
    :catch_0
    #v1=(Uninit);v6=(Uninit);v8=(Uninit);v13=(Conflicted);
    move-exception v6

    .line 48
    .local v6, e:Ljava/lang/Exception;
    #v6=(Reference,Ljava/lang/Exception;);
    const/4 v8, 0x0

    .line 49
    .local v8, googleReceiver:Ljava/lang/Object;
    #v8=(Null);
    const/4 v1, 0x0

    .line 51
    .local v1, AnalyticsReceiver:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    #v1=(Null);
    const-string v4, "com.google.android.apps.analytics.AnalyticsReceiver"

    .line 52
    .restart local v4       #className:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    #v1=(Reference,Ljava/lang/Class;);
    const/4 v13, 0x0

    #v13=(Null);
    new-array v13, v13, [Ljava/lang/Class;

    #v13=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v1, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 54
    .restart local v5       #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    #v5=(Reference,Ljava/lang/reflect/Constructor;);
    const/4 v13, 0x0

    #v13=(Null);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v5, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 56
    #v8=(Reference,Ljava/lang/Object;);
    const-string v13, "onReceive"

    const/4 v14, 0x2

    #v14=(PosByte);
    new-array v14, v14, [Ljava/lang/Class;

    #v14=(Reference,[Ljava/lang/Class;);
    const/4 v15, 0x0

    #v15=(Null);
    const-class v16, Landroid/content/Context;

    #v16=(Reference,Ljava/lang/Class;);
    aput-object v16, v14, v15

    const/4 v15, 0x1

    #v15=(One);
    const-class v16, Landroid/content/Intent;

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 57
    .restart local v9       #m:Ljava/lang/reflect/Method;
    #v9=(Reference,Ljava/lang/reflect/Method;);
    const/4 v13, 0x2

    #v13=(PosByte);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    const/4 v14, 0x0

    #v14=(Null);
    aput-object p1, v13, v14

    const/4 v14, 0x1

    #v14=(One);
    aput-object p2, v13, v14

    invoke-virtual {v9, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v8           #googleReceiver:Ljava/lang/Object;
    .end local v9           #m:Ljava/lang/reflect/Method;
    :catch_1
    #v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v13

    #v13=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
