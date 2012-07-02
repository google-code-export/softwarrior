.class Lcom/mobclix/android/sdk/MobclixCreative$TextPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextPage"
.end annotation


# instance fields
.field private bAlign:Ljava/lang/String;

.field private bColor:I

.field private bText:Ljava/lang/String;

.field private bTextView:Landroid/widget/TextView;

.field private bgColor:I

.field private bgImgUrl:Ljava/lang/String;

.field private hAlign:Ljava/lang/String;

.field private hColor:I

.field private hText:Ljava/lang/String;

.field private hTextView:Landroid/widget/TextView;

.field private leftIconUrl:Ljava/lang/String;

.field private leftIconView:Landroid/widget/ImageView;

.field private rightIconUrl:Ljava/lang/String;

.field private rightIconView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter "resource"
    .parameter "p"

    .prologue
    const v2, -0xffff01

    .line 610
    #v2=(Integer);
    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 592
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage;);
    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    .line 593
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    .line 594
    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    .line 595
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    .line 597
    const-string v1, "center"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    .line 598
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    .line 599
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    .line 600
    const-string v1, "center"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    .line 601
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    .line 602
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    .line 611
    :try_start_0
    const-string v1, "bgColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 612
    :goto_0
    :try_start_1
    #v1=(Conflicted);
    const-string v1, "bgImg"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 613
    :goto_1
    :try_start_2
    const-string v1, "leftIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 614
    :goto_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    .line 615
    :cond_0
    :try_start_3
    #v1=(Conflicted);
    const-string v1, "rightIcon"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 616
    :goto_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const-string v1, "null"

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    .line 618
    :cond_1
    :try_start_4
    #v1=(Conflicted);
    const-string v1, "headerText"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 619
    .local v0, text:Lorg/json/JSONObject;
    :try_start_5
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 620
    :goto_4
    :try_start_6
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 621
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    .line 622
    :cond_2
    #v1=(Conflicted);
    const-string v1, "color"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 625
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_6
    :try_start_8
    #v0=(Conflicted);v1=(Conflicted);
    const-string v1, "bodyText"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 626
    .restart local v0       #text:Lorg/json/JSONObject;
    :try_start_9
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 627
    :goto_7
    :try_start_a
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 628
    :goto_8
    :try_start_b
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    .line 629
    :cond_3
    #v1=(Conflicted);
    const-string v1, "color"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 632
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_9
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->createLayout()V

    .line 634
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadIcons()V

    .line 635
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 636
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadBackgroundImage()V

    .line 638
    :cond_4
    return-void

    .line 630
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto :goto_9

    .line 627
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_1
    #v0=(Reference,Lorg/json/JSONObject;);
    move-exception v1

    goto :goto_8

    .line 626
    :catch_2
    move-exception v1

    goto :goto_7

    .line 623
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_3
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto :goto_6

    .line 620
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_4
    #v0=(Reference,Lorg/json/JSONObject;);
    move-exception v1

    goto :goto_5

    .line 619
    :catch_5
    move-exception v1

    goto :goto_4

    .line 615
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_6
    #v0=(Uninit);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_3

    .line 613
    :catch_7
    #v2=(Integer);
    move-exception v1

    goto/16 :goto_2

    .line 612
    :catch_8
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_1

    .line 611
    :catch_9
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 604
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 11

    .prologue
    const/16 v10, 0x3c

    #v10=(PosByte);
    const/16 v9, 0x30

    #v9=(PosByte);
    const/4 v8, -0x1

    #v8=(Byte);
    const/4 v7, 0x5

    #v7=(PosByte);
    const/4 v6, 0x0

    .line 641
    #v6=(Null);
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    #v3=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 642
    .local v3, textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v3=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    #v5=(Integer);
    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 643
    .local v0, leftIconLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v4, 0xf

    #v4=(PosByte);
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 644
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 645
    .local v1, rightIconLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v4, 0xf

    #v4=(PosByte);
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 646
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 647
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 664
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    #v2=(UninitRef,Landroid/widget/LinearLayout;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 665
    .local v2, textLayout:Landroid/widget/LinearLayout;
    #v2=(Reference,Landroid/widget/LinearLayout;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 666
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    const/16 v4, 0x10

    #v4=(PosByte);
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 669
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 670
    new-instance v4, Landroid/widget/TextView;

    #v4=(UninitRef,Landroid/widget/TextView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/TextView;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    .line 671
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 672
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    #v4=(Reference,Landroid/widget/TextView;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<b>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 677
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 678
    new-instance v4, Landroid/widget/TextView;

    #v4=(UninitRef,Landroid/widget/TextView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/TextView;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    .line 679
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 680
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    #v4=(Reference,Landroid/widget/TextView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    :cond_1
    #v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 687
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 688
    new-instance v4, Landroid/widget/ImageView;

    #v4=(UninitRef,Landroid/widget/ImageView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/ImageView;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    .line 689
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 692
    :cond_2
    #v4=(Conflicted);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 693
    new-instance v4, Landroid/widget/ImageView;

    #v4=(UninitRef,Landroid/widget/ImageView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v4=(Reference,Landroid/widget/ImageView;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    .line 694
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 698
    :cond_3
    #v4=(Conflicted);
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    #v4=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v4=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setBackgroundColor(I)V

    .line 700
    return-void

    .line 648
    .end local v2           #textLayout:Landroid/widget/LinearLayout;
    :cond_4
    #v2=(Uninit);v4=(Boolean);v6=(Null);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 649
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 650
    const/16 v4, 0x9

    #v4=(PosByte);
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 651
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 652
    :cond_5
    #v4=(Boolean);v5=(Reference,Ljava/lang/String;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_6

    .line 653
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 654
    const/16 v4, 0xb

    #v4=(PosByte);
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 655
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 657
    :cond_6
    #v4=(Boolean);v5=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 658
    const/16 v4, 0x9

    #v4=(PosByte);
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 659
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 660
    const/16 v4, 0xb

    #v4=(PosByte);
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 661
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->dp(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 726
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 733
    .local v0, fetchBackground:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-void
.end method

.method public loadIcons()V
    .locals 4

    .prologue
    .line 703
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "null"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 711
    .local v0, fetchIcon:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .end local v0           #fetchIcon:Ljava/lang/Thread;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 714
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 721
    .restart local v0       #fetchIcon:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .end local v0           #fetchIcon:Ljava/lang/Thread;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void
.end method
