.class Lcom/mobclix/android/sdk/MobclixLocation;
.super Ljava/lang/Object;
.source "MobclixLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;,
        Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    #v0=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    .line 79
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$1;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixLocation$1;);
    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$1;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$1;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 99
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$2;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixLocation$2;);
    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$2;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$2;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z
    .locals 5
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 22
    #v3=(Null);
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Reference,Ljava/util/Timer;);
    if-eqz v1, :cond_0

    move v1, v2

    .line 61
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v4=(Conflicted);
    monitor-exit p0

    return v1

    .line 26
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Reference,Ljava/util/Timer;);v4=(Uninit);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    .line 27
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 28
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    move v1, v3

    .line 30
    #v1=(Null);
    goto :goto_0

    .line 33
    :cond_2
    #v1=(Reference,Landroid/location/LocationManager;);
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    #v1=(Reference,Landroid/location/LocationManager;);
    const-string v4, "gps"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    .line 37
    :goto_1
    #v4=(Conflicted);
    const-string v1, "network"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 38
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    #v1=(Reference,Landroid/location/LocationManager;);
    const-string v4, "network"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :goto_2
    :try_start_2
    #v1=(Conflicted);v4=(Conflicted);
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    #v1=(Boolean);
    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    move v1, v3

    .line 45
    #v1=(Null);
    goto :goto_0

    .line 36
    :cond_3
    #v1=(Boolean);v4=(Uninit);
    const/4 v1, 0x0

    :try_start_3
    #v1=(Null);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    goto :goto_1

    .line 41
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 40
    :cond_4
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 22
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1

    .line 58
    :cond_5
    :try_start_4
    #v0=(Uninit);v1=(Boolean);
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    .local v0, t:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    .line 61
    #v1=(One);
    goto :goto_0
.end method

.method public isProviderSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "in_Provider"

    .prologue
    const/4 v4, 0x0

    .line 173
    :try_start_0
    #v4=(Null);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    #v3=(Reference,Landroid/location/LocationManager;);
    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 179
    .local v1, lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x0

    .local v2, lv_N:I
    :goto_0
    :try_start_1
    #v2=(Integer);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    if-lt v2, v3, :cond_0

    move v3, v4

    .line 185
    .end local v1           #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #lv_N:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    return v3

    .line 174
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    #v0=(Reference,Ljava/lang/Throwable;);
    move v3, v4

    .line 175
    #v3=(Null);
    goto :goto_1

    .line 180
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #lv_N:I
    :cond_0
    #v0=(Uninit);v1=(Reference,Ljava/util/List;);v2=(Integer);v3=(Integer);
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 181
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_1

    .line 179
    :cond_1
    #v3=(Boolean);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v1           #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #lv_N:I
    :catch_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    move v3, v4

    #v3=(Null);
    goto :goto_1
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 70
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 72
    :cond_0
    #v0=(Reference,Ljava/util/Timer;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    #v1=(Reference,Landroid/location/LocationListener;);
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 74
    :cond_1
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    #v1=(Reference,Landroid/location/LocationListener;);
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 76
    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
