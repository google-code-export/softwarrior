.class Lcom/mobclix/android/sdk/FetchRemoteConfig$2;
.super Ljava/lang/Object;
.source "MobclixConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/FetchRemoteConfig;->onPostExecute(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/FetchRemoteConfig;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/FetchRemoteConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/FetchRemoteConfig$2;->this$0:Lcom/mobclix/android/sdk/FetchRemoteConfig;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/FetchRemoteConfig$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 449
    return-void
.end method
