.class Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;
.super Landroid/os/Handler;
.source "MobclixFullScreenAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFullScreenAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;);
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    .line 398
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-static {v11, v12}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$3(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/lang/Thread;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "type"

    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 401
    .local v10, type:Ljava/lang/String;
    #v10=(Reference,Ljava/lang/String;);
    const-string v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_6

    .line 402
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v12, v12, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v13, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v13=(Reference,Ljava/lang/String;);
    invoke-virtual {v11, v12, v13}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, instrPath:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "handle_response"

    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    :try_start_0
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "a_decode_json"

    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "response"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rawResponse:Ljava/lang/String;

    .line 408
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v12, v12, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rawResponse:Ljava/lang/String;

    const-string v13, "raw_json"

    iget-object v14, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v14=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v14, v14, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v8, Lorg/json/JSONObject;

    #v8=(UninitRef,Lorg/json/JSONObject;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->rawResponse:Ljava/lang/String;

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 411
    .local v8, response:Lorg/json/JSONObject;
    #v8=(Reference,Lorg/json/JSONObject;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    const-string v12, "creatives"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    iput-object v12, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creatives:Lorg/json/JSONArray;

    .line 412
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creatives:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    #v11=(Integer);
    const/4 v12, 0x1

    #v12=(One);
    if-lt v11, v12, :cond_0

    .line 413
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    const/4 v12, 0x0

    #v12=(Null);
    iput v12, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->nCreative:I

    .line 415
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v12=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creatives:Lorg/json/JSONArray;

    iget-object v13, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget v13, v13, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->nCreative:I

    #v13=(Integer);
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "decoded_json"

    #v13=(Reference,Ljava/lang/String;);
    iget-object v14, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v14, v14, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->addInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->creatives:Lorg/json/JSONArray;

    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget v12, v12, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->nCreative:I

    #v12=(Integer);
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 419
    .local v0, creative:Lorg/json/JSONObject;
    #v0=(Reference,Lorg/json/JSONObject;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "b_build_models"

    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 422
    :try_start_1
    const-string v11, "eventUrls"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 426
    .local v3, eventUrls:Lorg/json/JSONObject;
    :try_start_2
    #v3=(Reference,Lorg/json/JSONObject;);
    const-string v11, "onShow"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 427
    .local v9, t:Lorg/json/JSONArray;
    #v9=(Reference,Lorg/json/JSONArray;);
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    #v4=(Integer);
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v11

    #v11=(Integer);
    if-lt v4, v11, :cond_2

    .line 432
    .end local v4           #i:I
    .end local v9           #t:Lorg/json/JSONArray;
    :goto_1
    :try_start_3
    #v4=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    const-string v11, "onTouch"

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 433
    .restart local v9       #t:Lorg/json/JSONArray;
    #v9=(Reference,Lorg/json/JSONArray;);
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    #v4=(Integer);
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    #v11=(Integer);
    if-lt v4, v11, :cond_3

    .line 438
    .end local v3           #eventUrls:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v9           #t:Lorg/json/JSONArray;
    :goto_3
    :try_start_4
    #v3=(Conflicted);v4=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "c_build_creative"

    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "a_determine_type"

    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    const-string v11, "props"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 445
    .local v7, properties:Lorg/json/JSONObject;
    :try_start_5
    #v7=(Reference,Lorg/json/JSONObject;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$6(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 446
    :goto_4
    :try_start_6
    const-string v11, "type"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 449
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    const-string v12, "b_get_view"

    invoke-virtual {v11, v5, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    const-string v11, "html"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    .line 455
    new-instance v11, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v11=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    const-string v12, "html"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-direct {v11, v12, v13}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V

    .line 459
    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v7           #properties:Lorg/json/JSONObject;
    :cond_0
    #v0=(Conflicted);v7=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v5

    .line 482
    .end local v5           #instrPath:Ljava/lang/String;
    .end local v8           #response:Lorg/json/JSONObject;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    return-void

    .line 428
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v3       #eventUrls:Lorg/json/JSONObject;
    .restart local v4       #i:I
    .restart local v5       #instrPath:Ljava/lang/String;
    .restart local v8       #response:Lorg/json/JSONObject;
    .restart local v9       #t:Lorg/json/JSONArray;
    :cond_2
    :try_start_7
    #v0=(Reference,Lorg/json/JSONObject;);v1=(Uninit);v2=(Uninit);v3=(Reference,Lorg/json/JSONObject;);v4=(Integer);v5=(Reference,Ljava/lang/String;);v6=(Uninit);v7=(Uninit);v8=(Reference,Lorg/json/JSONObject;);v9=(Reference,Lorg/json/JSONArray;);v11=(Integer);v12=(Reference,Ljava/lang/String;);v13=(Reference,Ljava/lang/String;);v14=(Reference,Ljava/lang/String;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$4(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 434
    :cond_3
    :try_start_8
    #v11=(Integer);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$5(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 457
    .end local v3           #eventUrls:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v9           #t:Lorg/json/JSONArray;
    .restart local v7       #properties:Lorg/json/JSONObject;
    :cond_4
    :try_start_9
    #v3=(Conflicted);v4=(Conflicted);v7=(Reference,Lorg/json/JSONObject;);v9=(Conflicted);v11=(Boolean);
    new-instance v11, Ljava/lang/Exception;

    #v11=(UninitRef,Ljava/lang/Exception;);
    const-string v12, "Unsupported ad type"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/Exception;);
    throw v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 463
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v7           #properties:Lorg/json/JSONObject;
    .end local v8           #response:Lorg/json/JSONObject;
    :catch_0
    #v0=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v1

    .line 464
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v11=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 466
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 467
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-static {v11}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->access$2(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v11

    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v12=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    iget-object v12, v12, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    .line 468
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_5
    #v6=(Conflicted);v12=(Conflicted);
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 469
    .local v6, listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v6, :cond_5

    .line 470
    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v12=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-interface {v6, v12, v13}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V

    goto :goto_5

    .line 475
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #instrPath:Ljava/lang/String;
    .end local v6           #listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Boolean);v13=(Uninit);v14=(Uninit);
    const-string v11, "failure"

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_1

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    #v11=(Reference,Landroid/os/Bundle;);
    const-string v12, "errorCode"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 477
    .local v2, errorCode:I
    #v2=(Integer);
    iget-object v11, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    iget-object v11, v11, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_6
    #v6=(Conflicted);v12=(Conflicted);
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;

    .line 478
    .restart local v6       #listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    if-eqz v6, :cond_7

    .line 479
    iget-object v12, p0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    #v12=(Reference,Lcom/mobclix/android/sdk/MobclixFullScreenAdView;);
    invoke-interface {v6, v12, v2}, Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V

    goto :goto_6

    .line 445
    .end local v2           #errorCode:I
    .end local v6           #listener:Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v5       #instrPath:Ljava/lang/String;
    .restart local v7       #properties:Lorg/json/JSONObject;
    .restart local v8       #response:Lorg/json/JSONObject;
    :catch_1
    #v0=(Reference,Lorg/json/JSONObject;);v2=(Uninit);v3=(Conflicted);v4=(Conflicted);v5=(Reference,Ljava/lang/String;);v6=(Uninit);v7=(Reference,Lorg/json/JSONObject;);v8=(Reference,Lorg/json/JSONObject;);v9=(Conflicted);v13=(Reference,Ljava/lang/String;);v14=(Reference,Ljava/lang/String;);
    move-exception v11

    goto/16 :goto_4

    .line 437
    .end local v7           #properties:Lorg/json/JSONObject;
    :catch_2
    #v7=(Uninit);v11=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_3

    .line 430
    .restart local v3       #eventUrls:Lorg/json/JSONObject;
    :catch_3
    #v3=(Reference,Lorg/json/JSONObject;);v11=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1
.end method
