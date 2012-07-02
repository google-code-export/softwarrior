.class Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectOnClickListener"
.end annotation


# instance fields
.field obj1:Ljava/lang/Object;

.field obj2:Ljava/lang/Object;

.field obj3:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj1:Ljava/lang/Object;

    .line 1180
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "o"
    .parameter "o2"

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj1:Ljava/lang/Object;

    .line 1184
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj2:Ljava/lang/Object;

    .line 1185
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "o"
    .parameter "o2"
    .parameter "o3"

    .prologue
    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    #p0=(Reference,Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;);
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj1:Ljava/lang/Object;

    .line 1189
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj2:Ljava/lang/Object;

    .line 1190
    iput-object p3, p0, Lcom/mobclix/android/sdk/Mobclix$ObjectOnClickListener;->obj3:Ljava/lang/Object;

    .line 1191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1193
    return-void
.end method
