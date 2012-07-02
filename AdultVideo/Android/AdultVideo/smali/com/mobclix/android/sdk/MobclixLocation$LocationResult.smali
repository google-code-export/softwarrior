.class public abstract Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;
.super Ljava/lang/Object;
.source "MobclixLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocationResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;);
    return-void
.end method


# virtual methods
.method public abstract gotLocation(Landroid/location/Location;)V
.end method
