.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;
.super Landroid/widget/LinearLayout;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixFullScreen"
.end annotation


# static fields
.field static final DEFAULT_DURATION:I = 0x1f4


# instance fields
.field activity:Landroid/app/Activity;

.field open:Z

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field wasAdActivity:Z

.field webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

.field webviewContainer:Landroid/view/ViewGroup;

.field windowFlags:I


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V
    .locals 9
    .parameter
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 1145
    #v5=(One);
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 1110
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1104
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;);
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->open:Z

    .line 1107
    const/4 v5, 0x0

    #v5=(Null);
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->wasAdActivity:Z

    .line 1112
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->activity:Landroid/app/Activity;

    .line 1114
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v5

    #v5=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    .line 1115
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getJavascriptInterface()Lcom/mobclix/android/sdk/MobclixJavascriptInterface;

    move-result-object v5

    iput-object p0, v5, Lcom/mobclix/android/sdk/MobclixJavascriptInterface;->expanderActivity:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;

    .line 1118
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1120
    .local v3, ww:Landroid/view/Window;
    #v3=(Reference,Landroid/view/Window;);
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1121
    .local v4, wwlp:Landroid/view/WindowManager$LayoutParams;
    #v4=(Reference,Landroid/view/WindowManager$LayoutParams;);
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #v5=(Integer);
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->windowFlags:I

    .line 1125
    new-instance v0, Landroid/util/DisplayMetrics;

    #v0=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1126
    .local v0, dm:Landroid/util/DisplayMetrics;
    #v0=(Reference,Landroid/util/DisplayMetrics;);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->activity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1129
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1130
    .local v2, orientation:I
    #v2=(Integer);
    const/4 v5, 0x2

    #v5=(PosByte);
    if-ne v2, v5, :cond_0

    .line 1131
    const/4 v2, 0x0

    .line 1134
    :goto_0
    #v2=(Boolean);
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->activity:Landroid/app/Activity;

    #v5=(Reference,Landroid/app/Activity;);
    invoke-virtual {v5, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1137
    const/16 v5, 0x80

    #v5=(PosShort);
    const/16 v6, 0x100

    #v6=(PosShort);
    const/16 v7, 0x100

    #v7=(PosShort);
    const/16 v8, 0x100

    #v8=(PosShort);
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    #v5=(Integer);
    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->setBackgroundColor(I)V

    .line 1138
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->setOrientation(I)V

    .line 1139
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    #v5=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v7, -0x1

    #v7=(Byte);
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #v5=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webview:Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixFullScreen;->webviewContainer:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #orientation:I
    .end local v3           #ww:Landroid/view/Window;
    .end local v4           #wwlp:Landroid/view/WindowManager$LayoutParams;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1133
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #orientation:I
    .restart local v3       #ww:Landroid/view/Window;
    .restart local v4       #wwlp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    #v0=(Reference,Landroid/util/DisplayMetrics;);v1=(Uninit);v2=(Integer);v3=(Reference,Landroid/view/Window;);v4=(Reference,Landroid/view/WindowManager$LayoutParams;);v5=(PosByte);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 1142
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #orientation:I
    .end local v3           #ww:Landroid/view/Window;
    .end local v4           #wwlp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v1

    .line 1143
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized exit(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1147
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
