.class Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->googleAllocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1474
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1478
    return-void

    .line 1474
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1475
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v0, v2}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_0
.end method
