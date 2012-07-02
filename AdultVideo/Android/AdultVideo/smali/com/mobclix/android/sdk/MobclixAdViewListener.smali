.class public interface abstract Lcom/mobclix/android/sdk/MobclixAdViewListener;
.super Ljava/lang/Object;
.source "MobclixAdViewListener.java"


# static fields
.field public static final ADSIZE_DISABLED:I = -0xf423f

.field public static final SUBALLOCATION_ADMOB:I = -0x2ee

.field public static final SUBALLOCATION_GOOGLE:I = -0x2774

.field public static final SUBALLOCATION_OTHER:I = -0x3ee

.field public static final UNAVAILABLE:I = -0x1f7

.field public static final UNKNOWN_ERROR:I


# virtual methods
.method public abstract keywords()Ljava/lang/String;
.end method

.method public abstract onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
.end method

.method public abstract onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
.end method

.method public abstract onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
.end method

.method public abstract onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
.end method

.method public abstract onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
.end method

.method public abstract query()Ljava/lang/String;
.end method
