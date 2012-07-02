.class Lcom/mobclix/android/sdk/Mobclix$1;
.super Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 378
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$1;);
    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    #v1=(DoubleLo);v2=(DoubleHi);
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$4(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    #v1=(DoubleLo);
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$5(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 385
    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method
