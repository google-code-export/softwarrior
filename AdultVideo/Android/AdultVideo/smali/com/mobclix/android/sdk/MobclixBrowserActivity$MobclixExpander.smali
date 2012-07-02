.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;
.super Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixExpander"
.end annotation


# instance fields
.field hSpacer:Landroid/view/View;

.field iHeight:I

.field iLeftMargin:I

.field iTopMargin:I

.field iWidth:I

.field statusBarHeight:I

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field titleBarHeight:I

.field vSpacer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    .line 1270
    move-object/from16 v0, p1

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    move-object/from16 v1, p0

    #v1=(UninitThis,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 1212
    invoke-direct/range {p0 .. p2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    .line 1202
    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    .line 1203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iLeftMargin:I

    .line 1205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iWidth:I

    .line 1206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iHeight:I

    .line 1208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->statusBarHeight:I

    .line 1209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->titleBarHeight:I

    .line 1214
    const/16 v9, 0x1f4

    .line 1216
    .local v9, duration:I
    #v9=(PosShort);
    const/4 v6, 0x0

    .line 1217
    .local v6, fTopMargin:I
    #v6=(Null);
    const/4 v4, 0x0

    .line 1218
    .local v4, fLeftMargin:I
    #v4=(Null);
    const/4 v7, 0x0

    .line 1219
    .local v7, fWidth:I
    #v7=(Null);
    const/4 v8, 0x0

    .line 1222
    .local v8, fHeight:I
    :try_start_0
    #v8=(Null);
    new-instance v16, Lorg/json/JSONObject;

    #v16=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v0, v16

    #v0=(UninitRef,Lorg/json/JSONObject;);
    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .local v16, responseObject:Lorg/json/JSONObject;
    :try_start_1
    #v0=(Reference,Lorg/json/JSONObject;);v16=(Reference,Lorg/json/JSONObject;);
    const-string v2, "statusBarHeight"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->statusBarHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1224
    :goto_0
    :try_start_2
    #v2=(Conflicted);
    const-string v2, "topMargin"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1225
    :goto_1
    :try_start_3
    #v2=(Conflicted);
    const-string v2, "leftMargin"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iLeftMargin:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1226
    :goto_2
    :try_start_4
    #v2=(Conflicted);
    const-string v2, "fTopMargin"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    .line 1227
    :goto_3
    :try_start_5
    #v6=(Integer);
    const-string v2, "fLeftMargin"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    .line 1228
    :goto_4
    :try_start_6
    #v4=(Integer);
    const-string v2, "fWidth"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v7

    .line 1229
    :goto_5
    :try_start_7
    #v7=(Integer);
    const-string v2, "fHeight"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v8

    .line 1230
    :goto_6
    :try_start_8
    #v8=(Integer);
    const-string v2, "duration"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v9

    .line 1233
    .end local v16           #responseObject:Lorg/json/JSONObject;
    :goto_7
    #v9=(Integer);v12=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    #v2=(Integer);
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->statusBarHeight:I

    #v3=(Integer);
    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    .line 1235
    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;);
    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;)V

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;);
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    #v17=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1244
    .local v17, vslp:Landroid/widget/LinearLayout$LayoutParams;
    #v0=(Reference,Landroid/widget/LinearLayout$LayoutParams;);v17=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    new-instance v2, Landroid/view/View;

    #v2=(UninitRef,Landroid/view/View;);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->activity:Landroid/app/Activity;

    #v3=(Reference,Landroid/app/Activity;);
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Landroid/view/View;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    #v15=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    const/4 v2, -0x2

    #v2=(Byte);
    const/4 v3, -0x2

    #v3=(Byte);
    invoke-direct {v15, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1248
    .local v15, hwlp:Landroid/widget/LinearLayout$LayoutParams;
    #v15=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    new-instance v13, Landroid/widget/LinearLayout;

    #v13=(UninitRef,Landroid/widget/LinearLayout;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->activity:Landroid/app/Activity;

    #v2=(Reference,Landroid/app/Activity;);
    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v13, hWrapper:Landroid/widget/LinearLayout;
    #v13=(Reference,Landroid/widget/LinearLayout;);
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    #v14=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iLeftMargin:I

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1252
    .local v14, hslp:Landroid/widget/LinearLayout$LayoutParams;
    #v14=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    new-instance v2, Landroid/view/View;

    #v2=(UninitRef,Landroid/view/View;);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->activity:Landroid/app/Activity;

    #v3=(Reference,Landroid/app/Activity;);
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Landroid/view/View;);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webviewContainer:Landroid/view/ViewGroup;

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webviewContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getWidth()I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iWidth:I

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getHeight()I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iHeight:I

    .line 1260
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    #v11=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iHeight:I

    #v3=(Integer);
    invoke-direct {v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1261
    .local v11, avlp:Landroid/widget/LinearLayout$LayoutParams;
    #v11=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v2, v11}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->addView(Landroid/view/View;)V

    .line 1264
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->addView(Landroid/view/View;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iLeftMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    #v5=(Integer);
    move-object/from16 v2, p0

    move-object/from16 v10, p0

    #v10=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    invoke-virtual/range {v2 .. v10}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->expand(IIIIIIILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    .line 1231
    .end local v11           #avlp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #hWrapper:Landroid/widget/LinearLayout;
    .end local v14           #hslp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #hwlp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v17           #vslp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Uninit);v5=(Uninit);v9=(PosShort);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v17=(Uninit);
    move-exception v12

    .local v12, e:Lorg/json/JSONException;
    #v12=(Reference,Lorg/json/JSONException;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->activity:Landroid/app/Activity;

    #v2=(Reference,Landroid/app/Activity;);
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 1230
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v16       #responseObject:Lorg/json/JSONObject;
    :catch_1
    #v12=(Uninit);v16=(Reference,Lorg/json/JSONObject;);
    move-exception v2

    goto/16 :goto_7

    .line 1229
    :catch_2
    #v8=(Null);
    move-exception v2

    goto/16 :goto_6

    .line 1228
    :catch_3
    #v7=(Null);
    move-exception v2

    goto/16 :goto_5

    .line 1227
    :catch_4
    #v4=(Null);
    move-exception v2

    goto/16 :goto_4

    .line 1226
    :catch_5
    #v2=(Conflicted);v6=(Null);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_3

    .line 1225
    :catch_6
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_2

    .line 1224
    :catch_7
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 1223
    :catch_8
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized exit(I)V
    .locals 9
    .parameter "duration"

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1289
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    monitor-exit p0

    return-void

    .line 1277
    :cond_0
    :try_start_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    .line 1278
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1279
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->open:Z

    .line 1281
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1282
    .local v7, w:Landroid/view/Window;
    #v7=(Reference,Landroid/view/Window;);
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1283
    .local v8, wlp:Landroid/view/WindowManager$LayoutParams;
    #v8=(Reference,Landroid/view/WindowManager$LayoutParams;);
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->windowFlags:I

    #v0=(Integer);
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1284
    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1286
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillContract()V

    .line 1288
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iLeftMargin:I

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iTopMargin:I

    #v2=(Integer);
    iget v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iWidth:I

    #v3=(Integer);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->iHeight:I

    #v4=(Integer);
    move-object v0, p0

    move v5, p1

    #v5=(Integer);
    move-object v6, p0

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    invoke-virtual/range {v0 .. v6}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->expand(IIIIILandroid/view/animation/Animation$AnimationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1274
    .end local v7           #w:Landroid/view/Window;
    .end local v8           #wlp:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public expand(IIIIIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 13
    .parameter "leftMargin"
    .parameter "fLeftMargin"
    .parameter "topMargin"
    .parameter "fTopMargin"
    .parameter "width"
    .parameter "height"
    .parameter "duration"
    .parameter "l"

    .prologue
    .line 1296
    if-gez p7, :cond_0

    const/16 p7, 0x0

    .line 1297
    :cond_0
    const/16 v4, 0xbb8

    #v4=(PosShort);
    move/from16 v0, p7

    #v0=(Integer);
    if-le v0, v4, :cond_1

    const/16 p7, 0xbb8

    .line 1301
    :cond_1
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->open:Z

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 1302
    if-gez p3, :cond_2

    const/16 p3, 0x0

    .line 1303
    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 1304
    :cond_3
    if-gez p4, :cond_4

    const/16 p4, 0x0

    .line 1305
    :cond_4
    if-gez p2, :cond_5

    const/4 p2, 0x0

    .line 1306
    :cond_5
    if-gez p5, :cond_6

    const/16 p5, 0x1

    .line 1307
    :cond_6
    if-gez p6, :cond_7

    const/16 p6, 0x1

    .line 1309
    :cond_7
    new-instance v10, Landroid/util/DisplayMetrics;

    #v10=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1310
    .local v10, dm:Landroid/util/DisplayMetrics;
    #v10=(Reference,Landroid/util/DisplayMetrics;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1311
    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1312
    .local v12, screenWidth:I
    #v12=(Integer);
    iget v11, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1313
    .local v11, screenHeight:I
    #v11=(Integer);
    move/from16 v0, p5

    if-le v0, v12, :cond_a

    .line 1314
    move/from16 p5, v12

    .line 1315
    const/4 p2, 0x0

    .line 1319
    :cond_8
    :goto_0
    #v4=(Conflicted);
    move/from16 v0, p6

    if-le v0, v11, :cond_b

    .line 1320
    move/from16 p6, v11

    .line 1321
    const/16 p4, 0x0

    .line 1330
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    :cond_9
    :goto_1
    #v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    #v3=(Reference,Landroid/view/View;);
    const/high16 v4, 0x3f80

    #v4=(Integer);
    const/high16 v5, 0x3f80

    #v5=(Integer);
    move/from16 v0, p3

    int-to-float v6, v0

    #v6=(Float);
    move/from16 v0, p4

    int-to-float v7, v0

    #v7=(Float);
    invoke-direct/range {v1 .. v7}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    .line 1331
    .local v1, vExpand:Landroid/view/animation/Animation;
    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    move/from16 v0, p7

    int-to-long v4, v0

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1333
    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    #v4=(Reference,Landroid/view/View;);
    int-to-float v5, p1

    #v5=(Float);
    int-to-float v6, p2

    const/high16 v7, 0x3f80

    #v7=(Integer);
    const/high16 v8, 0x3f80

    #v8=(Integer);
    invoke-direct/range {v2 .. v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    .line 1334
    .local v2, hExpand:Landroid/view/animation/Animation;
    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    move/from16 v0, p7

    int-to-long v4, v0

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1336
    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v5=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getWidth()I

    move-result v6

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    move/from16 v0, p5

    int-to-float v7, v0

    #v7=(Float);
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getHeight()I

    move-result v8

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    move/from16 v0, p6

    int-to-float v9, v0

    #v9=(Float);
    invoke-direct/range {v3 .. v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    .line 1337
    .local v3, webviewExpand:Landroid/view/animation/Animation;
    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$ExpandAnimation;);
    move/from16 v0, p7

    int-to-long v4, v0

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1340
    invoke-virtual {v3, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1342
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    #v4=(Reference,Landroid/view/View;);
    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1343
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v4, v3}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1345
    return-void

    .line 1316
    .end local v1           #vExpand:Landroid/view/animation/Animation;
    .end local v2           #hExpand:Landroid/view/animation/Animation;
    .end local v3           #webviewExpand:Landroid/view/animation/Animation;
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v11       #screenHeight:I
    .restart local v12       #screenWidth:I
    :cond_a
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference,Landroid/util/DisplayMetrics;);v11=(Integer);v12=(Integer);
    add-int v4, p5, p2

    #v4=(Integer);
    if-le v4, v12, :cond_8

    .line 1317
    sub-int p2, v12, p5

    goto :goto_0

    .line 1322
    :cond_b
    #v4=(Conflicted);
    add-int v4, p6, p4

    #v4=(Integer);
    if-le v4, v11, :cond_9

    .line 1323
    sub-int p4, v11, p6

    goto :goto_1
.end method

.method public expand(IIIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 9
    .parameter "fLeftMargin"
    .parameter "fTopMargin"
    .parameter "width"
    .parameter "height"
    .parameter "duration"
    .parameter "l"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->hSpacer:Landroid/view/View;

    #v0=(Reference,Landroid/view/View;);
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    #v1=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    #v3=(Integer);
    move-object v0, p0

    move v2, p1

    #v2=(Integer);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move v7, p5

    #v7=(Integer);
    move-object v8, p6

    #v8=(Reference,Landroid/view/animation/Animation$AnimationListener;);
    invoke-virtual/range {v0 .. v8}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->expand(IIIIIIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1293
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x400

    .line 1348
    #v3=(PosShort);
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->open:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->jsInterface:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, v1, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    .line 1351
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1352
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1354
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->screenReceiver:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1366
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 1358
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->vSpacer:Landroid/view/View;

    #v1=(Reference,Landroid/view/View;);
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->statusBarHeight:I

    #v2=(Integer);
    if-gt v1, v2, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1360
    .local v0, ww:Landroid/view/Window;
    #v0=(Reference,Landroid/view/Window;);
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1363
    .end local v0           #ww:Landroid/view/Window;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->resumeListeners()V

    .line 1364
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adFinishedResizing()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1370
    return-void
.end method
