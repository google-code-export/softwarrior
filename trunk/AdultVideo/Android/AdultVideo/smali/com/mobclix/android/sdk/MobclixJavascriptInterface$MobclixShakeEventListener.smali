.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;
.super Ljava/lang/Object;
.source "MobclixJavascriptInterface.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixShakeEventListener"
.end annotation


# instance fields
.field callbackFunctionName:Ljava/lang/String;

.field private m_totalForcePrev:D

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

.field webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "w"
    .parameter "function"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->webview:Landroid/webkit/WebView;

    .line 643
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->callbackFunctionName:Ljava/lang/String;

    .line 644
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->m_totalForcePrev:D

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "arg0"

    .prologue
    .line 647
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    #v9=(Null);
    const v8, 0x411ce80a

    #v8=(Integer);
    const-wide/high16 v6, 0x4000

    .line 651
    #v6=(LongLo);v7=(LongHi);
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #v4=(Reference,Landroid/hardware/Sensor;);
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    #v4=(Integer);
    if-ne v4, v10, :cond_1

    .line 653
    const-wide v0, 0x3ff6666660000000L

    .line 655
    .local v0, forceThreshHold:D
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    .line 656
    .local v2, totalForce:D
    #v2=(LongLo);v3=(LongHi);
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #v4=(Reference,[F);
    aget v4, v4, v9

    #v4=(Integer);
    div-float/2addr v4, v8

    #v4=(Float);
    float-to-double v4, v4

    #v4=(DoubleLo);v5=(DoubleHi);
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 657
    #v2=(DoubleLo);v3=(DoubleHi);
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #v4=(Reference,[F);
    aget v4, v4, v10

    #v4=(Integer);
    div-float/2addr v4, v8

    #v4=(Float);
    float-to-double v4, v4

    #v4=(DoubleLo);
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 658
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #v4=(Reference,[F);
    const/4 v5, 0x2

    #v5=(PosByte);
    aget v4, v4, v5

    #v4=(Integer);
    div-float/2addr v4, v8

    #v4=(Float);
    float-to-double v4, v4

    #v4=(DoubleLo);v5=(DoubleHi);
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 659
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 661
    cmpg-double v4, v2, v0

    #v4=(Byte);
    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->m_totalForcePrev:D

    #v4=(DoubleLo);
    cmpl-double v4, v4, v0

    #v4=(Byte);
    if-lez v4, :cond_0

    .line 663
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->webview:Landroid/webkit/WebView;

    #v4=(Reference,Landroid/webkit/WebView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->callbackFunctionName:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    const-string v7, ""

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6, v7, v9}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 666
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iput-wide v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixShakeEventListener;->m_totalForcePrev:D

    .line 668
    .end local v0           #forceThreshHold:D
    .end local v2           #totalForce:D
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
