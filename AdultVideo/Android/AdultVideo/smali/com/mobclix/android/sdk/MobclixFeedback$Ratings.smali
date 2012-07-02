.class public Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;
.super Ljava/lang/Object;
.source "MobclixFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ratings"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->e:I

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->d:I

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->c:I

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->b:I

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->a:I

    .line 70
    return-void
.end method


# virtual methods
.method public setCategoryA(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 72
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->a:I

    return-void
.end method

.method public setCategoryB(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 73
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->b:I

    return-void
.end method

.method public setCategoryC(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 74
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->c:I

    return-void
.end method

.method public setCategoryD(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 75
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->d:I

    return-void
.end method

.method public setCategoryE(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 76
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->e:I

    return-void
.end method
