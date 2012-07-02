.class public final Lcom/softwarrior/avideo/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwarrior/avideo/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_admoda_AdView:[I = null

.field public static final com_admoda_AdView_background_color:I = 0x3

.field public static final com_admoda_AdView_bannerzoneid:I = 0x1

.field public static final com_admoda_AdView_refresh_interval:I = 0x4

.field public static final com_admoda_AdView_text_color:I = 0x2

.field public static final com_admoda_AdView_textzoneid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference,[I);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/softwarrior/avideo/R$styleable;->com_admoda_AdView:[I

    .line 84
    return-void

    .line 103
    #v0=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/R$styleable;);
    return-void
.end method
