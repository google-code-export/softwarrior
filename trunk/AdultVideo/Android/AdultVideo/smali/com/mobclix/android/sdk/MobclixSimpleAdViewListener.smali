.class public Lcom/mobclix/android/sdk/MobclixSimpleAdViewListener;
.super Ljava/lang/Object;
.source "MobclixSimpleAdViewListener.java"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixSimpleAdViewListener;);
    return-void
.end method


# virtual methods
.method public keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 12
    return-void
.end method

.method public onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 0
    .parameter "adView"
    .parameter "string"

    .prologue
    .line 15
    return-void
.end method

.method public onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 0
    .parameter "adView"
    .parameter "errorCode"

    .prologue
    .line 9
    return-void
.end method

.method public onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 1
    .parameter "adView"
    .parameter "openAllocationCode"

    .prologue
    .line 18
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 6
    return-void
.end method

.method public query()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method
