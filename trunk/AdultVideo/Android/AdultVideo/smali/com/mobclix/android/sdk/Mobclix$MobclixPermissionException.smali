.class Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;
.super Ljava/lang/RuntimeException;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobclixPermissionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x20c98b2f1b8d5f1cL


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "detailMessage"

    .prologue
    .line 970
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 969
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$MobclixPermissionException;);
    return-void
.end method
