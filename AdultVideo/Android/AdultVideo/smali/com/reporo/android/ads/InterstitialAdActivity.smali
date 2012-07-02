.class public Lcom/reporo/android/ads/InterstitialAdActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/reporo/android/ads/InterstitialAdActivity;);
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    #v10=(Null);
    const/4 v9, -0x2

    #v9=(Byte);
    const/16 v6, 0xf

    #v6=(PosByte);
    const/4 v8, 0x5

    #v8=(PosByte);
    const/4 v7, -0x1

    #v7=(Byte);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Reporo SDK"

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "Creating Interstitial Ad"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/reporo/android/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rAd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "rAd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/reporo/android/ads/j;

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout;

    #v1=(UninitRef,Landroid/widget/RelativeLayout;);
    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #v1=(Reference,Landroid/widget/RelativeLayout;);
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #v2=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v2=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    #v2=(UninitRef,Landroid/widget/TextView;);
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Landroid/widget/TextView;);
    const/16 v3, 0x300d

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v10, v6, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    #v3=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v3, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v3=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "Skip this ad"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Lcom/reporo/android/ads/h;

    #v3=(UninitRef,Lcom/reporo/android/ads/h;);
    invoke-direct {v3, p0}, Lcom/reporo/android/ads/h;-><init>(Lcom/reporo/android/ads/InterstitialAdActivity;)V

    #v3=(Reference,Lcom/reporo/android/ads/h;);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/reporo/android/ads/AdView;

    #v2=(UninitRef,Lcom/reporo/android/ads/AdView;);
    invoke-direct {v2, p0}, Lcom/reporo/android/ads/AdView;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Lcom/reporo/android/ads/AdView;);
    const/16 v3, 0x300e

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Lcom/reporo/android/ads/AdView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    #v3=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v3, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v3=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v4, 0x3

    #v4=(PosByte);
    const/16 v5, 0x300d

    #v5=(PosShort);
    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Lcom/reporo/android/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    #v3=(UninitRef,Landroid/widget/TextView;);
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Landroid/widget/TextView;);
    const/16 v4, 0x300f

    #v4=(PosShort);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v10, v6, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    #v4=(UninitRef,Landroid/widget/RelativeLayout$LayoutParams;);
    invoke-direct {v4, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #v4=(Reference,Landroid/widget/RelativeLayout$LayoutParams;);
    const/4 v5, 0x3

    #v5=(PosByte);
    const/16 v6, 0x300e

    #v6=(PosShort);
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "Skip this ad"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lcom/reporo/android/ads/i;

    #v4=(UninitRef,Lcom/reporo/android/ads/i;);
    invoke-direct {v4, p0}, Lcom/reporo/android/ads/i;-><init>(Lcom/reporo/android/ads/InterstitialAdActivity;)V

    #v4=(Reference,Lcom/reporo/android/ads/i;);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/reporo/android/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/reporo/android/ads/AdView;->a(Lcom/reporo/android/ads/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    :cond_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto/16 :goto_0

    :catch_0
    #v0=(Reference,Lcom/reporo/android/ads/j;);v2=(Reference,Lcom/reporo/android/ads/AdView;);v3=(Reference,Landroid/widget/TextView;);v4=(Reference,Lcom/reporo/android/ads/i;);v5=(PosByte);v6=(PosShort);
    move-exception v0

    const-string v0, "Reporo SDK"

    const-string v1, "Unable to display insterstitial Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "com.reporo.android.ads.intent.is"

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/reporo/android/ads/InterstitialAdActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/reporo/android/ads/InterstitialAdActivity;->finish()V

    goto :goto_1

    :cond_1
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(PosByte);
    const-string v0, "Reporo SDK"

    const-string v1, "Unable to display insterstitial Ad null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "com.reporo.android.ads.intent.is"

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/reporo/android/ads/InterstitialAdActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/reporo/android/ads/InterstitialAdActivity;->finish()V

    goto :goto_1
.end method
