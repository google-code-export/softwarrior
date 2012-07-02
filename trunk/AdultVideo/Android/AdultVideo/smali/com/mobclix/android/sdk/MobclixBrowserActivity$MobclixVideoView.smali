.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;
.super Landroid/widget/RelativeLayout;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixVideoView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adButtonBanner:Landroid/widget/LinearLayout;

.field private adButtons:Landroid/widget/LinearLayout;

.field private buttonImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buttonImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private buttonUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private landingUrl:Ljava/lang/String;

.field private loadComplete:Z

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mMediaController:Landroid/widget/MediaController;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mVideoView:Landroid/widget/VideoView;

.field private tagline:Ljava/lang/String;

.field private taglineImageUrl:Ljava/lang/String;

.field private taglineImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private trackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoLoaded:Z

.field private videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, -0x1

    #v7=(Byte);
    const/4 v5, 0x0

    .line 749
    #v5=(Null);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 725
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 702
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;);
    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    .line 704
    const-string v4, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    .line 705
    const-string v4, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    .line 706
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #v4=(Reference,Ljava/util/ArrayList;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    .line 708
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #v4=(Reference,Ljava/util/ArrayList;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    .line 709
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #v4=(Reference,Ljava/util/ArrayList;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    .line 710
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #v4=(Reference,Ljava/util/ArrayList;);
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    .line 711
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 712
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 714
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 715
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 721
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    .line 722
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 726
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    .line 728
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    #v2=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .local v2, responseObject:Lorg/json/JSONObject;
    :try_start_1
    #v2=(Reference,Lorg/json/JSONObject;);
    const-string v4, "videoUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 730
    :goto_0
    :try_start_2
    const-string v4, "landingUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 731
    :goto_1
    :try_start_3
    const-string v4, "tagline"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 732
    :goto_2
    :try_start_4
    const-string v4, "taglineImageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 734
    :goto_3
    :try_start_5
    const-string v4, "buttons"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 735
    .local v0, buttons:Lorg/json/JSONArray;
    #v0=(Reference,Lorg/json/JSONArray;);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    #v1=(Integer);v5=(Reference,Ljava/lang/String;);v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    #v4=(Integer);
    if-lt v1, v4, :cond_0

    .line 740
    .end local v0           #buttons:Lorg/json/JSONArray;
    .end local v1           #i:I
    :goto_5
    :try_start_6
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    const-string v4, "trackingUrls"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 741
    .local v3, tracking:Lorg/json/JSONArray;
    #v3=(Reference,Lorg/json/JSONArray;);
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    #v1=(Integer);
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v4

    #v4=(Integer);
    if-lt v1, v4, :cond_1

    .line 746
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :goto_7
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    #v4=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v4=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadVideoAd()V

    return-void

    .line 736
    .restart local v0       #buttons:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v2       #responseObject:Lorg/json/JSONObject;
    :cond_0
    :try_start_7
    #v0=(Reference,Lorg/json/JSONArray;);v1=(Integer);v2=(Reference,Lorg/json/JSONObject;);v3=(Uninit);v4=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    #v4=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "imageUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 742
    .end local v0           #buttons:Lorg/json/JSONArray;
    .restart local v3       #tracking:Lorg/json/JSONArray;
    :cond_1
    :try_start_8
    #v0=(Conflicted);v3=(Reference,Lorg/json/JSONArray;);v4=(Integer);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    #v4=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 744
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_7

    .line 739
    .restart local v2       #responseObject:Lorg/json/JSONObject;
    :catch_1
    #v2=(Reference,Lorg/json/JSONObject;);v3=(Uninit);v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_5

    .line 732
    :catch_2
    #v0=(Uninit);v1=(Uninit);v5=(Null);v6=(Null);
    move-exception v4

    goto :goto_3

    .line 731
    :catch_3
    move-exception v4

    goto :goto_2

    .line 730
    :catch_4
    move-exception v4

    goto :goto_1

    .line 729
    :catch_5
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 717
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    #v0=(Reference,Landroid/widget/VideoView;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    return-object v0
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    #v0=(Reference,Landroid/app/ProgressDialog;);
    return-object v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    return-object v0
.end method


# virtual methods
.method public createAdButtonBanner()V
    .locals 17

    .prologue
    .line 836
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;);
    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    #v12=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    if-nez v12, :cond_0

    .line 871
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void

    .line 838
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Integer);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    new-instance v12, Landroid/widget/LinearLayout;

    #v12=(UninitRef,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v13=(Reference,Landroid/app/Activity;);
    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #v12=(Reference,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    #v13=(One);
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 840
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v12, -0x1

    #v12=(Byte);
    const/4 v13, -0x2

    #v13=(Byte);
    invoke-direct {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 841
    .local v1, adButtonBannerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v12, 0xc

    #v12=(PosByte);
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 842
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    #v12=(Reference,Landroid/widget/LinearLayout;);
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    const-string v13, "#CC666666"

    #v13=(Reference,Ljava/lang/String;);
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    #v13=(Integer);
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 845
    new-instance v5, Landroid/widget/ImageView;

    #v5=(UninitRef,Landroid/widget/ImageView;);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 846
    .local v5, divider:Landroid/widget/ImageView;
    #v5=(Reference,Landroid/widget/ImageView;);
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    #v12=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    const/4 v13, -0x1

    #v13=(Byte);
    const/4 v14, -0x2

    #v14=(Byte);
    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #v12=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    const v12, 0x1080014

    #v12=(Integer);
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    #v12=(Reference,Landroid/widget/LinearLayout;);
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 850
    new-instance v12, Landroid/widget/LinearLayout;

    #v12=(UninitRef,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v13=(Reference,Landroid/app/Activity;);
    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #v12=(Reference,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 851
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    #v13=(Null);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v14=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    const/4 v15, 0x4

    #v15=(PosByte);
    invoke-static {v14, v15}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v14

    #v14=(Integer);
    const/4 v15, 0x0

    #v15=(Null);
    const/16 v16, 0x0

    #v16=(Null);
    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 852
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Reference,Landroid/app/Activity;);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    if-lt v7, v12, :cond_1

    .line 869
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    #v12=(Reference,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 853
    :cond_1
    #v12=(Integer);
    new-instance v2, Landroid/widget/ImageView;

    #v2=(UninitRef,Landroid/widget/ImageView;);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v12=(Reference,Landroid/app/Activity;);
    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 854
    .local v2, b:Landroid/widget/ImageView;
    #v2=(Reference,Landroid/widget/ImageView;);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Landroid/graphics/Bitmap;

    .line 855
    .local v3, bmImg:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 856
    .local v9, rawWidth:I
    #v9=(Integer);
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 857
    .local v8, rawHeight:I
    #v8=(Integer);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v12, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v11

    .line 858
    .local v11, width:I
    #v11=(Integer);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v12, v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v6

    .line 859
    .local v6, height:I
    #v6=(Integer);
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    #v4=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-direct {v4, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 860
    .local v4, buttonLayout:Landroid/widget/LinearLayout$LayoutParams;
    #v4=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    const/high16 v12, 0x3f80

    #v12=(Integer);
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 861
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #v12=(Reference,Landroid/widget/ImageView$ScaleType;);
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 864
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Object;);
    check-cast v10, Ljava/lang/String;

    .line 866
    .local v10, url:Ljava/lang/String;
    new-instance v12, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;

    #v12=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v10}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/content/Context;Ljava/lang/String;)V

    #v12=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;);
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 852
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 874
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 881
    .local v0, fetchBackground:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method public loadButtonImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 905
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;);
    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;);
    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 912
    .local v0, fetchBackground:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method public loadTaglineImage()V
    .locals 4

    .prologue
    .line 885
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;);
    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;);
    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 900
    .local v0, fetchBackground:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 901
    return-void
.end method

.method public loadTrackingImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 916
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;);
    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;);
    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 921
    .local v0, fetchBackground:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 922
    return-void
.end method

.method public loadVideoAd()V
    .locals 10

    .prologue
    const/16 v8, 0x400

    #v8=(PosShort);
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v7, -0x2

    #v7=(Byte);
    const/4 v9, 0x4

    .line 769
    #v9=(PosByte);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 772
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #v0=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 774
    .local v0, paramsCenter:Landroid/widget/RelativeLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v5, 0xd

    #v5=(PosByte);
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 776
    new-instance v5, Landroid/widget/VideoView;

    #v5=(UninitRef,Landroid/widget/VideoView;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v6=(Reference,Landroid/app/Activity;);
    invoke-direct {v5, v6}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    #v5=(Reference,Landroid/widget/VideoView;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    .line 777
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    const/16 v6, 0x539

    #v6=(PosShort);
    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setId(I)V

    .line 778
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    new-instance v5, Landroid/widget/MediaController;

    #v5=(UninitRef,Landroid/widget/MediaController;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v6=(Reference,Landroid/app/Activity;);
    invoke-direct {v5, v6}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    #v5=(Reference,Landroid/widget/MediaController;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 781
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 783
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 784
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 785
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 786
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 787
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 788
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v9}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 789
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 791
    new-instance v5, Landroid/widget/ImageView;

    #v5=(UninitRef,Landroid/widget/ImageView;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v5=(Reference,Landroid/widget/ImageView;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    .line 792
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;);
    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;);
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 805
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_3

    .line 806
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout;

    #v3=(UninitRef,Landroid/widget/LinearLayout;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 807
    .local v3, taglineWrap:Landroid/widget/LinearLayout;
    #v3=(Reference,Landroid/widget/LinearLayout;);
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #v1=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 808
    .local v1, taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/16 v5, 0xb

    #v5=(PosByte);
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 809
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    const-string v5, "#CC666666"

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 811
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-static {v5, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v5

    #v5=(Integer);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v6, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v6

    #v6=(Integer);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-static {v7, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v7

    #v7=(Integer);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 812
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, "null"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 813
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    #v2=(UninitRef,Landroid/widget/TextView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 814
    .local v2, taglineView:Landroid/widget/TextView;
    #v2=(Reference,Landroid/widget/TextView;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    .end local v2           #taglineView:Landroid/widget/TextView;
    :goto_0
    #v2=(Conflicted);
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 824
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_3
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-virtual {v5, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 825
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    #v4=(Conflicted);v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_6

    .line 828
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    const-string v6, ""

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadBackgroundImage()V

    .line 830
    :cond_4
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    #v5=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    #v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_7

    .line 833
    return-void

    .line 817
    .restart local v1       #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #taglineWrap:Landroid/widget/LinearLayout;
    :cond_5
    #v1=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);v2=(Uninit);v3=(Reference,Landroid/widget/LinearLayout;);v4=(Uninit);v5=(Boolean);v6=(Reference,Ljava/lang/String;);
    new-instance v5, Landroid/widget/ImageView;

    #v5=(UninitRef,Landroid/widget/ImageView;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v5=(Reference,Landroid/widget/ImageView;);
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 818
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 819
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTaglineImage()V

    goto :goto_0

    .line 825
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_6
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 826
    .local v4, u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadButtonImage(Ljava/lang/String;)V

    goto :goto_1

    .line 830
    .end local v4           #u:Ljava/lang/String;
    :cond_7
    #v4=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 831
    .restart local v4       #u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTrackingImage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    #v0=(Reference,Landroid/app/ProgressDialog;);
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 760
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->removeView(Landroid/view/View;)V

    .line 761
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 753
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 754
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 756
    return-void
.end method
