.class public interface abstract Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
.super Ljava/lang/Object;
.source "MobclixFullScreenAdViewListener.java"


# static fields
.field public static final ADSIZE_DISABLED:I = -0xf423f

.field public static final UNAVAILABLE:I = -0x1f7

.field public static final UNKNOWN_ERROR:I


# virtual methods
.method public abstract keywords()Ljava/lang/String;
.end method

.method public abstract onDismissAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
.end method

.method public abstract onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V
.end method

.method public abstract onFinishLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
.end method

.method public abstract onPresentAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
.end method

.method public abstract query()Ljava/lang/String;
.end method
