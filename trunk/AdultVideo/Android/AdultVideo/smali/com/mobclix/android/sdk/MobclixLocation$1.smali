.class Lcom/mobclix/android/sdk/MobclixLocation$1;
.super Ljava/lang/Object;
.source "MobclixLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixLocation;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$1;);
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 85
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 87
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 91
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixLocation;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :goto_1
    #v1=(Conflicted);
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 94
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 95
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 96
    return-void
.end method
