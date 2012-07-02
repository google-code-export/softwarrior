.class Lcom/mobclix/android/sdk/MobclixCreative;
.super Landroid/widget/ViewFlipper;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixCreative$Action;,
        Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;,
        Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;,
        Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;,
        Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$Page;,
        Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;,
        Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;,
        Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;,
        Lcom/mobclix/android/sdk/MobclixCreative$TextPage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MobclixCreative"

.field private static isPlaying:Z


# instance fields
.field private action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

.field private asyncRequestThreads:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private creativeId:Ljava/lang/String;

.field private customAdThread:Ljava/lang/Thread;

.field final handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

.field private hasAutoplayed:Z

.field private initialized:Z

.field private instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

.field private loop:Z

.field private numPages:I

.field private onLoadUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

.field private pageCycleTimer:Ljava/util/Timer;

.field parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

.field trackingPixelsFired:Z

.field private transitionTime:I

.field private transitionType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visiblePage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isPlaying:Z

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V
    .locals 11
    .parameter "a"
    .parameter "responseObject"
    .parameter "ap"

    .prologue
    const/16 v9, 0xbb8

    #v9=(PosShort);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v10, 0x1

    .line 105
    #v10=(One);
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference,Landroid/content/Context;);
    invoke-direct {p0, v7}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 76
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-static {}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->getInstance()Lcom/mobclix/android/sdk/MobclixInstrumentation;

    move-result-object v7

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    .line 80
    const-string v7, ""

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    .line 81
    const-string v7, ""

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #v7=(Reference,Ljava/util/ArrayList;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onLoadUrls:Ljava/util/ArrayList;

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #v7=(Reference,Ljava/util/ArrayList;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    .line 86
    new-instance v7, Ljava/util/Stack;

    #v7=(UninitRef,Ljava/util/Stack;);
    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    #v7=(Reference,Ljava/util/Stack;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    .line 88
    iput-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z

    .line 89
    iput-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->trackingPixelsFired:Z

    .line 90
    iput v10, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 91
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 92
    const-string v7, "none"

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    .line 93
    iput-boolean v10, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    .line 94
    iput-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 96
    iput v9, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    .line 97
    const/4 v7, 0x0

    #v7=(Null);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 101
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;);
    invoke-direct {v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    .line 102
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;);
    invoke-direct {v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    .line 107
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 109
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v9, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8, v9}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, instrPath:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "handle_response"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {p0, v10}, Lcom/mobclix/android/sdk/MobclixCreative;->requestDisallowInterceptTouchEvent(Z)V

    .line 114
    if-nez p2, :cond_0

    .line 115
    :try_start_0
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;);
    invoke-direct {v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 116
    const/4 v7, 0x1

    #v7=(One);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 117
    const-string v7, "customAd"

    #v7=(Reference,Ljava/lang/String;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 118
    const/4 v7, 0x1

    #v7=(One);
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z

    .line 229
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 122
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);v9=(Reference,Ljava/lang/String;);v10=(One);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "b_build_models"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    move-object v0, p2

    .line 129
    .local v0, creative:Lorg/json/JSONObject;
    :try_start_1
    #v0=(Reference,Lorg/json/JSONObject;);
    const-string v7, "eventUrls"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 133
    .local v2, eventUrls:Lorg/json/JSONObject;
    :try_start_2
    #v2=(Reference,Lorg/json/JSONObject;);
    const-string v7, "onShow"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 134
    .local v6, t:Lorg/json/JSONArray;
    #v6=(Reference,Lorg/json/JSONArray;);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #v3=(Integer);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    #v7=(Integer);
    if-lt v3, v7, :cond_1

    .line 139
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    :goto_2
    :try_start_3
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const-string v7, "onTouch"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 140
    .restart local v6       #t:Lorg/json/JSONArray;
    #v6=(Reference,Lorg/json/JSONArray;);
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    #v3=(Integer);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    #v7=(Integer);
    if-lt v3, v7, :cond_2

    .line 146
    .end local v2           #eventUrls:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    :goto_4
    :try_start_4
    #v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "c_build_creative"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "a_determine_type"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v7, "props"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    .line 154
    .local v5, properties:Lorg/json/JSONObject;
    :try_start_5
    #v5=(Reference,Lorg/json/JSONObject;);
    const-string v7, "id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 155
    :goto_5
    :try_start_6
    const-string v7, "type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 158
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    .line 163
    :try_start_7
    iput-boolean p3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 164
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    const-string v8, "action"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, p0, v8, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 171
    :goto_6
    :try_start_8
    #v1=(Conflicted);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "b_get_view"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v8, "html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 175
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    const-string v8, "html"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 176
    const/4 v7, 0x1

    #v7=(One);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 177
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 222
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v5           #properties:Lorg/json/JSONObject;
    :catch_0
    #v0=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    .line 223
    .local v1, e:Lorg/json/JSONException;
    #v1=(Reference,Lorg/json/JSONException;);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v8=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v2       #eventUrls:Lorg/json/JSONObject;
    .restart local v3       #i:I
    .restart local v6       #t:Lorg/json/JSONArray;
    :cond_1
    :try_start_9
    #v0=(Reference,Lorg/json/JSONObject;);v1=(Uninit);v2=(Reference,Lorg/json/JSONObject;);v3=(Integer);v5=(Uninit);v6=(Reference,Lorg/json/JSONArray;);v7=(Integer);v9=(Reference,Ljava/lang/String;);v10=(One);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onLoadUrls:Ljava/util/ArrayList;

    #v7=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 141
    :cond_2
    :try_start_a
    #v7=(Integer);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    #v7=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 166
    .end local v2           #eventUrls:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    .restart local v5       #properties:Lorg/json/JSONObject;
    :catch_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Reference,Lorg/json/JSONObject;);v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    :try_start_b
    #v1=(Reference,Ljava/lang/Exception;);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    invoke-direct {v7, p0, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    goto :goto_6

    .line 182
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    #v1=(Conflicted);v7=(Boolean);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "openallocation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 183
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    invoke-direct {v7, v5, p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;-><init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 184
    const/4 v7, 0x1

    #v7=(One);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 185
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 190
    :cond_4
    :try_start_c
    #v7=(Boolean);
    const-string v7, "transitionType"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    .line 191
    :goto_7
    :try_start_d
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    invoke-virtual {p0, p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    .line 193
    :try_start_e
    const-string v7, "transitionTime"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    #v7=(DoubleLo);v8=(DoubleHi);
    const-wide v9, 0x408f400000000000L

    #v9=(LongLo);v10=(LongHi);
    mul-double/2addr v7, v9

    double-to-int v7, v7

    #v7=(Integer);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3

    .line 194
    :goto_8
    :try_start_f
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    #v7=(Integer);
    if-nez v7, :cond_5

    .line 195
    const/16 v7, 0xbb8

    #v7=(PosShort);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    .line 196
    :cond_5
    :try_start_10
    #v7=(Integer);
    const-string v7, "loop"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_2

    .line 199
    :goto_9
    :try_start_11
    #v7=(Conflicted);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "image"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_8

    .line 200
    const-string v7, "images"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 201
    .restart local v6       #t:Lorg/json/JSONArray;
    #v6=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    #v7=(Integer);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 202
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_a
    #v3=(Integer);v7=(Conflicted);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    #v7=(Integer);
    if-lt v3, v7, :cond_7

    .line 215
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    :cond_6
    #v3=(Conflicted);v6=(Conflicted);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v8, "f_load_ad_creative"

    invoke-virtual {v7, v4, v8}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->runNextAsyncRequest()V

    .line 219
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v7, v4}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    const/4 v7, 0x1

    #v7=(One);
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z

    goto/16 :goto_0

    .line 203
    .restart local v3       #i:I
    .restart local v6       #t:Lorg/json/JSONArray;
    :cond_7
    #v3=(Integer);v6=(Reference,Lorg/json/JSONArray;);v7=(Integer);
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;);
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 205
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    :cond_8
    #v3=(Conflicted);v6=(Conflicted);v7=(Boolean);
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_6

    .line 206
    const-string v7, "texts"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 207
    .restart local v6       #t:Lorg/json/JSONArray;
    #v6=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    #v7=(Integer);
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 208
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_b
    #v3=(Integer);v7=(Conflicted);
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    #v7=(Integer);
    if-ge v3, v7, :cond_6

    .line 209
    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    #v7=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$TextPage;);
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;-><init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v7=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$TextPage;);
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 196
    .end local v3           #i:I
    .end local v6           #t:Lorg/json/JSONArray;
    :catch_2
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v7

    #v7=(Reference,Lorg/json/JSONException;);
    goto :goto_9

    .line 193
    :catch_3
    #v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_8

    .line 190
    :catch_4
    #v7=(Conflicted);v8=(Reference,Ljava/lang/String;);v9=(Reference,Ljava/lang/String;);v10=(One);
    move-exception v7

    #v7=(Reference,Lorg/json/JSONException;);
    goto/16 :goto_7

    .line 154
    :catch_5
    #v1=(Uninit);
    move-exception v7

    goto/16 :goto_5

    .line 144
    .end local v5           #properties:Lorg/json/JSONObject;
    :catch_6
    #v5=(Uninit);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_4

    .line 137
    .restart local v2       #eventUrls:Lorg/json/JSONObject;
    :catch_7
    #v2=(Reference,Lorg/json/JSONObject;);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$10(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    #v0=(Reference,Ljava/lang/Thread;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixCreative;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    #v0=(Reference,Ljava/util/Stack;);
    return-object v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Lcom/mobclix/android/sdk/MobclixCreative$Action;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    return-object v0
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixCreative;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    sput-boolean p0, Lcom/mobclix/android/sdk/MobclixCreative;->isPlaying:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    return-void
.end method

.method private dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
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


# virtual methods
.method fireOnShowTrackingPixels()V
    .locals 5

    .prologue
    .line 437
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onLoadUrls:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 441
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->trackingPixelsFired:Z

    .line 442
    return-void

    .line 437
    :cond_0
    #v2=(Reference,Ljava/util/Iterator;);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, t:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 439
    .local v1, trackingThread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method fireOnTouchTrackingPixels()V
    .locals 5

    .prologue
    .line 445
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 449
    return-void

    .line 445
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 446
    .local v0, t:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    #v3=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    #v4=(UninitRef,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    #v4=(Reference,Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;);
    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    #v3=(Reference,Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;);
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 447
    .local v1, trackingThread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getHasAutoplayed()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    #v0=(Boolean);
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->initialized:Z

    #v0=(Boolean);
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    if-lt v1, v2, :cond_0

    .line 244
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 246
    :catch_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    #v0=(Reference,Ljava/lang/IllegalArgumentException;);
    const-string v1, "MobclixCreative"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Android project  issue 6191  workaround."

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 260
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);
    move-exception v1

    .line 253
    :try_start_5
    #v1=(Reference,Ljava/lang/Throwable;);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 254
    throw v1

    .line 258
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    #v1=(Reference,Ljava/util/Timer;);
    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 272
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 269
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :try_start_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Ljava/lang/Class;);
    if-ne v1, v2, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    .line 280
    .local v0, i:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->pauseListeners()V

    .line 281
    iget-boolean v1, v0, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillBecomeHidden()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .end local v0           #i:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 269
    :catchall_0
    #v0=(Uninit);v2=(Uninit);
    move-exception v1

    :try_start_2
    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 284
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 291
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 292
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 293
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 288
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Ljava/lang/Class;);
    if-ne v0, v1, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v6

    .line 301
    .local v6, i:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
    #v6=(Reference,Lcom/mobclix/android/sdk/MobclixJavascriptInterface;);
    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->resumeListeners()V

    .line 303
    iget-boolean v0, v6, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    if-nez v0, :cond_1

    .line 304
    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adDidReturnFromHidden()V

    .line 306
    :cond_1
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, v6, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    .end local v6           #i:Lcom/mobclix/android/sdk/MobclixJavascriptInterface;
    :cond_2
    :goto_0
    #v0=(Reference,Ljava/lang/Object;);v1=(Conflicted);v6=(Conflicted);
    return-void

    .line 288
    :catchall_0
    #v0=(Conflicted);v6=(Uninit);
    move-exception v0

    :try_start_2
    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 308
    :catch_0
    #v0=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Ljava/lang/Class;);
    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->adWillTerminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 317
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 323
    :try_start_0
    #v0=(Null);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "html"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    .line 326
    :cond_1
    #v0=(Null);v1=(Boolean);v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->fireOnTouchTrackingPixels()V

    .line 328
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 330
    :catch_0
    #v0=(Null);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0
.end method

.method public runNextAsyncRequest()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v3, 0x0

    .line 337
    #v3=(Null);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    #v0=(Reference,Ljava/util/Stack;);
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    #v0=(Reference,Ljava/util/Stack;);
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljava/lang/Thread;

    .line 339
    .local v9, thread:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 433
    .end local v9           #thread:Ljava/lang/Thread;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 343
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iput v3, v0, Lcom/mobclix/android/sdk/MobclixAdView;->getNextAdAttempts:I

    .line 345
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    sget-object v2, Lcom/mobclix/android/sdk/MobclixInstrumentation;->ADVIEW:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->startGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, instrPath:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "handle_response"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 350
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "c_build_creative"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "b_get_view"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "c_deque_view"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 354
    :goto_1
    #v1=(Conflicted);v6=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I

    move-result v0

    #v0=(Integer);
    if-gt v0, v10, :cond_6

    .line 377
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "e_add_view"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 383
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 385
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "d_bring_onscreen"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onStop()V

    .line 390
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    const-string v1, "flipRight"

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V

    .line 393
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    .line 394
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 396
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    #v0=(Integer);
    if-le v0, v10, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 398
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 399
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;);
    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;);
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 403
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    const-string v1, "e_trigger_events"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 404
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getVisibility()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->fireOnShowTrackingPixels()V

    .line 407
    :cond_3
    #v0=(Integer);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "f_notify_delegates"

    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 412
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    #v1=(Conflicted);v8=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_a

    .line 416
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    const-string v1, "h_handle_autoplay"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    if-eqz v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->getAutoplay()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isPlaying:Z

    if-nez v0, :cond_5

    .line 423
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #v0=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->hasBeenIntervalSinceLastAutoplay(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 424
    iput-boolean v10, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 425
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Action;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    .line 426
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Long;);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_5
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixInstrumentation;);
    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 430
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->benchmarkFinishPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->instrumentation:Lcom/mobclix/android/sdk/MobclixInstrumentation;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->instrumentationGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixInstrumentation;->finishGroup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_6
    #v0=(Integer);v1=(Conflicted);v2=(Reference,Ljava/lang/String;);v3=(Null);v4=(Uninit);v5=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    if-ne v0, v1, :cond_8

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference,Landroid/view/View;);
    check-cast v6, Lcom/mobclix/android/sdk/MobclixCreative;

    .line 358
    .local v6, c:Lcom/mobclix/android/sdk/MobclixCreative;
    iget-object v0, v6, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v1, "html"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_7

    .line 359
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->destroy()V

    .line 360
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$2(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    .end local v6           #c:Lcom/mobclix/android/sdk/MobclixCreative;
    :cond_7
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0, v10}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V

    .line 374
    :goto_4
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1

    .line 366
    :cond_8
    :try_start_1
    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference,Landroid/view/View;);
    check-cast v6, Lcom/mobclix/android/sdk/MobclixCreative;

    .line 367
    .restart local v6       #c:Lcom/mobclix/android/sdk/MobclixCreative;
    iget-object v0, v6, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v1, "html"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_9

    .line 368
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->destroy()V

    .line 369
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$2(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    .end local v6           #c:Lcom/mobclix/android/sdk/MobclixCreative;
    :cond_9
    :goto_5
    #v0=(Conflicted);v1=(Reference,Ljava/lang/Object;);v6=(Conflicted);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V

    goto :goto_4

    .line 412
    :cond_a
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Object;);
    check-cast v8, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 413
    .local v8, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v8, :cond_4

    .line 414
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-interface {v8, v1}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto/16 :goto_2

    .line 371
    .end local v8           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :catch_0
    #v2=(Reference,Ljava/lang/String;);v3=(Null);v4=(Uninit);v5=(Uninit);v8=(Uninit);
    move-exception v0

    goto :goto_5

    .line 362
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Exception;);
    goto :goto_3
.end method

.method public setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    .locals 11
    .parameter "v"
    .parameter "transition"

    .prologue
    .line 454
    if-nez p2, :cond_1

    .line 496
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 457
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "fade"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 458
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #v0=(UninitRef,Landroid/view/animation/AlphaAnimation;);
    const/high16 v2, 0x3f80

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 459
    .local v0, outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Landroid/view/animation/AlphaAnimation;);
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    #v1=(UninitRef,Landroid/view/animation/AlphaAnimation;);
    const/4 v2, 0x0

    #v2=(Null);
    const/high16 v3, 0x3f80

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 491
    .local v1, inAnim:Landroid/view/animation/Animation;
    :goto_1
    #v1=(Reference,Ljava/lang/Object;);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    const-wide/16 v2, 0x12c

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 492
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 493
    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 494
    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 460
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "slideRight"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 461
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #v0=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v1, 0x2

    #v1=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/high16 v4, 0x3f80

    .line 462
    #v4=(Integer);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v8, 0x0

    .line 461
    #v8=(Null);
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 463
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Landroid/view/animation/TranslateAnimation;);
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #v1=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v2, 0x2

    #v2=(PosByte);
    const/high16 v3, -0x4080

    #v3=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v5, 0x0

    .line 464
    #v5=(Null);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v9, 0x0

    .line 463
    #v9=(Null);
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Landroid/view/animation/TranslateAnimation;);
    goto :goto_1

    .line 465
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const-string v2, "slideLeft"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 466
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #v0=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/high16 v6, -0x4080

    .line 467
    #v6=(Integer);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v10, 0x0

    #v10=(Null);
    move-object v2, v0

    .line 466
    #v2=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 468
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Landroid/view/animation/TranslateAnimation;);v2=(Reference,Landroid/view/animation/TranslateAnimation;);
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #v1=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v2, 0x2

    #v2=(PosByte);
    const/high16 v3, 0x3f80

    #v3=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v5, 0x0

    .line 469
    #v5=(Null);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v9, 0x0

    .line 468
    #v9=(Null);
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Landroid/view/animation/TranslateAnimation;);
    goto :goto_1

    .line 470
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "slideUp"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 471
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #v0=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v6, 0x0

    .line 472
    #v6=(Null);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x2

    #v9=(PosByte);
    const/high16 v10, -0x4080

    #v10=(Integer);
    move-object v2, v0

    .line 471
    #v2=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 473
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Landroid/view/animation/TranslateAnimation;);v2=(Reference,Landroid/view/animation/TranslateAnimation;);
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #v1=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v5, 0x0

    .line 474
    #v5=(Null);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/high16 v7, 0x3f80

    #v7=(Integer);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v9, 0x0

    .line 473
    #v9=(Null);
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Landroid/view/animation/TranslateAnimation;);
    goto/16 :goto_1

    .line 475
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_5
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "slideDown"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    .line 476
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #v0=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v6, 0x0

    .line 477
    #v6=(Null);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x2

    #v9=(PosByte);
    const/high16 v10, 0x3f80

    #v10=(Integer);
    move-object v2, v0

    .line 476
    #v2=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 478
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Landroid/view/animation/TranslateAnimation;);v2=(Reference,Landroid/view/animation/TranslateAnimation;);
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #v1=(UninitRef,Landroid/view/animation/TranslateAnimation;);
    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v5, 0x0

    .line 479
    #v5=(Null);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/high16 v7, -0x4080

    #v7=(Integer);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v9, 0x0

    .line 478
    #v9=(Null);
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Landroid/view/animation/TranslateAnimation;);
    goto/16 :goto_1

    .line 480
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "flipRight"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 481
    new-instance v0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const/4 v4, 0x0

    #v4=(Null);
    const/high16 v5, 0x42b4

    #v5=(Integer);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v3, 0x4000

    #v3=(Integer);
    div-float v6, v2, v3

    #v6=(Float);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v3, 0x4000

    div-float v7, v2, v3

    #v7=(Float);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x1

    #v9=(One);
    move-object v2, v0

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    move-object v3, p0

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-direct/range {v2 .. v9}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 482
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const/high16 v3, -0x3d4c

    #v3=(Integer);
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v5, 0x4000

    div-float v5, v2, v5

    #v5=(Float);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v6, 0x4000

    #v6=(Integer);
    div-float v6, v2, v6

    #v6=(Float);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    move-object v2, p0

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 483
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const-wide/16 v2, 0x12c

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    .line 484
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_7
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const-string v2, "flipLeft"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 485
    new-instance v0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const/4 v4, 0x0

    #v4=(Null);
    const/high16 v5, -0x3d4c

    #v5=(Integer);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v3, 0x4000

    #v3=(Integer);
    div-float v6, v2, v3

    #v6=(Float);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v3, 0x4000

    div-float v7, v2, v3

    #v7=(Float);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x1

    #v9=(One);
    move-object v2, v0

    #v2=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    move-object v3, p0

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-direct/range {v2 .. v9}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 486
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const/high16 v3, 0x42b4

    #v3=(Integer);
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v5, 0x4000

    div-float v5, v2, v5

    #v5=(Float);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixAdView;);
    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    const/high16 v6, 0x4000

    #v6=(Integer);
    div-float v6, v2, v6

    #v6=(Float);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    move-object v2, p0

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative;);
    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 487
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;);
    const-wide/16 v2, 0x12c

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1
.end method
