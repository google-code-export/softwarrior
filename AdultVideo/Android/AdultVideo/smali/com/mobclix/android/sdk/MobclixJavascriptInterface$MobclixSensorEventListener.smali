.class Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;
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
    name = "MobclixSensorEventListener"
.end annotation


# instance fields
.field callbackFunctionName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

.field type:I

.field webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixJavascriptInterface;Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "t"
    .parameter "function"

    .prologue
    .line 611
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;);
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->webview:Landroid/webkit/WebView;

    .line 609
    iput p3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->type:I

    .line 610
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->callbackFunctionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 613
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    .line 617
    :try_start_0
    #v4=(One);
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #v1=(Reference,Landroid/hardware/Sensor;);
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->type:I

    #v2=(Integer);
    if-ne v1, v2, :cond_1

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    #v2=(Reference,[F);
    const/4 v3, 0x0

    #v3=(Null);
    aget v2, v2, v3

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, js:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    #v1=(Integer);
    if-le v1, v4, :cond_0

    .line 620
    const-string v1, ","

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    #v2=(One);
    aget v1, v1, v2

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    #v1=(Reference,[F);
    array-length v1, v1

    #v1=(Integer);
    if-le v1, v5, :cond_0

    .line 623
    const-string v1, ","

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    #v2=(PosByte);
    aget v1, v1, v2

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 627
    :cond_0
    #v2=(Integer);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->webview:Landroid/webkit/WebView;

    #v1=(Reference,Landroid/webkit/WebView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->callbackFunctionName:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 629
    .end local v0           #js:Ljava/lang/StringBuilder;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(PosByte);
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->type:I

    #v1=(Integer);
    const/16 v2, 0x53a

    #v2=(PosShort);
    if-ne v1, v2, :cond_2

    .line 630
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->webview:Landroid/webkit/WebView;

    #v1=(Reference,Landroid/webkit/WebView;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->this$0:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface$MobclixSensorEventListener;->callbackFunctionName:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    #v5=(Reference,[F);
    const/4 v6, 0x0

    #v6=(Null);
    aget v5, v5, v6

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_2
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 632
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
