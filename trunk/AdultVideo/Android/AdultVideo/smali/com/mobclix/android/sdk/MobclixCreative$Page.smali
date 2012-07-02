.class Lcom/mobclix/android/sdk/MobclixCreative$Page;
.super Landroid/widget/RelativeLayout;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Page"
.end annotation


# instance fields
.field protected alignmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected layer:I

.field protected parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field protected resourceId:I

.field protected type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 551
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Page;);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    .line 553
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 557
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    #v0=(Reference,Ljava/util/HashMap;);
    const-string v1, "center"

    #v1=(Reference,Ljava/lang/String;);
    const/16 v2, 0x11

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "left"

    const/16 v2, 0x13

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "right"

    const/16 v2, 0x15

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 563
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference,Landroid/content/Context;);
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 551
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Page;);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    .line 553
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 564
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    #v0=(Reference,Ljava/util/HashMap;);
    const-string v1, "center"

    #v1=(Reference,Ljava/lang/String;);
    const/16 v2, 0x11

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "left"

    const/16 v2, 0x13

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "right"

    const/16 v2, 0x15

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 568
    return-void
.end method


# virtual methods
.method dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    #v0=(Integer);
    int-to-float v1, p1

    #v1=(Float);
    mul-float/2addr v0, v1

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public getColorFromJSON(Lorg/json/JSONObject;)I
    .locals 5
    .parameter "c"

    .prologue
    .line 580
    :try_start_0
    const-string v1, "a"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    const-string v2, "r"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const-string v3, "g"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    const-string v4, "b"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 582
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference,Lorg/json/JSONException;);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->layer:I

    #v0=(Integer);
    return v0
.end method

.method public getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->resourceId:I

    #v0=(Integer);
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->type:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "l"

    .prologue
    .line 572
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->layer:I

    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .parameter "r"

    .prologue
    .line 571
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->resourceId:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->type:Ljava/lang/String;

    return-void
.end method
