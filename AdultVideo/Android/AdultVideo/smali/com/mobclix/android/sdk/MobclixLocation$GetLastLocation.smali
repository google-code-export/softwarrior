.class Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "MobclixLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixLocation;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    const/4 v1, 0x0

    .local v1, net_loc:Landroid/location/Location;
    #v1=(Null);
    const/4 v0, 0x0

    .line 129
    .local v0, gps_loc:Landroid/location/Location;
    :try_start_0
    #v0=(Null);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 131
    :cond_0
    #v0=(Reference,Landroid/location/Location;);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 135
    :cond_1
    #v1=(Reference,Landroid/location/Location;);v2=(Conflicted);v3=(Conflicted);
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 153
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 139
    :cond_2
    #v2=(Byte);v3=(LongHi);v4=(LongLo);v5=(LongHi);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 152
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_0

    .line 143
    :cond_3
    #v2=(Conflicted);v4=(Uninit);v5=(Uninit);
    if-eqz v0, :cond_4

    .line 144
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 147
    :cond_4
    #v2=(Conflicted);
    if-eqz v1, :cond_5

    .line 148
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 151
    :cond_5
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
