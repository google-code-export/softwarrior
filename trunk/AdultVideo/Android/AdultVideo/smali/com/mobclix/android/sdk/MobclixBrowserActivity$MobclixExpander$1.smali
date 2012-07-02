.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;);
    const/16 v1, 0x1f4

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixExpander;->exit(I)V

    .line 1238
    return-void
.end method
