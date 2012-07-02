.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
.super Ljava/lang/Object;
.source "MobclixJavascriptInterface.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;,
        Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;,
        Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;,
        Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MAX_SONGS:I

.field private final PERMISSION_CALENDAR_READ:I

.field private final PERMISSION_CALENDAR_WRITE:I

.field private final PERMISSION_CONTACTS_READ:I

.field private final PERMISSION_CONTACTS_WRITE:I

.field private final TYPE_COMPASS:I

.field private final TYPE_SHAKE:I

.field private adDidDisplayCallbackFunctionName:Ljava/lang/String;

.field private adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

.field private adFinishedResizingCallbackFunctionName:Ljava/lang/String;

.field private adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

.field private adWillContractCallbackFunctionName:Ljava/lang/String;

.field private adWillTerminateCallbackFunctionName:Ljava/lang/String;

.field private autoplay:Z

.field private camera:Landroid/hardware/Camera;

.field private contactCallbackFunctionName:Ljava/lang/String;

.field private contactErrorCallbackFunctionName:Ljava/lang/String;

.field private controller:Lcom/mobclix/android/sdk/Mobclix;

.field duration:I

.field expanded:Z

.field expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

.field private flashMode:Ljava/lang/String;

.field private flashlightOn:Z

.field fullScreenAdView:Z

.field private gpsDataCallbackFunctionName:Ljava/lang/String;

.field private gpsDistanceFilter:F

.field private gpsListenerAdded:Z

.field private gps_enabled:Z

.field private locationManager:Landroid/location/LocationManager;

.field private final mMobclixContacts:Lcom/mobclix/android/sdk/MobclixContacts;

.field private network_enabled:Z

.field private paused:Z

.field private photoCallbackFunctionName:Ljava/lang/String;

.field private photoErrorCallbackFunctionName:Ljava/lang/String;

.field photoHeight:I

.field photoSendingThread:Ljava/lang/Thread;

.field photoServerUrl:Ljava/lang/String;

.field photoWidth:I

.field private requireUserInteraction:Z

.field private sensorIntervals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sensorMgr:Landroid/hardware/SensorManager;

.field private sensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueKey:Ljava/lang/String;

.field userHasInteracted:Z

.field private userPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

.field webviewActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "MobclixJavascriptInterface"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;Z)V
    .locals 9
    .parameter "w"
    .parameter "fullscreen"

    .prologue
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v5, 0x0

    .line 139
    #v5=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    .line 72
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->fullScreenAdView:Z

    .line 74
    const/16 v2, 0x1f4

    #v2=(PosShort);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->duration:I

    .line 76
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 79
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    .line 80
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    .line 81
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    .line 82
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->uniqueKey:Ljava/lang/String;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    #v2=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #v2=(Reference,Ljava/util/HashMap;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    .line 84
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->PERMISSION_CALENDAR_READ:I

    .line 85
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->PERMISSION_CALENDAR_WRITE:I

    .line 86
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->PERMISSION_CONTACTS_READ:I

    .line 87
    const/4 v2, 0x3

    #v2=(PosByte);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->PERMISSION_CONTACTS_WRITE:I

    .line 90
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixContacts;->getInstance()Lcom/mobclix/android/sdk/MobclixContacts;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixContacts;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->mMobclixContacts:Lcom/mobclix/android/sdk/MobclixContacts;

    .line 94
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    .line 95
    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashMode:Ljava/lang/String;

    .line 96
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashlightOn:Z

    .line 103
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    .line 104
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    .line 108
    const-string v2, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    .line 111
    const/16 v2, 0x539

    #v2=(PosShort);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->TYPE_SHAKE:I

    .line 112
    const/16 v2, 0x53a

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->TYPE_COMPASS:I

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #v2=(Reference,Ljava/util/ArrayList;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/HashMap;

    #v2=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #v2=(Reference,Ljava/util/HashMap;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    .line 116
    new-instance v2, Ljava/util/HashMap;

    #v2=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #v2=(Reference,Ljava/util/HashMap;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    .line 118
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    .line 119
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    .line 120
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDataCallbackFunctionName:Ljava/lang/String;

    .line 121
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    .line 122
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    .line 123
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    .line 126
    const/16 v2, 0x4b

    #v2=(PosByte);
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->MAX_SONGS:I

    .line 129
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->paused:Z

    .line 132
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidDisplayCallbackFunctionName:Ljava/lang/String;

    .line 133
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizingCallbackFunctionName:Ljava/lang/String;

    .line 134
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContractCallbackFunctionName:Ljava/lang/String;

    .line 135
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminateCallbackFunctionName:Ljava/lang/String;

    .line 136
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

    .line 137
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 141
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 142
    iput-boolean p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->fullScreenAdView:Z

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->richMediaRequiresUserInteraction()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    .line 146
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    #v2=(Conflicted);
    if-eqz p2, :cond_0

    .line 149
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    .line 150
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v2=(Reference,Landroid/app/Activity;);
    const-string v3, "sensor"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    .line 154
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, ss:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    #v1=(Reference,Ljava/util/List;);
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    #v0=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 160
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Integer;);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Integer;);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    .line 167
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, v2, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v2=(Reference,Landroid/location/LocationManager;);
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    .line 171
    :goto_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v2=(Reference,Landroid/location/LocationManager;);
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    .line 175
    :goto_3
    return-void

    .line 155
    :cond_1
    #v2=(Reference,Ljava/util/Iterator;);v3=(Boolean);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/hardware/Sensor;

    .line 156
    .local v0, s:Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    #v3=(Reference,Ljava/util/List;);
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Integer;);
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 170
    .end local v0           #s:Landroid/hardware/Sensor;
    :cond_2
    #v0=(Conflicted);v2=(Boolean);
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    goto :goto_2

    .line 174
    :cond_3
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    goto :goto_3

    .line 147
    .end local v1           #ss:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Conflicted);v3=(Null);v4=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v0=(Reference,Ljava/util/HashMap;);
    return-object v0
.end method

.method private makeGenreUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "genreId"

    .prologue
    .line 1866
    const-string v0, "members"

    .line 1868
    .local v0, CONTENTDIR:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1869
    #v1=(Reference,Ljava/lang/StringBuilder;);
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1870
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1871
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1872
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1873
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1874
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1867
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private songCursorToJSON(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "c"
    .parameter "genre"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1852
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1854
    .local v0, s:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v1, "title"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "title"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1855
    const-string v1, "albumTitle"

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    const-string v1, "artist"

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1857
    const-string v1, "albumArtist"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1858
    const-string v1, "composer"

    const-string v2, "composer"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1859
    if-eqz p2, :cond_0

    .line 1860
    const-string v1, "genre"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1862
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized accelerometerStart(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "updateInterval"
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 400
    monitor-enter p0

    const/4 v1, 0x1

    #v1=(One);
    move-object v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move v2, p1

    #v2=(Float);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move-object v4, p3

    #v4=(Reference,Ljava/lang/String;);
    move-object v5, p4

    :try_start_0
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStart(IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized accelerometerStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 404
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    invoke-virtual {p0, v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adDidDisplay()V
    .locals 4

    .prologue
    .line 2215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidDisplayCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidDisplayCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2215
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adDidReturnFromHidden()V
    .locals 4

    .prologue
    .line 2310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2312
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2310
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adFinishedResizing()V
    .locals 4

    .prologue
    .line 2234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizingCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizingCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2234
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adWillBecomeHidden()V
    .locals 4

    .prologue
    .line 2291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2291
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adWillContract()V
    .locals 4

    .prologue
    .line 2253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContractCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContractCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2253
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized adWillTerminate()V
    .locals 4

    .prologue
    .line 2272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminateCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminateCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2272
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized calendarAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 37
    .parameter "eventObject"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v4, v4, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1232
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "Ad not yet displayed."

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move-exception v20

    .line 1379
    .local v20, e:Ljava/lang/Exception;
    #v20=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 1380
    :try_start_1
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-static {v7}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    #v8=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    .end local v20           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v20=(Conflicted);
    monitor-exit p0

    return-void

    .line 1234
    :cond_1
    :try_start_2
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v36=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v4, :cond_2

    .line 1235
    new-instance v32, Ljava/lang/StringBuilder;

    #v32=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "window.MOBCLIX.calendarAddEvent(\'"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v32, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v32=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\',\'"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\',\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\');"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1231
    .end local v32           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v4

    .line 1240
    :cond_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v36=(Uninit);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v7, "android.permission.WRITE_CALENDAR"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 1241
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "Application does not have the WRITE_CALENDAR permission."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1242
    :cond_3
    #v4=(Boolean);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    if-nez v4, :cond_4

    .line 1243
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "User declined access to calendar."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1244
    :cond_4
    #v4=(Integer);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    const/4 v7, -0x1

    #v7=(Byte);
    if-ne v4, v7, :cond_5

    .line 1245
    const/4 v4, 0x1

    #v4=(One);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$6;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$6;);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, p2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, p3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$6;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$6;);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1257
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v7=(Byte);
    new-instance v22, Lorg/json/JSONObject;

    #v22=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v0, v22

    #v0=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v22, event:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);v22=(Reference,Lorg/json/JSONObject;);
    const/4 v14, 0x0

    .line 1261
    .local v14, calendarId:Ljava/lang/String;
    #v14=(Null);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v6, v4, [Ljava/lang/String;

    #v6=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v7, "_id"

    #v7=(Reference,Ljava/lang/String;);
    aput-object v7, v6, v4

    const/4 v4, 0x1

    #v4=(One);
    const-string v7, "name"

    aput-object v7, v6, v4

    .line 1263
    .local v6, projection:[Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    const/16 v7, 0x8

    #v7=(PosByte);
    if-lt v4, v7, :cond_8

    .line 1264
    const-string v4, "content://com.android.calendar/calendars"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1269
    .local v5, calendars:Landroid/net/Uri;
    :goto_1
    #v5=(Reference,Landroid/net/Uri;);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1270
    const-string v7, "selected=1"

    #v7=(Reference,Ljava/lang/String;);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    .line 1269
    #v9=(Null);
    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1271
    .local v29, managedCursor:Landroid/database/Cursor;
    #v29=(Reference,Landroid/database/Cursor;);
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_a

    .line 1274
    const-string v4, "name"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1275
    .local v30, nameColumn:I
    #v30=(Integer);
    const-string v4, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1277
    .local v27, idColumn:I
    :cond_6
    #v1=(Conflicted);v4=(Conflicted);v12=(Conflicted);v13=(Conflicted);v27=(Integer);
    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1278
    .local v13, calName:Ljava/lang/String;
    #v13=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v29

    move/from16 v1, v27

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1280
    .local v12, calId:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    const-string v4, "calendar"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    const-string v4, "calendar"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 1281
    :cond_7
    move-object v14, v12

    .line 1286
    :goto_2
    #v14=(Reference,Ljava/lang/String;);
    if-nez v14, :cond_b

    .line 1287
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "Calendar not found."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1266
    .end local v5           #calendars:Landroid/net/Uri;
    .end local v12           #calId:Ljava/lang/String;
    .end local v13           #calName:Ljava/lang/String;
    .end local v27           #idColumn:I
    .end local v29           #managedCursor:Landroid/database/Cursor;
    .end local v30           #nameColumn:I
    :cond_8
    #v1=(Reference,Ljava/lang/String;);v4=(Integer);v5=(Uninit);v7=(PosByte);v8=(Uninit);v9=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);v27=(Uninit);v29=(Uninit);v30=(Uninit);
    const-string v4, "content://calendar/calendars"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #calendars:Landroid/net/Uri;
    #v5=(Reference,Landroid/net/Uri;);
    goto :goto_1

    .line 1284
    .restart local v12       #calId:Ljava/lang/String;
    .restart local v13       #calName:Ljava/lang/String;
    .restart local v27       #idColumn:I
    .restart local v29       #managedCursor:Landroid/database/Cursor;
    .restart local v30       #nameColumn:I
    :cond_9
    #v1=(Integer);v4=(Boolean);v7=(Reference,Ljava/lang/String;);v8=(Null);v9=(Null);v12=(Reference,Ljava/lang/String;);v13=(Reference,Ljava/lang/String;);v27=(Integer);v29=(Reference,Landroid/database/Cursor;);v30=(Integer);
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1276
    if-nez v4, :cond_6

    goto :goto_2

    .line 1289
    .end local v12           #calId:Ljava/lang/String;
    .end local v13           #calName:Ljava/lang/String;
    .end local v27           #idColumn:I
    .end local v30           #nameColumn:I
    :cond_a
    #v1=(Reference,Ljava/lang/String;);v12=(Uninit);v13=(Uninit);v27=(Uninit);v30=(Uninit);
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "No calendars found."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1292
    .restart local v12       #calId:Ljava/lang/String;
    .restart local v13       #calName:Ljava/lang/String;
    .restart local v27       #idColumn:I
    .restart local v30       #nameColumn:I
    :cond_b
    #v1=(Integer);v4=(Boolean);v12=(Reference,Ljava/lang/String;);v13=(Reference,Ljava/lang/String;);v14=(Reference,Ljava/lang/String;);v27=(Integer);v30=(Integer);
    new-instance v16, Landroid/content/ContentValues;

    #v16=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1293
    .local v16, cv:Landroid/content/ContentValues;
    #v16=(Reference,Landroid/content/ContentValues;);
    const-string v4, "calendar_id"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v4, "hasAlarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_c

    const-string v4, "hasAlarm"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_c

    .line 1295
    const-string v4, "hasAlarm"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1296
    :cond_c
    #v4=(Conflicted);
    const-string v4, "alarms"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_d

    const-string v4, "alarms"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_d

    .line 1297
    const-string v4, "hasAlarm"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    :cond_d
    #v4=(Conflicted);
    const-string v4, "allDay"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_e

    const-string v4, "allDay"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_e

    .line 1299
    const-string v4, "allDay"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    :cond_e
    #v4=(Conflicted);
    const-string v4, "startDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_f

    .line 1301
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "Start date not provided."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1302
    :cond_f
    #v4=(Boolean);
    const-string v4, "endDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_10

    .line 1303
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "End date not provided."

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1304
    :cond_10
    #v4=(Boolean);
    const-string v4, "startDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1305
    .local v18, dateTime:Ljava/lang/String;
    #v18=(Reference,Ljava/lang/String;);
    new-instance v28, Ljava/text/SimpleDateFormat;

    #v28=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v4, "yyyy-MM-dd\'T\'hh:mmZ"

    move-object/from16 v0, v28

    #v0=(UninitRef,Ljava/text/SimpleDateFormat;);
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v28, iso8601Format:Ljava/text/DateFormat;
    #v0=(Reference,Ljava/text/SimpleDateFormat;);v28=(Reference,Ljava/text/SimpleDateFormat;);
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v33

    .line 1307
    .local v33, startDate:Ljava/util/Date;
    #v33=(Reference,Ljava/util/Date;);
    const-string v4, "dtstart"

    invoke-virtual/range {v33 .. v33}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1309
    const-string v4, "endDate"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1310
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    .line 1311
    .local v21, endDate:Ljava/util/Date;
    #v21=(Reference,Ljava/util/Date;);
    const-string v4, "dtend"

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    #v7=(LongLo);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    const-string v4, "location"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_11

    .line 1314
    const-string v4, "eventLocation"

    #v4=(Reference,Ljava/lang/String;);
    const-string v7, "location"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_11
    #v4=(Conflicted);
    const-string v4, "description"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_12

    .line 1316
    const-string v4, "description"

    #v4=(Reference,Ljava/lang/String;);
    const-string v7, "description"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_12
    #v4=(Conflicted);
    const-string v4, "eventTitle"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_13

    .line 1318
    const-string v4, "title"

    #v4=(Reference,Ljava/lang/String;);
    const-string v7, "eventTitle"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_13
    #v4=(Conflicted);
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_16

    .line 1320
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "tentative"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_14

    .line 1321
    const-string v4, "eventStatus"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    :cond_14
    #v4=(Conflicted);
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "confirmed"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_15

    .line 1323
    const-string v4, "eventStatus"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    :cond_15
    #v4=(Conflicted);
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "canceled"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_16

    .line 1325
    const-string v4, "eventStatus"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x2

    #v7=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    :cond_16
    #v4=(Conflicted);
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1a

    .line 1329
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_17

    .line 1330
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    :cond_17
    #v4=(Conflicted);
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "confidential"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_18

    .line 1332
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    :cond_18
    #v4=(Conflicted);
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "private"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_19

    .line 1334
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x2

    #v7=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    :cond_19
    #v4=(Conflicted);
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "public"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1a

    .line 1336
    const-string v4, "visibility"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x3

    #v7=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    :cond_1a
    #v4=(Conflicted);
    const-string v4, "transparency"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1c

    .line 1339
    const-string v4, "transparency"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "opaque"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1b

    .line 1340
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1341
    :cond_1b
    #v4=(Conflicted);
    const-string v4, "transparency"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "transparent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1c

    .line 1342
    const-string v4, "status"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    :cond_1c
    #v4=(Conflicted);
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    const/16 v7, 0x8

    #v7=(PosByte);
    if-lt v4, v7, :cond_1e

    .line 1347
    const-string v4, "content://com.android.calendar/events"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1350
    .local v23, eventsUri:Landroid/net/Uri;
    :goto_3
    #v23=(Reference,Landroid/net/Uri;);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 1351
    .local v15, cr:Landroid/content/ContentResolver;
    #v15=(Reference,Landroid/content/ContentResolver;);
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 1353
    .local v31, newEvent:Landroid/net/Uri;
    #v31=(Reference,Landroid/net/Uri;);
    if-eqz v31, :cond_1d

    const-string v4, "alarms"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1d

    .line 1354
    const-string v4, "alarms"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1356
    .local v11, alarms:Lorg/json/JSONArray;
    #v11=(Reference,Lorg/json/JSONArray;);
    const/16 v24, 0x0

    .local v24, i:I
    :goto_4
    #v10=(Conflicted);v17=(Conflicted);v19=(Conflicted);v24=(Integer);v25=(Conflicted);v26=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    #v4=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    if-lt v0, v4, :cond_1f

    .line 1375
    .end local v11           #alarms:Lorg/json/JSONArray;
    .end local v24           #i:I
    :cond_1d
    #v0=(Conflicted);v4=(Conflicted);v11=(Conflicted);v24=(Conflicted);
    if-eqz p2, :cond_0

    .line 1376
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v7, ""

    #v7=(Reference,Ljava/lang/String;);
    const/4 v8, 0x0

    #v8=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1349
    .end local v15           #cr:Landroid/content/ContentResolver;
    .end local v23           #eventsUri:Landroid/net/Uri;
    .end local v31           #newEvent:Landroid/net/Uri;
    :cond_1e
    #v4=(Integer);v7=(PosByte);v8=(LongHi);v10=(Uninit);v11=(Uninit);v15=(Uninit);v17=(Uninit);v19=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v31=(Uninit);v34=(Uninit);v35=(Uninit);v36=(Uninit);
    const-string v4, "content://calendar/events"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .restart local v23       #eventsUri:Landroid/net/Uri;
    #v23=(Reference,Landroid/net/Uri;);
    goto :goto_3

    .line 1357
    .restart local v11       #alarms:Lorg/json/JSONArray;
    .restart local v15       #cr:Landroid/content/ContentResolver;
    .restart local v24       #i:I
    .restart local v31       #newEvent:Landroid/net/Uri;
    :cond_1f
    #v0=(Integer);v4=(Integer);v10=(Conflicted);v11=(Reference,Lorg/json/JSONArray;);v15=(Reference,Landroid/content/ContentResolver;);v17=(Conflicted);v19=(Conflicted);v24=(Integer);v25=(Conflicted);v26=(Conflicted);v31=(Reference,Landroid/net/Uri;);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1358
    .local v10, alarm:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v28

    #v0=(Reference,Ljava/text/SimpleDateFormat;);
    invoke-virtual {v0, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    .line 1359
    .local v17, date:Ljava/util/Date;
    #v17=(Reference,Ljava/util/Date;);
    invoke-virtual/range {v33 .. v33}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    #v7=(LongLo);
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v35

    #v35=(LongLo);v36=(LongHi);
    sub-long v7, v7, v35

    const-wide/32 v35, 0xea60

    div-long v7, v7, v35

    long-to-int v0, v7

    #v0=(Integer);
    move/from16 v19, v0

    .line 1361
    .local v19, diffInMinute:I
    #v19=(Integer);
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 1362
    .local v25, id:J
    #v25=(LongLo);v26=(LongHi);
    new-instance v34, Landroid/content/ContentValues;

    #v34=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1363
    .local v34, values:Landroid/content/ContentValues;
    #v34=(Reference,Landroid/content/ContentValues;);
    const-string v4, "event_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v34

    #v0=(Reference,Landroid/content/ContentValues;);
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1364
    const-string v4, "method"

    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    const-string v4, "minutes"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1367
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    const/16 v7, 0x8

    #v7=(PosByte);
    if-lt v4, v7, :cond_20

    .line 1368
    const-string v4, "content://com.android.calendar/reminders"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v15, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1356
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1370
    :cond_20
    #v4=(Integer);
    const-string v4, "content://calendar/reminders"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v15, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5
.end method

.method public declared-synchronized calendarGetCalendars(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "callbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 1166
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Ad not yet displayed."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v11

    .line 1223
    .local v11, e:Ljava/lang/Exception;
    #v11=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 1224
    :try_start_1
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);
    monitor-exit p0

    return-void

    .line 1168
    :cond_1
    :try_start_2
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v3, :cond_2

    .line 1169
    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "window.MOBCLIX.calendarGetCalendars(\'"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v16, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v16=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\',\'"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\');"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1165
    .end local v16           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 1174
    :cond_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v6, "android.permission.READ_CALENDAR"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 1175
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Application does not have the READ_CALENDAR permission."

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3

    .line 1176
    :cond_3
    #v3=(Boolean);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    if-nez v3, :cond_4

    .line 1177
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "User declined access to calendar."

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3

    .line 1178
    :cond_4
    #v3=(Integer);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    const/4 v6, -0x1

    #v6=(Byte);
    if-ne v3, v6, :cond_5

    .line 1179
    const/4 v3, 0x0

    #v3=(Null);
    new-instance v6, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, p2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$5;);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1189
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Integer);v6=(Byte);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v5, v3, [Ljava/lang/String;

    #v5=(Reference,[Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v6, "_id"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v5, v3

    const/4 v3, 0x1

    #v3=(One);
    const-string v6, "name"

    aput-object v6, v5, v3

    .line 1191
    .local v5, projection:[Ljava/lang/String;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    const/16 v6, 0x8

    #v6=(PosByte);
    if-lt v3, v6, :cond_9

    .line 1192
    const-string v3, "content://com.android.calendar/calendars"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1197
    .local v4, calendars:Landroid/net/Uri;
    :goto_1
    #v4=(Reference,Landroid/net/Uri;);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1198
    const-string v6, "selected=1"

    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    .line 1197
    #v8=(Null);
    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1199
    .local v14, managedCursor:Landroid/database/Cursor;
    #v14=(Reference,Landroid/database/Cursor;);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1202
    new-instance v13, Ljava/lang/StringBuffer;

    #v13=(UninitRef,Ljava/lang/StringBuffer;);
    const-string v3, "[\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v13, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v13, js:Ljava/lang/StringBuffer;
    #v13=(Reference,Ljava/lang/StringBuffer;);
    const-string v3, "name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1204
    .local v15, nameColumn:I
    #v15=(Integer);
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1205
    .local v12, idColumn:I
    #v12=(Integer);
    const/4 v10, 0x0

    .line 1207
    .local v10, count:I
    :cond_6
    #v3=(Conflicted);v9=(Conflicted);v10=(Integer);
    if-eqz v10, :cond_7

    .line 1208
    const-string v3, "\',\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1209
    :cond_7
    #v3=(Conflicted);
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1211
    .local v9, calName:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    if-eqz v9, :cond_8

    .line 1212
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1213
    :cond_8
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    add-int/lit8 v10, v10, 0x1

    .line 1215
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 1206
    #v3=(Boolean);
    if-nez v3, :cond_6

    .line 1216
    const-string v3, "\']"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1218
    if-eqz p1, :cond_0

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1194
    .end local v4           #calendars:Landroid/net/Uri;
    .end local v9           #calName:Ljava/lang/String;
    .end local v10           #count:I
    .end local v12           #idColumn:I
    .end local v13           #js:Ljava/lang/StringBuffer;
    .end local v14           #managedCursor:Landroid/database/Cursor;
    .end local v15           #nameColumn:I
    :cond_9
    #v1=(Uninit);v3=(Integer);v4=(Uninit);v6=(PosByte);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    const-string v3, "content://calendar/calendars"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .restart local v4       #calendars:Landroid/net/Uri;
    #v4=(Reference,Landroid/net/Uri;);
    goto :goto_1
.end method

.method public declared-synchronized calendarQueryEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 36
    .parameter "eventObject"
    .parameter "eventsCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1387
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v4, v4, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1388
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "Ad not yet displayed."

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-exception v19

    .line 1519
    .local v19, e:Ljava/lang/Exception;
    #v19=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 1520
    :try_start_1
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    #v9=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v8, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    .end local v19           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);v19=(Conflicted);
    monitor-exit p0

    return-void

    .line 1390
    :cond_1
    :try_start_2
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v4, :cond_2

    .line 1391
    new-instance v33, Ljava/lang/StringBuilder;

    #v33=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "window.MOBCLIX.calendarQueryEvents(\'"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v33

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v33, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v33=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\',\'"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\',\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\');"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1387
    .end local v33           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v4

    .line 1396
    :cond_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v8, "android.permission.READ_CALENDAR"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 1397
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "Application does not have the READ_CALENDAR permission."

    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1398
    :cond_3
    #v4=(Boolean);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    if-nez v4, :cond_4

    .line 1399
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "User declined access to calendar."

    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1400
    :cond_4
    #v4=(Integer);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    const/4 v8, -0x1

    #v8=(Byte);
    if-ne v4, v8, :cond_5

    .line 1401
    const/4 v4, 0x0

    #v4=(Null);
    new-instance v8, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$7;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$7;);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, p2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, p3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v8, v0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$7;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$7;);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1412
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v8=(Byte);
    new-instance v32, Lorg/json/JSONObject;

    #v32=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v0, v32

    #v0=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v32, query:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);v32=(Reference,Lorg/json/JSONObject;);
    new-instance v27, Ljava/text/SimpleDateFormat;

    #v27=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v4, "yyyy-MM-dd\'T\'hh:mmZ"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v27

    #v0=(UninitRef,Ljava/text/SimpleDateFormat;);
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v27, iso8601Format:Ljava/text/DateFormat;
    #v0=(Reference,Ljava/text/SimpleDateFormat;);v27=(Reference,Ljava/text/SimpleDateFormat;);
    const-wide/16 v34, 0x0

    .line 1415
    .local v34, startDate:J
    #v34=(LongLo);v35=(LongHi);
    const-wide/16 v21, 0x0

    .line 1416
    .local v21, endDate:J
    #v21=(LongLo);v22=(LongHi);
    const/16 v16, 0x0

    .line 1417
    .local v16, calendar:Ljava/lang/String;
    #v16=(Null);
    const-string v4, "startDate"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 1418
    const-string v4, "startDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    .line 1419
    :cond_6
    #v4=(Conflicted);
    const-string v4, "endDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 1420
    const-string v4, "endDate"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 1421
    :cond_7
    #v4=(Conflicted);
    const-string v4, "calendar"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_8

    .line 1422
    const-string v4, "calendar"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1423
    :cond_8
    #v4=(Conflicted);v16=(Reference,Ljava/lang/String;);
    const-wide/16 v8, 0x0

    #v8=(LongLo);v9=(LongHi);
    cmp-long v4, v34, v8

    #v4=(Byte);
    if-nez v4, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v4, v21, v8

    if-nez v4, :cond_9

    if-nez v16, :cond_9

    .line 1424
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "No query parameters supplied."

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1426
    :cond_9
    #v4=(Byte);v8=(LongLo);
    new-instance v17, Ljava/util/HashMap;

    #v17=(UninitRef,Ljava/util/HashMap;);
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1428
    .local v17, calendars:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v17=(Reference,Ljava/util/HashMap;);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v6, v4, [Ljava/lang/String;

    #v6=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v8, "_id"

    #v8=(Reference,Ljava/lang/String;);
    aput-object v8, v6, v4

    const/4 v4, 0x1

    #v4=(One);
    const-string v8, "name"

    aput-object v8, v6, v4

    .line 1430
    .local v6, projection:[Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    const/16 v8, 0x8

    #v8=(PosByte);
    if-lt v4, v8, :cond_d

    .line 1431
    const-string v4, "content://com.android.calendar/calendars"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1436
    .local v5, calendarUri:Landroid/net/Uri;
    :goto_1
    #v5=(Reference,Landroid/net/Uri;);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1437
    const-string v7, "selected=1"

    #v7=(Reference,Ljava/lang/String;);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    .line 1436
    #v9=(Null);
    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1438
    .local v28, managedCursor:Landroid/database/Cursor;
    #v28=(Reference,Landroid/database/Cursor;);
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_f

    .line 1441
    const-string v4, "name"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1442
    .local v29, nameColumn:I
    #v29=(Integer);
    const-string v4, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1443
    .local v26, idColumn:I
    #v26=(Integer);
    const/16 v18, 0x0

    .line 1445
    .local v18, count:I
    :cond_a
    #v1=(Conflicted);v4=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Null);
    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1446
    .local v15, calName:Ljava/lang/String;
    #v15=(Reference,Ljava/lang/String;);
    if-nez v15, :cond_b

    .line 1447
    const-string v15, "null"

    .line 1448
    :cond_b
    move-object/from16 v0, v28

    move/from16 v1, v26

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1450
    .local v14, calId:Ljava/lang/String;
    #v14=(Reference,Ljava/lang/String;);
    if-eqz v16, :cond_e

    .line 1451
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_c

    .line 1452
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    :cond_c
    :goto_2
    #v4=(Conflicted);
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1444
    #v4=(Boolean);
    if-nez v4, :cond_a

    .line 1459
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1460
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "Calendar not found."

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1433
    .end local v5           #calendarUri:Landroid/net/Uri;
    .end local v14           #calId:Ljava/lang/String;
    .end local v15           #calName:Ljava/lang/String;
    .end local v18           #count:I
    .end local v26           #idColumn:I
    .end local v28           #managedCursor:Landroid/database/Cursor;
    .end local v29           #nameColumn:I
    :cond_d
    #v1=(Reference,Ljava/lang/String;);v4=(Integer);v5=(Uninit);v7=(Uninit);v8=(PosByte);v9=(LongHi);v14=(Uninit);v15=(Uninit);v18=(Uninit);v26=(Uninit);v28=(Uninit);v29=(Uninit);
    const-string v4, "content://calendar/calendars"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #calendarUri:Landroid/net/Uri;
    #v5=(Reference,Landroid/net/Uri;);
    goto :goto_1

    .line 1455
    .restart local v14       #calId:Ljava/lang/String;
    .restart local v15       #calName:Ljava/lang/String;
    .restart local v18       #count:I
    .restart local v26       #idColumn:I
    .restart local v28       #managedCursor:Landroid/database/Cursor;
    .restart local v29       #nameColumn:I
    :cond_e
    #v1=(Integer);v4=(Conflicted);v7=(Reference,Ljava/lang/String;);v8=(Null);v9=(Null);v14=(Reference,Ljava/lang/String;);v15=(Reference,Ljava/lang/String;);v18=(Null);v26=(Integer);v28=(Reference,Landroid/database/Cursor;);v29=(Integer);
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1462
    .end local v14           #calId:Ljava/lang/String;
    .end local v15           #calName:Ljava/lang/String;
    .end local v18           #count:I
    .end local v26           #idColumn:I
    .end local v29           #nameColumn:I
    :cond_f
    #v1=(Reference,Ljava/lang/String;);v4=(Boolean);v14=(Uninit);v15=(Uninit);v18=(Uninit);v26=(Uninit);v29=(Uninit);
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v8, "No calendars found."

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4

    .line 1465
    .restart local v14       #calId:Ljava/lang/String;
    .restart local v15       #calName:Ljava/lang/String;
    .restart local v18       #count:I
    .restart local v26       #idColumn:I
    .restart local v29       #nameColumn:I
    :cond_10
    #v1=(Integer);v4=(Boolean);v8=(Null);v14=(Reference,Ljava/lang/String;);v15=(Reference,Ljava/lang/String;);v18=(Null);v26=(Integer);v29=(Integer);
    new-instance v24, Lorg/json/JSONArray;

    #v24=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 1467
    .local v24, events:Lorg/json/JSONArray;
    #v24=(Reference,Lorg/json/JSONArray;);
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    #v4=(Reference,Ljava/util/Set;);
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    #v1=(Conflicted);v8=(Boolean);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v19=(Conflicted);v23=(Conflicted);v25=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_12

    .line 1511
    if-eqz p2, :cond_0

    .line 1512
    new-instance v20, Ljava/lang/StringBuilder;

    #v20=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "eval(\'("

    move-object/from16 v0, v20

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v20, ee:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v20=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const-string v4, ")\')"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v8, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1467
    .end local v20           #ee:Ljava/lang/StringBuilder;
    :cond_12
    #v1=(Conflicted);v8=(Boolean);v9=(Conflicted);v20=(Uninit);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    #v25=(Reference,Ljava/lang/Object;);
    check-cast v25, Ljava/lang/String;

    .line 1469
    .local v25, id:Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    #v8=(Integer);
    const/16 v9, 0x8

    #v9=(PosByte);
    if-lt v8, v9, :cond_18

    .line 1470
    const-string v8, "content://com.android.calendar/instances/when"

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 1473
    .local v13, builder:Landroid/net/Uri$Builder;
    :goto_3
    #v13=(Reference,Landroid/net/Uri$Builder;);
    new-instance v8, Ljava/util/Date;

    #v8=(UninitRef,Ljava/util/Date;);
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    #v8=(Reference,Ljava/util/Date;);
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    .line 1475
    .local v30, now:J
    #v30=(LongLo);v31=(LongHi);
    const-wide/16 v8, 0x0

    #v8=(LongLo);v9=(LongHi);
    cmp-long v8, v34, v8

    #v8=(Byte);
    if-eqz v8, :cond_19

    .line 1476
    move-wide/from16 v0, v34

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1479
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);
    const-wide/16 v8, 0x0

    #v8=(LongLo);
    cmp-long v8, v21, v8

    #v8=(Byte);
    if-eqz v8, :cond_1a

    .line 1480
    move-wide/from16 v0, v21

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1484
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v8, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v8=(Reference,Landroid/app/Activity;);
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1485
    .local v7, cr:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 1486
    const/16 v9, 0xa

    #v9=(PosByte);
    new-array v9, v9, [Ljava/lang/String;

    #v9=(Reference,[Ljava/lang/String;);
    const/4 v10, 0x0

    #v10=(Null);
    const-string v11, "hasAlarm"

    #v11=(Reference,Ljava/lang/String;);
    aput-object v11, v9, v10

    const/4 v10, 0x1

    #v10=(One);
    const-string v11, "allDay"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    #v10=(PosByte);
    const-string v11, "begin"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "end"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "eventLocation"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "description"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "eventStatus"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "visibility"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "transparency"

    aput-object v11, v9, v10

    .line 1487
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v11, "Calendars._id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1488
    const/4 v11, 0x0

    #v11=(Null);
    const-string v12, "startDay ASC, startMinute ASC"

    .line 1485
    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1490
    .local v23, eventCursor:Landroid/database/Cursor;
    :goto_6
    #v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v23=(Reference,Landroid/database/Cursor;);
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_11

    .line 1491
    new-instance v19, Lorg/json/JSONObject;

    #v19=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 1492
    .local v19, e:Lorg/json/JSONObject;
    #v19=(Reference,Lorg/json/JSONObject;);
    const-string v8, "calendar"

    #v8=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1493
    const/4 v8, 0x0

    #v8=(Null);
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_13

    .line 1494
    const-string v8, "hasAlarm"

    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    #v9=(Integer);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1495
    :cond_13
    #v9=(Conflicted);
    const/4 v8, 0x1

    #v8=(One);
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_14

    .line 1496
    const-string v8, "allDay"

    const/4 v9, 0x1

    #v9=(One);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    #v9=(Integer);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1497
    :cond_14
    #v9=(Conflicted);
    const-string v8, "startDate"

    new-instance v9, Ljava/util/Date;

    #v9=(UninitRef,Ljava/util/Date;);
    const/4 v10, 0x2

    #v10=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    #v10=(LongLo);v11=(LongHi);
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    #v9=(Reference,Ljava/util/Date;);
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1498
    const-string v8, "endDate"

    new-instance v9, Ljava/util/Date;

    #v9=(UninitRef,Ljava/util/Date;);
    const/4 v10, 0x3

    #v10=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    #v10=(LongLo);
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    #v9=(Reference,Ljava/util/Date;);
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1499
    const/4 v8, 0x4

    #v8=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_15

    .line 1500
    const-string v8, "location"

    const/4 v9, 0x4

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1501
    :cond_15
    const/4 v8, 0x5

    #v8=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_16

    .line 1502
    const-string v8, "description"

    const/4 v9, 0x5

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1503
    :cond_16
    const/4 v8, 0x6

    #v8=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_17

    .line 1504
    const-string v8, "eventTitle"

    const/4 v9, 0x6

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1505
    :cond_17
    const-string v8, "status"

    const/4 v9, 0x7

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    #v9=(Integer);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1506
    const-string v8, "visibility"

    const/16 v9, 0x8

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    #v9=(Integer);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1507
    const-string v8, "transparency"

    const/16 v9, 0x9

    #v9=(PosByte);
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    #v9=(Integer);
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1508
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    .line 1472
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v13           #builder:Landroid/net/Uri$Builder;
    .end local v19           #e:Lorg/json/JSONObject;
    .end local v23           #eventCursor:Landroid/database/Cursor;
    .end local v30           #now:J
    :cond_18
    #v1=(Conflicted);v8=(Integer);v9=(PosByte);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v19=(Conflicted);v23=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    const-string v8, "content://calendar/instances/when"

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .restart local v13       #builder:Landroid/net/Uri$Builder;
    #v13=(Reference,Landroid/net/Uri$Builder;);
    goto/16 :goto_3

    .line 1478
    .restart local v30       #now:J
    :cond_19
    #v8=(Byte);v9=(LongHi);v30=(LongLo);v31=(LongHi);
    const-wide v8, 0xc92a69c000L

    #v8=(LongLo);
    sub-long v8, v30, v8

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    goto/16 :goto_4

    .line 1482
    :cond_1a
    #v0=(Conflicted);v8=(Byte);
    const-wide v8, 0xc92a69c000L

    #v8=(LongLo);
    add-long v8, v8, v30

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5
.end method

.method callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "callbackFunctionName"
    .parameter "value"
    .parameter "addQuotes"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "javascript:"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, js:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    if-eqz p3, :cond_0

    .line 255
    const-string v1, "(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    if-eqz p3, :cond_1

    .line 262
    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 257
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public declared-synchronized cameraTakePhoto(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v5, v5, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 681
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Ad not yet displayed."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    .line 707
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    if-eqz p4, :cond_0

    .line 708
    :try_start_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p4, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 683
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v5, :cond_2

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "window.MOBCLIX.cameraTakePhoto("

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .local v4, s:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 680
    .end local v4           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v5

    .line 689
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v2, mIntent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, packageName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 695
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    .line 696
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    .line 697
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    .line 698
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v6, v5, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 700
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 701
    .local v0, a:Landroid/content/Context;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v5, :cond_3

    .line 702
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 703
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 705
    :cond_3
    #v6=(Conflicted);
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method declared-synchronized checkPermissionsForUserInteraction(Ljava/lang/String;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "javascript:window.MOBCLIX.checkPermissionsForUserInteractionResponse(mAdViewPermissionsKey, \""

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 318
    .end local v0           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkPermissionsForUserInteractionResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->uniqueKey:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    .line 327
    if-eqz p2, :cond_0

    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "javascript:"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v0           #s:Ljava/lang/StringBuilder;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 10
    .parameter "permission"
    .parameter "positiveButtonListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 273
    :try_start_0
    #v9=(Null);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 274
    .local v2, currentActivity:Landroid/content/Context;
    #v2=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 277
    :cond_0
    const-string v4, ""

    .line 278
    .local v4, message:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    if-nez p1, :cond_2

    .line 279
    const-string v4, "Do you want to allow this ad to access your calendar?"

    .line 287
    :cond_1
    :goto_0
    #v5=(Conflicted);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 289
    #v5=(Reference,Landroid/app/AlertDialog$Builder;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 290
    const-string v6, "Yes"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 291
    const-string v6, "No"

    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Integer;);
    invoke-direct {v7, p0, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$1;);
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 297
    .local v0, alert:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void

    .line 280
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const/4 v5, 0x1

    #v5=(One);
    if-ne p1, v5, :cond_3

    .line 281
    const-string v4, "Do you want to allow this ad to add a calendar event?"

    goto :goto_0

    .line 282
    :cond_3
    const/4 v5, 0x2

    #v5=(PosByte);
    if-ne p1, v5, :cond_4

    .line 283
    const-string v4, "Do you want to allow this ad to access your contacts?"

    goto :goto_0

    .line 284
    :cond_4
    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 285
    const-string v4, "Do you want to allow this ad to add a contact?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v2           #currentActivity:Landroid/content/Context;
    .end local v4           #message:Ljava/lang/String;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v3

    .line 299
    .local v3, e:Ljava/lang/Exception;
    #v3=(Reference,Ljava/lang/Exception;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v5=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5
.end method

.method declared-synchronized contactAdded()V
    .locals 4

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 1647
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized contactCanceled(Ljava/lang/String;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 1675
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v1, p1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 1675
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized contactPicked(Landroid/net/Uri;)V
    .locals 7
    .parameter "contactUri"

    .prologue
    .line 1654
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1655
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v3, :cond_0

    .line 1656
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1659
    :cond_0
    #v4=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->mMobclixContacts:Lcom/mobclix/android/sdk/MobclixContacts;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #v4=(Reference,Landroid/content/ContentResolver;);
    invoke-virtual {v3, v4, p1}, Lcom/mobclix/android/sdk/MobclixContacts;->loadContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1660
    .local v2, contact:Lorg/json/JSONObject;
    #v2=(Reference,Lorg/json/JSONObject;);
    if-nez v2, :cond_2

    .line 1661
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1662
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    const-string v5, "Error getting contact."

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {p0, v4, v5, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    :cond_1
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    monitor-exit p0

    return-void

    .line 1666
    :cond_2
    :try_start_1
    #v1=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "eval(\'("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v1, c:Ljava/lang/StringBuilder;
    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    const-string v3, ")\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p0, v4, v5, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1654
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #c:Ljava/lang/StringBuilder;
    .end local v2           #contact:Lorg/json/JSONObject;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized contactsAddContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "contactObject"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    const/4 v11, 0x5

    .line 1528
    #v11=(PosByte);
    monitor-enter p0

    const/4 v8, 0x0

    .line 1530
    .local v8, useLegacyContactsAPI:Z
    :try_start_0
    #v8=(Null);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v9, v9, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v9=(Boolean);
    if-nez v9, :cond_1

    .line 1531
    new-instance v9, Ljava/lang/Exception;

    #v9=(UninitRef,Ljava/lang/Exception;);
    const-string v10, "Ad not yet displayed."

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/Exception;);
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Boolean);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v3

    .line 1594
    .local v3, e:Ljava/lang/Exception;
    #v3=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 1595
    :try_start_1
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-static {v10}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    #v11=(One);
    invoke-virtual {p0, p3, v10, v11}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1597
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v3=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    monitor-exit p0

    return-void

    .line 1533
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);v9=(Boolean);v10=(Uninit);v11=(PosByte);
    iget-boolean v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v9, :cond_2

    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v9, "window.MOBCLIX.contactsAddContact(\'"

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v6, s:Ljava/lang/StringBuilder;
    #v6=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',\'"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1528
    .end local v6           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Boolean);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v9

    #v9=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v9

    .line 1540
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);v9=(Boolean);v10=(Uninit);v11=(PosByte);
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1541
    .local v7, sdkVersion:I
    #v7=(Integer);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v9, v9, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v10, "android.permission.WRITE_CONTACTS"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_3

    if-ge v7, v11, :cond_3

    .line 1542
    new-instance v9, Ljava/lang/Exception;

    #v9=(UninitRef,Ljava/lang/Exception;);
    const-string v10, "Application does not have the WRITE_CONTACTS permission."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/Exception;);
    throw v9

    .line 1544
    :cond_3
    #v9=(Boolean);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v9=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v10, "android.permission.READ_CONTACTS"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_4

    .line 1545
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v9=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v9, v9, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v10, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_5

    .line 1546
    :cond_4
    const/4 v8, 0x1

    .line 1547
    :cond_5
    #v8=(Boolean);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v9=(Reference,Ljava/util/HashMap;);
    const/4 v10, 0x3

    #v10=(PosByte);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_6

    .line 1548
    new-instance v9, Ljava/lang/Exception;

    #v9=(UninitRef,Ljava/lang/Exception;);
    const-string v10, "User declined access to contacts."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/Exception;);
    throw v9

    .line 1549
    :cond_6
    #v9=(Integer);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v9=(Reference,Ljava/util/HashMap;);
    const/4 v10, 0x3

    #v10=(PosByte);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    #v9=(Integer);
    const/4 v10, -0x1

    #v10=(Byte);
    if-ne v9, v10, :cond_7

    .line 1550
    const/4 v9, 0x3

    #v9=(PosByte);
    new-instance v10, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$8;

    #v10=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$8;);
    invoke-direct {v10, p0, p1, p2, p3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$8;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$8;);
    invoke-virtual {p0, v9, v10}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1561
    :cond_7
    #v9=(Integer);v10=(Byte);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1562
    .local v2, currentActivity:Landroid/app/Activity;
    #v2=(Reference,Landroid/app/Activity;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v9, :cond_8

    .line 1563
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .end local v2           #currentActivity:Landroid/app/Activity;
    check-cast v2, Landroid/app/Activity;

    .line 1564
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v1, contact:Lorg/json/JSONObject;
    #v1=(Reference,Lorg/json/JSONObject;);
    if-ge v7, v11, :cond_9

    .line 1567
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->mMobclixContacts:Lcom/mobclix/android/sdk/MobclixContacts;

    invoke-virtual {v9, v1, v2}, Lcom/mobclix/android/sdk/MobclixContacts;->addContact(Lorg/json/JSONObject;Landroid/app/Activity;)V

    .line 1590
    :goto_1
    if-eqz p2, :cond_0

    .line 1591
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v10, ""

    #v10=(Reference,Ljava/lang/String;);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {p0, p2, v10, v11}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1569
    :cond_9
    #v10=(Byte);v11=(PosByte);
    if-nez v8, :cond_a

    .line 1570
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->mMobclixContacts:Lcom/mobclix/android/sdk/MobclixContacts;

    invoke-virtual {v9, v1, v2}, Lcom/mobclix/android/sdk/MobclixContacts;->addContact(Lorg/json/JSONObject;Landroid/app/Activity;)V

    goto :goto_1

    .line 1572
    :cond_a
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1573
    .local v4, mIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1574
    .local v5, packageName:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v10, v9, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1575
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    .line 1576
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    .line 1577
    const-class v9, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1578
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #v11=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    const-string v11, ".type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "addContact"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1579
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    const-string v11, ".data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1582
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v9, :cond_b

    .line 1583
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v10, 0x1

    #v10=(One);
    iput-boolean v10, v9, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1585
    :cond_b
    #v10=(Conflicted);
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized contactsGetContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1602
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v5, v5, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1603
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Ad not yet displayed."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    .line 1642
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 1643
    :try_start_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p2, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 1605
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v5, :cond_2

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "window.MOBCLIX.contactsGetContact(\'"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v4, s:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1602
    .end local v4           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v5

    .line 1611
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v6, "android.permission.READ_CONTACTS"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_3

    .line 1612
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Application does not have the READ_CONTACTS permission."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5

    .line 1613
    :cond_3
    #v5=(Boolean);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v5=(Reference,Ljava/util/HashMap;);
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_4

    .line 1614
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "User declined access to contacts."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5

    .line 1615
    :cond_4
    #v5=(Integer);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userPermissions:Ljava/util/HashMap;

    #v5=(Reference,Ljava/util/HashMap;);
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    const/4 v6, -0x1

    #v6=(Byte);
    if-ne v5, v6, :cond_5

    .line 1616
    const/4 v5, 0x2

    #v5=(PosByte);
    new-instance v6, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$9;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$9;);
    invoke-direct {v6, p0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$9;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$9;);
    invoke-virtual {p0, v5, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkUserPermission(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1625
    :cond_5
    #v5=(Integer);v6=(Byte);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1626
    .local v2, mIntent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1627
    .local v3, packageName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1628
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "contact"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v6, v5, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1631
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactCallbackFunctionName:Ljava/lang/String;

    .line 1632
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->contactErrorCallbackFunctionName:Ljava/lang/String;

    .line 1635
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1636
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v5, :cond_6

    .line 1637
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1639
    :cond_6
    #v6=(Conflicted);
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized deviceAccelerometerAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 730
    const-string v0, "true"

    .line 733
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 732
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 729
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "alertTitle"
    .parameter "alertMessage"
    .parameter "callbackFunctionName"
    .parameter "buttonTitles"

    .prologue
    const/4 v10, 0x2

    #v10=(PosByte);
    const/4 v9, 0x1

    .line 884
    #v9=(One);
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v6, v6, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 885
    new-instance v6, Ljava/lang/Exception;

    #v6=(UninitRef,Ljava/lang/Exception;);
    const-string v7, "Ad not yet displayed."

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/Exception;);
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v4

    .line 935
    :cond_0
    :goto_0
    #v4=(Conflicted);
    monitor-exit p0

    return-void

    .line 887
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v6, :cond_2

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "window.MOBCLIX.deviceAlert(\'"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    .local v5, s:Ljava/lang/StringBuilder;
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 890
    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 884
    .end local v5           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v6

    #v6=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v6

    .line 894
    :cond_2
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 895
    .local v3, currentActivity:Landroid/content/Context;
    #v3=(Reference,Landroid/app/Activity;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v6, :cond_3

    .line 896
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 898
    :cond_3
    if-eqz p4, :cond_0

    .line 900
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 903
    const-string v6, "\\|"

    invoke-virtual {p4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, buttons:[Ljava/lang/String;
    #v2=(Reference,[Ljava/lang/String;);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 906
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 907
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 908
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 909
    array-length v6, v2

    #v6=(Integer);
    if-lez v6, :cond_4

    .line 910
    const/4 v6, 0x0

    #v6=(Null);
    aget-object v6, v2, v6

    #v6=(Reference,Ljava/lang/String;);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;);
    const/4 v8, 0x0

    #v8=(Null);
    aget-object v8, v2, v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, p0, p3, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$2;);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    :cond_4
    #v6=(Conflicted);v8=(Conflicted);
    array-length v6, v2

    #v6=(Integer);
    if-le v6, v9, :cond_5

    .line 917
    const/4 v6, 0x1

    #v6=(One);
    aget-object v6, v2, v6

    #v6=(Reference,Ljava/lang/String;);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$3;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$3;);
    const/4 v8, 0x1

    #v8=(One);
    aget-object v8, v2, v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, p0, p3, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$3;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$3;);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 923
    :cond_5
    #v6=(Conflicted);v8=(Conflicted);
    array-length v6, v2

    #v6=(Integer);
    if-le v6, v10, :cond_6

    .line 924
    const/4 v6, 0x2

    #v6=(PosByte);
    aget-object v6, v2, v6

    #v6=(Reference,Ljava/lang/String;);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$4;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$4;);
    const/4 v8, 0x2

    #v8=(PosByte);
    aget-object v8, v2, v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, p0, p3, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$4;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/Object;Ljava/lang/Object;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$4;);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 930
    :cond_6
    #v6=(Conflicted);v8=(Conflicted);
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 931
    .local v0, alert:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized deviceBatteryState(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getBatteryLevel()I

    move-result v1

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_1

    .line 942
    const-string v0, "\'unavailable\'"

    .line 945
    .local v0, value:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v2=(Integer);
    if-eqz p1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 944
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Integer);v2=(Byte);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getBatteryLevel()I

    move-result v1

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    const/high16 v2, 0x42c8

    #v2=(Integer);
    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 941
    .end local v0           #value:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceCalendarReadAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v2, "android.permission.READ_CALENDAR"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 803
    const-string v0, "true"

    .line 806
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 805
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 802
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceCalendarWriteAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 813
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v2, "android.permission.WRITE_CALENDAR"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 814
    const-string v0, "true"

    .line 817
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 816
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 813
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    const-string v0, "false"

    .line 786
    .local v0, b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v2, "android.permission.CAMERA"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 787
    const-string v0, "true"

    .line 788
    :cond_0
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixUtility;->isSdPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    const-string v0, "false"

    .line 790
    :cond_1
    if-eqz p1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :cond_2
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 785
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceConnectionType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 975
    monitor-enter p0

    if-nez p1, :cond_1

    .line 989
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 977
    :cond_1
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 978
    if-eqz p2, :cond_2

    .line 979
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v1, "App does not have the ACCESS_NETWORK_STATE permission."

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p2, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 975
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0

    .line 982
    :cond_2
    :try_start_1
    #v0=(Boolean);v1=(Reference,Ljava/lang/String;);v2=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 983
    if-eqz p2, :cond_3

    .line 984
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v1, "Error getting connection type."

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p2, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_3
    #v0=(Boolean);v2=(Uninit);
    if-eqz p1, :cond_0

    .line 988
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized deviceContactsWriteAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 824
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v2, "android.permission.WRITE_CONTACTS"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 825
    const-string v0, "true"

    .line 828
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 827
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 824
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceCurrentOrientation(Ljava/lang/String;)V
    .locals 6
    .parameter "callbackFunctionName"

    .prologue
    .line 1040
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1057
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    return-void

    .line 1042
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1043
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .end local v0           #a:Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 1046
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    #v1=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1047
    .local v1, dm:Landroid/util/DisplayMetrics;
    #v1=(Reference,Landroid/util/DisplayMetrics;);
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1048
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1049
    .local v2, orientation:I
    #v2=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v2, v3, :cond_2

    .line 1050
    const/4 v2, 0x0

    .line 1053
    :goto_1
    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 1054
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v4, "landscape"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {p0, p1, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1040
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #orientation:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 1052
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #orientation:I
    :cond_2
    #v0=(Reference,Landroid/app/Activity;);v1=(Reference,Landroid/util/DisplayMetrics;);v2=(Integer);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_1

    .line 1056
    :cond_3
    :try_start_1
    #v2=(Boolean);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v4, "portrait"

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {p0, p1, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized deviceDeviceMotionAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 754
    const-string v0, "true"

    .line 757
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 756
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 753
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceEmailAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 845
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v1, "true"

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 845
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceFlashlightAvailable(Ljava/lang/String;)V
    .locals 1
    .parameter "callbackFunctionName"

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceCameraAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceFlashlightOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "callbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1141
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "Ad not yet displayed."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 1154
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 1155
    :try_start_1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {p0, p2, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return-void

    .line 1143
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v2, :cond_2

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "window.MOBCLIX.deviceFlashlightOff(\'"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, s:Ljava/lang/StringBuilder;
    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1140
    .end local v1           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 1149
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    const/4 v2, 0x0

    :try_start_3
    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceFlashlightPause(Z)V

    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, p1, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized deviceFlashlightOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "callbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1094
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "Ad not yet displayed."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 1107
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 1108
    :try_start_1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {p0, p2, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return-void

    .line 1096
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v2, :cond_2

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "window.MOBCLIX.deviceFlashlightOn(\'"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v1, s:Ljava/lang/StringBuilder;
    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1093
    .end local v1           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 1102
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceFlashlightResume()V

    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, p1, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method declared-synchronized deviceFlashlightPause(Z)V
    .locals 8
    .parameter "pausing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v4, "android.permission.CAMERA"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 1115
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "Application does not have the CAMERA permission."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 1116
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Reference,Ljava/lang/String;);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    #v3=(Reference,Landroid/hardware/Camera;);
    if-nez v3, :cond_1

    .line 1117
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "Flashlight isn\'t on."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3

    .line 1118
    :cond_1
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1119
    .local v2, p:Landroid/hardware/Camera$Parameters;
    #v2=(Reference,Landroid/hardware/Camera$Parameters;);
    const-string v1, "auto"

    .line 1120
    .local v1, mode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashMode:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 1121
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashMode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1126
    :cond_2
    :try_start_2
    const-class v3, Landroid/hardware/Camera$Parameters;

    #v3=(Reference,Ljava/lang/Class;);
    const-string v4, "setFlashMode"

    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Class;

    #v5=(Reference,[Ljava/lang/Class;);
    const/4 v6, 0x0

    #v6=(Null);
    const-class v7, Ljava/lang/String;

    #v7=(Reference,Ljava/lang/Class;);
    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1127
    .local v0, m:Ljava/lang/reflect/Method;
    #v0=(Reference,Ljava/lang/reflect/Method;);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1129
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_3
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1130
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 1131
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    .line 1133
    if-nez p1, :cond_3

    .line 1134
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashlightOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1135
    :cond_3
    monitor-exit p0

    return-void

    .line 1128
    :catch_0
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method declared-synchronized deviceFlashlightResume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1063
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v3, "android.permission.CAMERA"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 1064
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "Application does not have the CAMERA permission."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 1065
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Reference,Ljava/lang/String;);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    #v2=(Reference,Landroid/hardware/Camera;);
    if-eqz v2, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 1067
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    .line 1068
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1070
    .local v1, p:Landroid/hardware/Camera$Parameters;
    #v1=(Reference,Landroid/hardware/Camera$Parameters;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashMode:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 1074
    :try_start_2
    const-class v2, Landroid/hardware/Camera$Parameters;

    #v2=(Reference,Ljava/lang/Class;);
    const-string v3, "getFlashMode"

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Class;

    #v4=(Reference,[Ljava/lang/Class;);
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1075
    .local v0, m:Ljava/lang/reflect/Method;
    #v0=(Reference,Ljava/lang/reflect/Method;);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashMode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1081
    .end local v0           #m:Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    :try_start_3
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    const-class v2, Landroid/hardware/Camera$Parameters;

    #v2=(Reference,Ljava/lang/Class;);
    const-string v3, "setFlashMode"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Class;

    #v4=(Reference,[Ljava/lang/Class;);
    const/4 v5, 0x0

    #v5=(Null);
    const-class v6, Ljava/lang/String;

    #v6=(Reference,Ljava/lang/Class;);
    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1082
    .restart local v0       #m:Ljava/lang/reflect/Method;
    #v0=(Reference,Ljava/lang/reflect/Method;);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "torch"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1085
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_1
    :try_start_4
    #v0=(Conflicted);v3=(Reference,Ljava/lang/String;);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1087
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashlightOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1088
    monitor-exit p0

    return-void

    .line 1083
    :catch_0
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 1076
    :catch_1
    #v2=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public declared-synchronized deviceGPSAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    if-eqz v1, :cond_2

    .line 765
    :cond_0
    const-string v0, "true"

    .line 768
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 767
    .end local v0           #b:Ljava/lang/String;
    :cond_2
    :try_start_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 764
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceGyroscopeAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 742
    const-string v0, "true"

    .line 745
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 744
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 741
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceHardwareModel(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 969
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 969
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 993
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 993
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceLocale(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 999
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 999
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceMagnetometerAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 776
    const-string v0, "true"

    .line 779
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 778
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 775
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceModel(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 957
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 957
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceMotionStart(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "updateInterval"
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 418
    monitor-enter p0

    const/4 v1, 0x3

    #v1=(PosByte);
    move-object v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move v2, p1

    #v2=(Float);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move-object v4, p3

    #v4=(Reference,Ljava/lang/String;);
    move-object v5, p4

    :try_start_0
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStart(IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceMotionStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 422
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    #v0=(PosByte);
    invoke-virtual {p0, v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized devicePlatform(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 1011
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 1011
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceSMSAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 851
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v1, "true"

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 851
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceScalingFactor(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 1005
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 1005
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceScreenDensity(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 1034
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 1034
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceScreenSize(Ljava/lang/String;)V
    .locals 8
    .parameter "callbackFunctionName"

    .prologue
    .line 1017
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1030
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 1019
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1020
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v5, :cond_1

    .line 1021
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .end local v0           #a:Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 1023
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    #v1=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1024
    .local v1, dm:Landroid/util/DisplayMetrics;
    #v1=(Reference,Landroid/util/DisplayMetrics;);
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1025
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1026
    .local v3, screenWidth:I
    #v3=(Integer);
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1027
    .local v2, screenHeight:I
    #v2=(Integer);
    new-instance v4, Ljava/lang/StringBuffer;

    #v4=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1028
    .local v4, value:Ljava/lang/StringBuffer;
    #v4=(Reference,Ljava/lang/StringBuffer;);
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1029
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p0, p1, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1017
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    .end local v4           #value:Ljava/lang/StringBuffer;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized deviceShakeListeningAvailable(Ljava/lang/String;)V
    .locals 1
    .parameter "callbackFunctionName"

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceAccelerometerAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    monitor-exit p0

    return-void

    .line 857
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceSystemVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 963
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 963
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceUniqueId(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 951
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p1, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 951
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceVibrate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 864
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "Ad not yet displayed."

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 877
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 878
    :try_start_1
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {p0, p2, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    return-void

    .line 866
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    iget-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v3, :cond_2

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "window.MOBCLIX.deviceVibrate(\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .local v1, s:Ljava/lang/StringBuilder;
    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 863
    .end local v1           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 872
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v4, "android.permission.VIBRATE"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 873
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "No permission to vibrate."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3

    .line 874
    :cond_3
    #v3=(Boolean);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Landroid/os/Vibrator;

    .line 875
    .local v2, v:Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized deviceVibrateAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackFunctionName"

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->permissions:Ljava/util/HashMap;

    const-string v2, "android.permission.VIBRATE"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 836
    const-string v0, "true"

    .line 839
    .local v0, b:Ljava/lang/String;
    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    if-eqz p1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_0
    #v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 838
    .end local v0           #b:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Boolean);
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #b:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 835
    .end local v0           #b:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized displayContractAd(FLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "animationDuration"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2133
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 2134
    new-instance v1, Ljava/lang/Exception;

    #v1=(UninitRef,Ljava/lang/Exception;);
    const-string v2, "Ad not yet displayed."

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/Exception;);
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .line 2150
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2151
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2153
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2136
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    const/high16 v1, 0x447a

    #v1=(Integer);
    mul-float/2addr v1, p1

    #v1=(Float);
    float-to-int v1, v1

    :try_start_2
    #v1=(Integer);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->duration:I

    .line 2138
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-nez v1, :cond_3

    .line 2139
    :cond_2
    #v1=(Conflicted);
    new-instance v1, Ljava/lang/Exception;

    #v1=(UninitRef,Ljava/lang/Exception;);
    const-string v2, "Error contracting ad."

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/Exception;);
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2133
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1

    .line 2142
    :cond_3
    :try_start_3
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;);
    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$10;);
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2145
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    .line 2146
    if-eqz p2, :cond_0

    .line 2147
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized displayExpandToFullScreen(FLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "duration"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2122
    monitor-enter p0

    :try_start_0
    new-instance v8, Landroid/util/DisplayMetrics;

    #v8=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2123
    .local v8, dm:Landroid/util/DisplayMetrics;
    #v8=(Reference,Landroid/util/DisplayMetrics;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2124
    iget v3, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2125
    .local v3, screenWidth:I
    #v3=(Integer);
    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2127
    .local v4, screenHeight:I
    #v4=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    move-object v0, p0

    move v5, p1

    #v5=(Float);
    move-object v6, p2

    #v6=(Reference,Ljava/lang/String;);
    move-object v7, p3

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->displayResizeTo(IIIIFLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    monitor-exit p0

    return-void

    .line 2122
    .end local v3           #screenWidth:I
    .end local v4           #screenHeight:I
    .end local v8           #dm:Landroid/util/DisplayMetrics;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized displayOpenInBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "url"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2158
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2159
    .local v7, uri:Landroid/net/Uri;
    #v7=(Reference,Landroid/net/Uri;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v8, v8, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 2160
    new-instance v8, Ljava/lang/Exception;

    #v8=(UninitRef,Ljava/lang/Exception;);
    const-string v9, "Ad not yet displayed."

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/Exception;);
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2190
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    .line 2191
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2192
    :try_start_1
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    #v10=(One);
    invoke-virtual {p0, p3, v9, v10}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2194
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v1=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    monitor-exit p0

    return-void

    .line 2162
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Reference,Landroid/net/Uri;);v8=(Boolean);v9=(Uninit);v10=(Uninit);
    iget-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v8, :cond_2

    .line 2163
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "window.MOBCLIX.displayOpenInBrowser(\'"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2164
    .local v4, s:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2158
    .end local v4           #s:Ljava/lang/StringBuilder;
    .end local v7           #uri:Landroid/net/Uri;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v8

    .line 2169
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Reference,Landroid/net/Uri;);v8=(Boolean);v9=(Uninit);v10=(Uninit);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v8, :cond_3

    .line 2170
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v9, 0x1

    #v9=(One);
    iput-boolean v9, v8, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 2172
    :cond_3
    #v9=(Conflicted);
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sms"

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_5

    .line 2173
    const-string v8, ":"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2174
    .local v5, smsUrl:[Ljava/lang/String;
    #v5=(Reference,[Ljava/lang/String;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v9, 0x0

    #v9=(Null);
    aget-object v9, v5, v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2175
    .local v6, tmp:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    #v2=(Integer);
    array-length v8, v5

    #v8=(Integer);
    if-lt v2, v8, :cond_4

    .line 2177
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2178
    const-string v8, "body"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    .local v0, body:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v8, "\\?"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    #v9=(Null);
    aget-object v8, v8, v9

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2180
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef,Landroid/content/Intent;);
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2181
    .local v3, mIntent:Landroid/content/Intent;
    #v3=(Reference,Landroid/content/Intent;);
    const-string v8, "sms_body"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2187
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #smsUrl:[Ljava/lang/String;
    .end local v6           #tmp:Ljava/lang/String;
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Reference,Ljava/lang/String;);
    if-eqz p2, :cond_0

    .line 2188
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v9, ""

    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p0, p2, v9, v10}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2176
    .end local v3           #mIntent:Landroid/content/Intent;
    .restart local v2       #i:I
    .restart local v5       #smsUrl:[Ljava/lang/String;
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_4
    #v0=(Uninit);v2=(Integer);v3=(Uninit);v5=(Reference,[Ljava/lang/String;);v6=(Reference,Ljava/lang/String;);v8=(Integer);v10=(Uninit);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2184
    .end local v2           #i:I
    .end local v5           #smsUrl:[Ljava/lang/String;
    .end local v6           #tmp:Ljava/lang/String;
    :cond_5
    #v2=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Boolean);
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef,Landroid/content/Intent;);
    const-string v8, "android.intent.action.VIEW"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2185
    .restart local v3       #mIntent:Landroid/content/Intent;
    #v3=(Reference,Landroid/content/Intent;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized displayResizeTo(IIIIFLjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "fLeftMargin"
    .parameter "fTopMargin"
    .parameter "fWidth"
    .parameter "fHeight"
    .parameter "duration"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2035
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 2036
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "Ad not yet displayed."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    move-exception v13

    .line 2111
    .local v13, e:Ljava/lang/Exception;
    #v13=(Reference,Ljava/lang/Exception;);
    if-eqz p7, :cond_0

    .line 2112
    :try_start_1
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2114
    .end local v13           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v13=(Conflicted);
    monitor-exit p0

    return-void

    .line 2038
    :cond_1
    :try_start_2
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v2, :cond_2

    .line 2039
    new-instance v19, Ljava/lang/StringBuilder;

    #v19=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "window.MOBCLIX.displayResizeTo("

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v19, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v19=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v19

    move/from16 v1, p1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    #v0=(Integer);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2041
    move/from16 v0, p5

    #v0=(Float);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2035
    .end local v19           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 2045
    :cond_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->fullScreenAdView:Z

    if-eqz v2, :cond_3

    .line 2046
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "FullScreenAdView cannot resize."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2

    .line 2050
    :cond_3
    #v2=(Boolean);v3=(Uninit);
    const/high16 v2, 0x4040

    #v2=(Integer);
    cmpl-float v2, p5, v2

    #v2=(Byte);
    if-lez v2, :cond_4

    const/high16 p5, 0x4040

    .line 2051
    :cond_4
    #p5=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    cmpg-float v2, p5, v2

    #v2=(Byte);
    if-gez v2, :cond_5

    const p5, 0x3dcccccd

    .line 2052
    :cond_5
    const/high16 v2, 0x447a

    #v2=(Integer);
    mul-float p5, p5, v2

    .line 2054
    #p5=(Float);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-nez v2, :cond_6

    .line 2057
    new-instance v2, Ljava/lang/Exception;

    #v2=(UninitRef,Ljava/lang/Exception;);
    const-string v3, "Error resizing advertisement."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Exception;);
    throw v2

    .line 2058
    :cond_6
    #v3=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v26, v0

    #v26=(Reference,Landroid/app/Activity;);
    new-instance v2, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;);
    move/from16 v0, p5

    #v0=(Float);
    float-to-int v8, v0

    #v8=(Integer);
    move-object/from16 v3, p0

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move/from16 v4, p2

    #v4=(Integer);
    move/from16 v5, p1

    #v5=(Integer);
    move/from16 v6, p3

    #v6=(Integer);
    move/from16 v7, p4

    #v7=(Integer);
    invoke-direct/range {v2 .. v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;IIIII)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$ExpanderRunnable;);
    move-object/from16 v0, v26

    #v0=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2059
    if-eqz p6, :cond_7

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v3, ""

    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    .line 2062
    :cond_7
    #v1=(Conflicted);v4=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->triggerOnTouchUrls()V

    goto/16 :goto_0

    .line 2064
    :cond_8
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v26=(Uninit);
    new-instance v18, Landroid/graphics/Rect;

    #v18=(UninitRef,Landroid/graphics/Rect;);
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 2065
    .local v18, rectgle:Landroid/graphics/Rect;
    #v18=(Reference,Landroid/graphics/Rect;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v2=(Reference,Landroid/app/Activity;);
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v25

    .line 2066
    .local v25, window:Landroid/view/Window;
    #v25=(Reference,Landroid/view/Window;);
    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2067
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    #v0=(Integer);
    move/from16 v22, v0

    .line 2068
    .local v22, statusBarHeight:I
    #v22=(Integer);
    const v2, 0x1020002

    #v2=(Integer);
    move-object/from16 v0, v25

    #v0=(Reference,Landroid/view/Window;);
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2069
    .local v9, contentViewTop:I
    #v9=(Integer);
    sub-int v23, v9, v22

    .line 2072
    .local v23, titleBarHeight:I
    #v23=(Integer);
    new-instance v12, Landroid/util/DisplayMetrics;

    #v12=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2073
    .local v12, dm:Landroid/util/DisplayMetrics;
    #v12=(Reference,Landroid/util/DisplayMetrics;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v16, v2, 0x2

    .line 2075
    .local v16, orientation:I
    #v16=(Integer);
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    #v0=(Integer);
    move/from16 v21, v0

    .line 2076
    .local v21, screenWidth:I
    #v21=(Integer);
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 2079
    .local v20, screenHeight:I
    #v20=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v10, v2, [I

    .line 2080
    .local v10, coords:[I
    #v10=(Reference,[I);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2, v10}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getLocationInWindow([I)V

    .line 2081
    const/4 v2, 0x1

    #v2=(One);
    aget v24, v10, v2

    .line 2082
    .local v24, topMargin:I
    #v24=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    aget v14, v10, v2

    .line 2086
    .local v14, leftMargin:I
    #v14=(Integer);
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    #v2=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iput-object v3, v2, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 2088
    new-instance v11, Lorg/json/JSONObject;

    #v11=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2089
    .local v11, data:Lorg/json/JSONObject;
    #v11=(Reference,Lorg/json/JSONObject;);
    const-string v2, "statusBarHeight"

    move/from16 v0, v22

    #v0=(Integer);
    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2090
    const-string v2, "topMargin"

    move/from16 v0, v24

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2091
    const-string v2, "leftMargin"

    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2092
    const-string v2, "fTopMargin"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2093
    const-string v2, "fLeftMargin"

    move/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2094
    const-string v2, "fWidth"

    move/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2095
    const-string v2, "fHeight"

    move/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2096
    const-string v2, "duration"

    move/from16 v0, p5

    #v0=(Float);
    float-to-double v3, v0

    #v3=(DoubleLo);v4=(DoubleHi);
    invoke-virtual {v11, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2099
    new-instance v15, Landroid/content/Intent;

    #v15=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 2100
    .local v15, mIntent:Landroid/content/Intent;
    #v15=(Reference,Landroid/content/Intent;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 2101
    .local v17, packageName:Ljava/lang/String;
    #v17=(Reference,Ljava/lang/String;);
    const-class v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2102
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expander"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2103
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2105
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    .line 2107
    if-eqz p6, :cond_0

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v3, ""

    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v3, v4}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized domReady()V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->injectPermissionsKey()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public gotLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 539
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDataCallbackFunctionName:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 558
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 541
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Reference,Ljava/lang/String;);v4=(Uninit);v5=(Uninit);
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 543
    .local v1, data:Lorg/json/JSONObject;
    #v1=(Reference,Lorg/json/JSONObject;);
    const-string v2, "altitude"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    #v3=(DoubleLo);v4=(DoubleHi);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 545
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 547
    .local v0, coordinate:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v2, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 548
    const-string v2, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 549
    const-string v2, "coordinate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string v2, "course"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    #v3=(Float);
    float-to-double v3, v3

    #v3=(DoubleLo);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 551
    const-string v2, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    #v3=(Float);
    float-to-double v3, v3

    #v3=(DoubleLo);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 552
    const-string v2, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 553
    const-string v2, "horizontalAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    #v3=(Float);
    float-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 554
    const-string v2, "verticalAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    #v3=(Float);
    float-to-double v3, v3

    #v3=(DoubleLo);
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 556
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDataCallbackFunctionName:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "eval(\'("

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {p0, v3, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 557
    .end local v0           #coordinate:Lorg/json/JSONObject;
    .end local v1           #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    #v2=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_0
.end method

.method public declared-synchronized gpsStart(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "distanceFilter"
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x1

    .line 466
    #v7=(One);
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Sensor not supported."

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v6

    .line 493
    .local v6, e:Ljava/lang/Exception;
    #v6=(Reference,Ljava/lang/Exception;);
    if-eqz p4, :cond_0

    .line 494
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, p4, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move v0, v8

    .line 496
    .end local v6           #e:Ljava/lang/Exception;
    :goto_0
    #v0=(Boolean);v6=(Conflicted);
    monitor-exit p0

    return v0

    .line 470
    :cond_1
    :try_start_2
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v0=(Reference,Landroid/location/LocationManager;);
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :goto_1
    :try_start_3
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    .line 475
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v0=(Reference,Landroid/location/LocationManager;);
    const-string v1, "gps"

    #v1=(Reference,Ljava/lang/String;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    #v4=(Integer);
    move-object v5, p0

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 477
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDataCallbackFunctionName:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    .line 480
    :cond_2
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v0=(Reference,Landroid/location/LocationManager;);
    const-string v1, "network"

    #v1=(Reference,Ljava/lang/String;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    #v4=(Integer);
    move-object v5, p0

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 482
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDataCallbackFunctionName:Ljava/lang/String;

    .line 483
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    .line 485
    :cond_3
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    if-eqz v0, :cond_5

    .line 486
    if-eqz p3, :cond_4

    .line 487
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p3, v1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move v0, v7

    .line 488
    #v0=(One);
    goto :goto_0

    .line 490
    :cond_5
    #v0=(Boolean);
    new-instance v0, Ljava/lang/Exception;

    #v0=(UninitRef,Ljava/lang/Exception;);
    const-string v1, "Sensor not supported."

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/Exception;);
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 466
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0

    .line 471
    :catch_1
    #v0=(Conflicted);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method public declared-synchronized gpsStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v1=(Reference,Landroid/location/LocationManager;);
    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x0

    :try_start_1
    #v1=(Null);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    .line 508
    if-eqz p1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 503
    :catch_0
    #v0=(Uninit);v1=(Conflicted);v2=(Uninit);v3=(Uninit);
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p2, :cond_0

    .line 505
    :try_start_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 502
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized gyroscopeStart(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "updateInterval"
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 409
    monitor-enter p0

    const/4 v1, 0x4

    #v1=(PosByte);
    move-object v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move v2, p1

    #v2=(Float);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move-object v4, p3

    #v4=(Reference,Ljava/lang/String;);
    move-object v5, p4

    :try_start_0
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStart(IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gyroscopeStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 413
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    #v0=(PosByte);
    invoke-virtual {p0, v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized injectPermissionsKey()V
    .locals 4

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 311
    .local v1, uuid:Ljava/util/UUID;
    #v1=(Reference,Ljava/util/UUID;);
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->uniqueKey:Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "javascript:window.addEventListener(\'click\', function(){mAdViewPermissionsKey=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';}, true);"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 310
    .end local v0           #s:Ljava/lang/StringBuilder;
    .end local v1           #uuid:Ljava/util/UUID;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized magnetometerStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 427
    #v6=(Null);
    monitor-enter p0

    const/16 v2, 0x53a

    .line 428
    .local v2, type:I
    #v2=(PosShort);
    const/4 v3, 0x2

    .line 429
    .local v3, updateInterval:I
    :try_start_0
    #v3=(PosByte);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    const/4 v7, 0x3

    #v7=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 432
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v5, "Sensor not supported."

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 454
    :try_start_2
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p3, v5, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    move v4, v6

    .line 456
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    #v0=(Conflicted);v4=(Boolean);
    monitor-exit p0

    return v4

    .line 434
    :cond_1
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v5=(One);v7=(Reference,Ljava/lang/Integer;);v8=(Reference,Ljava/lang/Integer;);v9=(Uninit);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 436
    :try_start_4
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 437
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 440
    :cond_2
    :goto_1
    :try_start_5
    #v4=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-direct {v8, p0, v9, v2, p1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Landroid/webkit/WebView;ILjava/lang/String;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;);
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    .line 443
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v9, 0x3

    #v9=(PosByte);
    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    .line 442
    invoke-virtual {v7, v4, v8, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 445
    .local v1, supported:Z
    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 446
    if-eqz p2, :cond_3

    .line 447
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v7, ""

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, p2, v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    #v8=(Reference,Landroid/hardware/Sensor;);
    move v4, v5

    .line 448
    #v4=(One);
    goto :goto_0

    .line 450
    :cond_4
    #v4=(Reference,Landroid/hardware/SensorEventListener;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v5, "Error registering listener."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 427
    .end local v1           #supported:Z
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v4

    .line 438
    :catch_1
    #v0=(Uninit);v1=(Uninit);v4=(Conflicted);v5=(One);v7=(Reference,Ljava/lang/Object;);v8=(Reference,Ljava/lang/Integer;);v9=(Uninit);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method public declared-synchronized magnetometerStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 460
    monitor-enter p0

    const/16 v0, 0x53a

    :try_start_0
    #v0=(PosShort);
    invoke-virtual {p0, v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mediaGetImage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1880
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v5, v5, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1881
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Ad not yet displayed."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    .line 1906
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    if-eqz p4, :cond_0

    .line 1907
    :try_start_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p4, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1909
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 1883
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v5, :cond_2

    .line 1884
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "window.MOBCLIX.mediaGetImage("

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v4, s:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1880
    .end local v4           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v5

    .line 1889
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1890
    .local v2, mIntent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1891
    .local v3, packageName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1892
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gallery"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoWidth:I

    .line 1895
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoHeight:I

    .line 1896
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    .line 1897
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    .line 1898
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v6, v5, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1900
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1901
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v5, :cond_3

    .line 1902
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1904
    :cond_3
    #v6=(Conflicted);
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized mediaQuerySongs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .parameter "songObject"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1685
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v3, v3, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 1686
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v5, "Ad not yet displayed."

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    move-exception v17

    .line 1846
    .local v17, e:Ljava/lang/Exception;
    #v17=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 1847
    :try_start_1
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v5, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    .end local v17           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v17=(Conflicted);
    monitor-exit p0

    return-void

    .line 1688
    :cond_1
    :try_start_2
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v3, :cond_2

    .line 1689
    new-instance v23, Ljava/lang/StringBuilder;

    #v23=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "window.MOBCLIX.mediaQuerySongs(\'"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1690
    .local v23, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v23=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',\'"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\');"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1685
    .end local v23           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 1694
    :cond_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1695
    .local v2, currentActivity:Landroid/app/Activity;
    #v2=(Reference,Landroid/app/Activity;);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-eqz v3, :cond_3

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .end local v2           #currentActivity:Landroid/app/Activity;
    check-cast v2, Landroid/app/Activity;

    .line 1697
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_3
    new-instance v25, Lorg/json/JSONObject;

    #v25=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v0, v25

    #v0=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v1, p1

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v25, song:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);v25=(Reference,Lorg/json/JSONObject;);
    const-string v9, "_id"

    .line 1700
    .local v9, GENRE_ID:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    const-string v10, "name"

    .line 1701
    .local v10, GENRE_NAME:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    const-string v8, "_id"

    .line 1704
    .local v8, AUDIO_ID:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    new-instance v20, Ljava/util/HashMap;

    #v20=(UninitRef,Ljava/util/HashMap;);
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1705
    .local v20, genreIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v20=(Reference,Ljava/util/HashMap;);
    new-instance v21, Ljava/util/HashMap;

    #v21=(UninitRef,Ljava/util/HashMap;);
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1707
    .local v21, genreNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v21=(Reference,Ljava/util/HashMap;);
    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1708
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v4, v5, [Ljava/lang/String;

    #v4=(Reference,[Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object v9, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    aput-object v10, v4, v5

    .line 1709
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    .line 1706
    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1710
    .local v14, c:Landroid/database/Cursor;
    #v14=(Reference,Landroid/database/Cursor;);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    #v5=(Reference,Ljava/lang/String;);
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_c

    .line 1714
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1715
    const/4 v14, 0x0

    .line 1718
    #v14=(Null);
    new-instance v24, Ljava/lang/StringBuilder;

    #v24=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "is_music"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v24, selection:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v24=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, " != 0"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    const/16 v28, 0x0

    .line 1722
    .local v28, title:Ljava/lang/String;
    #v28=(Null);
    const-string v3, "title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 1723
    const-string v3, "title"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1724
    #v28=(Reference,Ljava/lang/String;);
    if-eqz v28, :cond_4

    const-string v3, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    .line 1725
    const-string v3, " AND "

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "title"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    :cond_4
    #v3=(Conflicted);
    const/4 v12, 0x0

    .line 1728
    .local v12, albumTitle:Ljava/lang/String;
    #v12=(Null);
    const-string v3, "albumTitle"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_5

    .line 1729
    const-string v3, "albumTitle"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1730
    #v12=(Reference,Ljava/lang/String;);
    if-eqz v12, :cond_5

    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_5

    .line 1731
    const-string v3, " AND "

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "album"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    :cond_5
    #v3=(Conflicted);
    const/4 v13, 0x0

    .line 1734
    .local v13, artist:Ljava/lang/String;
    #v13=(Null);
    const-string v3, "artist"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 1735
    const-string v3, "artist"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1736
    #v13=(Reference,Ljava/lang/String;);
    if-eqz v13, :cond_6

    const-string v3, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_6

    .line 1737
    const-string v3, " AND "

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "artist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    :cond_6
    #v3=(Conflicted);
    const/4 v11, 0x0

    .line 1740
    .local v11, albumArtist:Ljava/lang/String;
    #v11=(Null);
    const-string v3, "albumArtist"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_7

    .line 1741
    const-string v3, "albumArtist"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1742
    #v11=(Reference,Ljava/lang/String;);
    if-eqz v11, :cond_7

    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_7

    .line 1743
    const-string v3, " AND "

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "artist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    :cond_7
    #v3=(Conflicted);
    const/4 v15, 0x0

    .line 1746
    .local v15, composer:Ljava/lang/String;
    #v15=(Null);
    const-string v3, "composer"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_8

    .line 1747
    const-string v3, "composer"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1748
    #v15=(Reference,Ljava/lang/String;);
    if-eqz v15, :cond_8

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_8

    .line 1749
    const-string v3, " AND "

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "composer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    :cond_8
    #v3=(Conflicted);
    const/4 v3, 0x6

    #v3=(PosByte);
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1753
    #v3=(Null);
    const-string v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 1754
    #v3=(One);
    const-string v5, "_data"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    .line 1755
    #v3=(PosByte);
    const-string v5, "artist"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    .line 1756
    const-string v5, "title"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    .line 1757
    const-string v5, "album"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    .line 1758
    const-string v5, "composer"

    aput-object v5, v4, v3

    .line 1761
    .local v4, projection:[Ljava/lang/String;
    new-instance v26, Lorg/json/JSONArray;

    #v26=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V

    .line 1763
    .local v26, songs:Lorg/json/JSONArray;
    #v26=(Reference,Lorg/json/JSONArray;);
    const/16 v18, 0x0

    .line 1764
    .local v18, genre:Ljava/lang/String;
    #v18=(Null);
    const-string v3, "genre"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_9

    .line 1765
    const-string v3, "genre"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1766
    #v18=(Reference,Ljava/lang/String;);
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_9

    .line 1767
    const/16 v18, 0x0

    .line 1770
    :cond_9
    if-nez v18, :cond_11

    .line 1771
    const/16 v16, 0x0

    .line 1772
    .local v16, count:I
    #v16=(Null);
    new-instance v22, Ljava/lang/StringBuilder;

    #v22=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v22, ids:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v22=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_2
    #v0=(Conflicted);v3=(Conflicted);v16=(Integer);v19=(Conflicted);v29=(Reference,Ljava/util/Iterator;);
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_d

    .line 1795
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1797
    #v3=(Reference,Landroid/net/Uri;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NOT IN (-1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1798
    const/4 v6, 0x0

    .line 1799
    #v6=(Null);
    const/4 v7, 0x0

    .line 1794
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1801
    :goto_3
    #v14=(Reference,Landroid/database/Cursor;);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_10

    .line 1808
    :cond_a
    #v3=(PosByte);
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1809
    const/4 v14, 0x0

    .line 1838
    .end local v16           #count:I
    .end local v22           #ids:Ljava/lang/StringBuilder;
    :cond_b
    :goto_4
    #v14=(Null);v16=(Conflicted);v22=(Conflicted);v29=(Conflicted);
    if-eqz p2, :cond_0

    .line 1839
    new-instance v27, Ljava/lang/StringBuilder;

    #v27=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "eval(\'("

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v27

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v27, ss:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v27=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const-string v3, ")\')"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1711
    .end local v4           #projection:[Ljava/lang/String;
    .end local v11           #albumArtist:Ljava/lang/String;
    .end local v12           #albumTitle:Ljava/lang/String;
    .end local v13           #artist:Ljava/lang/String;
    .end local v15           #composer:Ljava/lang/String;
    .end local v18           #genre:Ljava/lang/String;
    .end local v24           #selection:Ljava/lang/StringBuilder;
    .end local v26           #songs:Lorg/json/JSONArray;
    .end local v27           #ss:Ljava/lang/StringBuilder;
    .end local v28           #title:Ljava/lang/String;
    :cond_c
    #v3=(Boolean);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Reference,Landroid/database/Cursor;);v15=(Uninit);v16=(Uninit);v18=(Uninit);v19=(Uninit);v22=(Uninit);v24=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1774
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v11       #albumArtist:Ljava/lang/String;
    .restart local v12       #albumTitle:Ljava/lang/String;
    .restart local v13       #artist:Ljava/lang/String;
    .restart local v15       #composer:Ljava/lang/String;
    .restart local v16       #count:I
    .restart local v18       #genre:Ljava/lang/String;
    .restart local v22       #ids:Ljava/lang/StringBuilder;
    .restart local v24       #selection:Ljava/lang/StringBuilder;
    .restart local v26       #songs:Lorg/json/JSONArray;
    .restart local v28       #title:Ljava/lang/String;
    :cond_d
    #v0=(Conflicted);v3=(Boolean);v11=(Reference,Ljava/lang/String;);v12=(Reference,Ljava/lang/String;);v13=(Reference,Ljava/lang/String;);v14=(Null);v15=(Reference,Ljava/lang/String;);v16=(Integer);v18=(Reference,Ljava/lang/String;);v19=(Conflicted);v22=(Reference,Ljava/lang/StringBuilder;);v24=(Reference,Ljava/lang/StringBuilder;);v26=(Reference,Lorg/json/JSONArray;);v28=(Reference,Ljava/lang/String;);v29=(Reference,Ljava/util/Iterator;);
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Object;);
    check-cast v19, Ljava/lang/String;

    .line 1776
    .local v19, genreId:Ljava/lang/String;
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->makeGenreUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1778
    #v3=(Reference,Landroid/net/Uri;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NOT IN (-1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1779
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    .line 1775
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1781
    :goto_5
    #v14=(Reference,Landroid/database/Cursor;);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_f

    .line 1790
    :cond_e
    #v0=(Conflicted);v3=(PosByte);
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1791
    const/4 v14, 0x0

    #v14=(Null);
    goto/16 :goto_2

    .line 1782
    :cond_f
    #v0=(Reference,Ljava/lang/Object;);v3=(Boolean);v14=(Reference,Landroid/database/Cursor;);
    const/16 v3, 0x4b

    #v3=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    if-gt v0, v3, :cond_e

    .line 1783
    move-object/from16 v0, v20

    #v0=(Reference,Ljava/util/HashMap;);
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->songCursorToJSON(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1784
    const-string v3, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    #v5=(Integer);
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1802
    .end local v19           #genreId:Ljava/lang/String;
    :cond_10
    #v0=(Conflicted);v3=(Boolean);v19=(Conflicted);
    const/16 v3, 0x4b

    #v3=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    if-gt v0, v3, :cond_a

    .line 1803
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-direct {v0, v14, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->songCursorToJSON(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    #v3=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1804
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1812
    .end local v16           #count:I
    .end local v22           #ids:Ljava/lang/StringBuilder;
    :cond_11
    #v3=(Boolean);v14=(Null);v16=(Uninit);v19=(Uninit);v22=(Uninit);v29=(Uninit);
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_b

    .line 1815
    const/16 v16, 0x0

    .line 1816
    .restart local v16       #count:I
    #v16=(Null);
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Object;);
    check-cast v19, Ljava/lang/String;

    .line 1819
    .restart local v19       #genreId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->makeGenreUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1821
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1822
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1818
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1824
    :goto_6
    #v14=(Reference,Landroid/database/Cursor;);v16=(Integer);
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_13

    .line 1831
    :cond_12
    #v0=(Conflicted);v3=(PosByte);
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1832
    const/4 v14, 0x0

    #v14=(Null);
    goto/16 :goto_4

    .line 1825
    :cond_13
    #v0=(Reference,Ljava/lang/Object;);v3=(Boolean);v14=(Reference,Landroid/database/Cursor;);
    const/16 v3, 0x4b

    #v3=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    if-gt v0, v3, :cond_12

    .line 1826
    move-object/from16 v0, v20

    #v0=(Reference,Ljava/util/HashMap;);
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->songCursorToJSON(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1827
    add-int/lit8 v16, v16, 0x1

    goto :goto_6
.end method

.method public declared-synchronized mediaSendImageToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "serverUrl"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 1914
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-boolean v5, v5, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1915
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Ad not yet displayed."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    .line 1943
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 1944
    :try_start_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p3, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1946
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 1917
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->autoplay:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->requireUserInteraction:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->userHasInteracted:Z

    if-nez v5, :cond_2

    .line 1918
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "window.MOBCLIX.mediaSendImageToServer(\'"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1919
    .local v4, s:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->checkPermissionsForUserInteraction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1914
    .end local v4           #s:Ljava/lang/StringBuilder;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v5

    .line 1923
    :cond_2
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoSendingThread:Ljava/lang/Thread;

    #v5=(Reference,Ljava/lang/Thread;);
    if-eqz v5, :cond_3

    .line 1924
    new-instance v5, Ljava/lang/Exception;

    #v5=(UninitRef,Ljava/lang/Exception;);
    const-string v6, "Image already being sent."

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/Exception;);
    throw v5

    .line 1927
    :cond_3
    #v6=(Uninit);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1928
    .local v2, mIntent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1929
    .local v3, packageName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1930
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sendToServer"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoServerUrl:Ljava/lang/String;

    .line 1933
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    .line 1934
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    .line 1935
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v6, v5, Lcom/mobclix/android/sdk/Mobclix;->cameraWebview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1937
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webviewActivity:Landroid/app/Activity;

    .line 1938
    .local v0, a:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    if-eqz v5, :cond_4

    .line 1939
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1941
    :cond_4
    #v6=(Conflicted);
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 513
    const/4 v1, 0x0

    .local v1, net_loc:Landroid/location/Location;
    #v1=(Null);
    const/4 v0, 0x0

    .line 514
    .local v0, gps_loc:Landroid/location/Location;
    #v0=(Null);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v2=(Reference,Landroid/location/LocationManager;);
    const-string v3, "gps"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 516
    :cond_0
    #v0=(Reference,Landroid/location/Location;);v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v2=(Reference,Landroid/location/LocationManager;);
    const-string v3, "network"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 520
    :cond_1
    #v1=(Reference,Landroid/location/Location;);v2=(Conflicted);v3=(Conflicted);
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 521
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_3

    .line 522
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gotLocation(Landroid/location/Location;)V

    .line 536
    :cond_2
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 524
    :cond_3
    #v2=(Byte);v3=(LongHi);v4=(LongLo);v5=(LongHi);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 528
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v4=(Uninit);v5=(Uninit);
    if-eqz v0, :cond_5

    .line 529
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 532
    :cond_5
    if-eqz v1, :cond_2

    .line 533
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gotLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 559
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 560
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 561
    return-void
.end method

.method declared-synchronized pauseListeners()V
    .locals 4

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 201
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    #v0=(Conflicted);v2=(Reference,Ljava/util/Iterator;);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 191
    :try_start_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v1=(Reference,Landroid/location/LocationManager;);
    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_2
    const/4 v1, 0x1

    :try_start_3
    #v1=(One);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceFlashlightPause(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    :goto_3
    #v1=(Conflicted);
    const/4 v1, 0x1

    :try_start_4
    #v1=(One);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->paused:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1

    .line 185
    :cond_1
    :try_start_5
    #v1=(Boolean);v2=(Reference,Ljava/util/Iterator;);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/SensorEventListener;>;"
    :try_start_6
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v3=(Reference,Landroid/hardware/SensorManager;);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    #v1=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 198
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/SensorEventListener;>;"
    :catch_1
    #v0=(Conflicted);v1=(One);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 192
    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_2
.end method

.method declared-synchronized photoCanceled(Ljava/lang/String;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 716
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v1, p1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 716
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized photoTaken(Ljava/lang/String;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v1, p1, v2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resumeListeners()V
    .locals 7

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 243
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v0=(Reference,Ljava/util/HashMap;);
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    #v1=(Conflicted);v2=(Reference,Ljava/util/Iterator;);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_4

    .line 225
    :try_start_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsListenerAdded:Z

    if-eqz v0, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gps_enabled:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v0=(Reference,Landroid/location/LocationManager;);
    const-string v1, "gps"

    #v1=(Reference,Ljava/lang/String;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    #v4=(Integer);
    move-object v5, p0

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 230
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->network_enabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->locationManager:Landroid/location/LocationManager;

    #v0=(Reference,Landroid/location/LocationManager;);
    const-string v1, "network"

    #v1=(Reference,Ljava/lang/String;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->gpsDistanceFilter:F

    #v4=(Integer);
    move-object v5, p0

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    :cond_2
    :goto_2
    :try_start_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->flashlightOn:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->deviceFlashlightResume()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    :cond_3
    :goto_3
    #v0=(Conflicted);
    const/4 v0, 0x0

    :try_start_4
    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->paused:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0

    .line 211
    :cond_4
    :try_start_5
    #v0=(Boolean);v2=(Reference,Ljava/util/Iterator;);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/SensorEventListener;>;"
    :try_start_6
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v1=(Reference,Landroid/hardware/SensorManager;);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 216
    :goto_4
    :try_start_7
    #v1=(Conflicted);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0x539

    #v1=(PosShort);
    if-ne v0, v1, :cond_5

    .line 217
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v3=(Reference,Landroid/hardware/SensorManager;);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 218
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v1=(Reference,Landroid/hardware/SensorManager;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    #v4=(Reference,Landroid/hardware/Sensor;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 217
    #v1=(Integer);
    invoke-virtual {v3, v0, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 222
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 220
    :cond_5
    #v0=(Integer);v1=(PosShort);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v3=(Reference,Landroid/hardware/SensorManager;);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 221
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    #v4=(Reference,Landroid/hardware/SensorManager;);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v4, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    #v1=(Integer);
    invoke-virtual {v3, v0, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 240
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/SensorEventListener;>;"
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 234
    :catch_2
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_2

    .line 214
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/SensorEventListener;>;"
    :catch_3
    #v0=(Conflicted);v2=(Reference,Ljava/util/Iterator;);v6=(Reference,Ljava/util/Map$Entry;);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_4
.end method

.method sendImageToServer(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoSendingThread:Ljava/lang/Thread;

    #v0=(Reference,Ljava/lang/Thread;);
    if-eqz v0, :cond_1

    .line 1950
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoErrorCallbackFunctionName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Image already being sent."

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    .line 1956
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1953
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoServerUrl:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, p0, v2, p1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$SendImageToServerThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v0=(Reference,Ljava/lang/Thread;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoSendingThread:Ljava/lang/Thread;

    .line 1954
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->photoSendingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public declared-synchronized sensorStart(IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "type"
    .parameter "updateInterval"
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 342
    #v5=(Null);
    monitor-enter p0

    float-to-double v6, p2

    #v6=(DoubleLo);v7=(DoubleHi);
    const-wide/high16 v8, 0x3fe0

    #v8=(LongLo);v9=(LongHi);
    cmpl-double v3, v6, v8

    #v3=(Byte);
    if-lez v3, :cond_1

    .line 343
    const/4 v1, 0x2

    .line 350
    .local v1, interval:I
    :goto_0
    :try_start_0
    #v1=(PosByte);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :try_start_1
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    .line 354
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "Sensor not supported."

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p5, :cond_0

    .line 376
    :try_start_2
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {p0, p5, v4, v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    move v3, v5

    .line 378
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    #v0=(Conflicted);v3=(Boolean);
    monitor-exit p0

    return v3

    .line 344
    .end local v1           #interval:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Byte);v4=(One);v6=(DoubleLo);v7=(DoubleHi);v8=(LongLo);
    float-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    .line 345
    const/4 v1, 0x3

    .restart local v1       #interval:I
    #v1=(PosByte);
    goto :goto_0

    .line 346
    .end local v1           #interval:I
    :cond_2
    #v1=(Uninit);
    float-to-double v6, p2

    const-wide v8, 0x3fb999999999999aL

    cmpl-double v3, v6, v8

    if-lez v3, :cond_3

    .line 347
    const/4 v1, 0x1

    .restart local v1       #interval:I
    #v1=(One);
    goto :goto_0

    .line 349
    .end local v1           #interval:I
    :cond_3
    #v1=(Uninit);
    const/4 v1, 0x0

    .restart local v1       #interval:I
    #v1=(Null);
    goto :goto_0

    .line 356
    :cond_4
    :try_start_3
    #v1=(PosByte);v3=(Boolean);v6=(Reference,Ljava/lang/Integer;);v7=(Reference,Ljava/lang/Integer;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_5

    .line 358
    :try_start_4
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    invoke-virtual {v6, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 359
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 362
    :cond_5
    :goto_2
    :try_start_5
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v3=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-direct {v7, p0, v8, p1, p3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Landroid/webkit/WebView;ILjava/lang/String;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;);
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 365
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v7, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    .line 364
    invoke-virtual {v6, v3, v7, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 367
    .local v2, supported:Z
    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 368
    if-eqz p4, :cond_6

    .line 369
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v6, ""

    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p0, p4, v6, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    :cond_6
    #v7=(Reference,Landroid/hardware/Sensor;);
    move v3, v4

    .line 370
    #v3=(One);
    goto :goto_1

    .line 372
    :cond_7
    #v3=(Reference,Landroid/hardware/SensorEventListener;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v3, Ljava/lang/Exception;

    #v3=(UninitRef,Ljava/lang/Exception;);
    const-string v4, "Error registering listener."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/Exception;);
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 342
    .end local v2           #supported:Z
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3

    .line 360
    :catch_1
    #v0=(Uninit);v2=(Uninit);v3=(Conflicted);v4=(One);v6=(Reference,Ljava/lang/Object;);v7=(Reference,Ljava/lang/Integer;);v8=(LongLo);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto :goto_2
.end method

.method public declared-synchronized sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 385
    :try_start_1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v1=(Reference,Ljava/util/HashMap;);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 386
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    if-eqz p2, :cond_0

    .line 388
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v2, ""

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 389
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    #v0=(Reference,Ljava/lang/Exception;);
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 392
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 393
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    #v0=(Reference,Ljava/lang/Exception;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 383
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdDidDisplayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adDidDisplayCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2203
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidDisplayCallbackFunctionName:Ljava/lang/String;

    .line 2204
    if-eqz p2, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2207
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2208
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2209
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2203
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdDidReturnFromHiddenCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adDidReturnFromHiddenCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

    .line 2299
    if-eqz p2, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2302
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2303
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2304
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2298
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdFinishedResizingCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adFinishedResizingCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2222
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizingCallbackFunctionName:Ljava/lang/String;

    .line 2223
    if-eqz p2, :cond_0

    .line 2224
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2226
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2227
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2228
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2222
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdWillBecomeHiddenCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adWillBecomeHiddenCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2279
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

    .line 2280
    if-eqz p2, :cond_0

    .line 2281
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2287
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2283
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2284
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2285
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2279
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdWillContractCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adWillContractCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2241
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContractCallbackFunctionName:Ljava/lang/String;

    .line 2242
    if-eqz p2, :cond_0

    .line 2243
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2245
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2246
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2247
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2241
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAdWillTerminateCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adWillTerminateCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2260
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminateCallbackFunctionName:Ljava/lang/String;

    .line 2261
    if-eqz p2, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p2, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2264
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2265
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 2266
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p3, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2260
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAllDisplayCallbacks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "adFinishedResizingCallbackFunctionName"
    .parameter "adWillContractCallbackFunctionName"
    .parameter "adWillTerminateCallbackFunctionName"
    .parameter "adWillBecomeHiddenCallbackFunctionName"
    .parameter "adDidReturnFromHiddenCallbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 2319
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizingCallbackFunctionName:Ljava/lang/String;

    .line 2320
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContractCallbackFunctionName:Ljava/lang/String;

    .line 2321
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminateCallbackFunctionName:Ljava/lang/String;

    .line 2322
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHiddenCallbackFunctionName:Ljava/lang/String;

    .line 2323
    iput-object p5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHiddenCallbackFunctionName:Ljava/lang/String;

    .line 2325
    if-eqz p6, :cond_0

    .line 2326
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p6, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 2328
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 2329
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p7, :cond_0

    .line 2330
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, p7, v2, v3}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2319
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startListeningForShake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "callbackFunctionName"
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 565
    #v5=(One);
    monitor-enter p0

    const/16 v2, 0x539

    .line 566
    .local v2, type:I
    #v2=(PosShort);
    const/4 v3, 0x2

    .line 567
    .local v3, updateInterval:I
    :try_start_0
    #v3=(PosByte);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorIntervals:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :try_start_1
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensors:Ljava/util/List;

    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Integer;);
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 570
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v5, "Sensor not supported."

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    if-eqz p3, :cond_0

    .line 592
    :try_start_2
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixUtility;->JSONescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, p3, v5, v7}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    move v4, v6

    .line 594
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    #v0=(Conflicted);v4=(Boolean);
    monitor-exit p0

    return v4

    .line 572
    :cond_1
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v5=(One);v7=(Reference,Ljava/lang/Integer;);v8=(Reference,Ljava/lang/Integer;);v9=(Uninit);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 574
    :try_start_4
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 575
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 578
    :cond_2
    :goto_1
    :try_start_5
    #v4=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    #v4=(Reference,Ljava/util/HashMap;);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;

    #v8=(UninitRef,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;);
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v9=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-direct {v8, p0, v9, p1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;-><init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Landroid/webkit/WebView;Ljava/lang/String;)V

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;);
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    .line 581
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v9, 0x1

    #v9=(One);
    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    .line 580
    invoke-virtual {v7, v4, v8, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 583
    .local v1, supported:Z
    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 584
    if-eqz p2, :cond_3

    .line 585
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    const-string v7, ""

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, p2, v7, v8}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    #v8=(Reference,Landroid/hardware/Sensor;);
    move v4, v5

    .line 586
    #v4=(One);
    goto :goto_0

    .line 588
    :cond_4
    #v4=(Reference,Landroid/hardware/SensorEventListener;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v4, Ljava/lang/Exception;

    #v4=(UninitRef,Ljava/lang/Exception;);
    const-string v5, "Error registering listener."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/Exception;);
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 565
    .end local v1           #supported:Z
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v4

    .line 576
    :catch_1
    #v0=(Uninit);v1=(Uninit);v4=(Conflicted);v5=(One);v7=(Reference,Ljava/lang/Object;);v8=(Reference,Ljava/lang/Integer;);v9=(Uninit);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_1
.end method

.method public declared-synchronized stopListeningForShake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "successCallbackFunctionName"
    .parameter "errorCallbackFunctionName"

    .prologue
    .line 598
    monitor-enter p0

    const/16 v0, 0x539

    :try_start_0
    #v0=(PosShort);
    invoke-virtual {p0, v0, p1, p2}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->sensorStop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    .line 598
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method
