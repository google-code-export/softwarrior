.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;);
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->displayed:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 1219
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1198
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$MobclixWebView;->touched:Z

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 1200
    const-string v1, "video/mp4"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    const-string v1, "video/3gpp"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 1201
    const-string v1, "video/m4v"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    const-string v1, "video/quicktime"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1202
    :cond_2
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.intent.action.VIEW"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1218
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    goto :goto_0

    .line 1206
    :cond_3
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1207
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v1

    #v1=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->hasBeenIntervalSinceLastAutoplay(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v1=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative;->access$7(Lcom/mobclix/android/sdk/MobclixCreative;Z)V

    .line 1209
    sget-object v1, Lcom/mobclix/android/sdk/MobclixAdView;->lastAutoplayTime:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #v2=(Reference,Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;);
    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Long;);
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v1, "video/mp4"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    const-string v1, "video/3gp"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 1211
    const-string v1, "video/m4v"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    const-string v1, "video/quicktime"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1212
    :cond_4
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.intent.action.VIEW"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
