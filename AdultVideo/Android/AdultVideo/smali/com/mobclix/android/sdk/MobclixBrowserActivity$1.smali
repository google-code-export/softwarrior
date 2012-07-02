.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;);
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 250
    return-void
.end method
