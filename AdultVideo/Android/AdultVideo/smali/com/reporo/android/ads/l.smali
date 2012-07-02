.class final enum Lcom/reporo/android/ads/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/reporo/android/ads/l;

.field public static final enum b:Lcom/reporo/android/ads/l;

.field private static final synthetic c:[Lcom/reporo/android/ads/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    #v2=(Null);
    new-instance v0, Lcom/reporo/android/ads/l;

    #v0=(UninitRef,Lcom/reporo/android/ads/l;);
    const-string v1, "SMART"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Lcom/reporo/android/ads/l;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/reporo/android/ads/l;);
    sput-object v0, Lcom/reporo/android/ads/l;->a:Lcom/reporo/android/ads/l;

    new-instance v0, Lcom/reporo/android/ads/l;

    #v0=(UninitRef,Lcom/reporo/android/ads/l;);
    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/reporo/android/ads/l;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/reporo/android/ads/l;);
    sput-object v0, Lcom/reporo/android/ads/l;->b:Lcom/reporo/android/ads/l;

    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Lcom/reporo/android/ads/l;

    #v0=(Reference,[Lcom/reporo/android/ads/l;);
    sget-object v1, Lcom/reporo/android/ads/l;->a:Lcom/reporo/android/ads/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/reporo/android/ads/l;->b:Lcom/reporo/android/ads/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/reporo/android/ads/l;->c:[Lcom/reporo/android/ads/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Lcom/reporo/android/ads/l;);
    return-void
.end method

.method public static a()[Lcom/reporo/android/ads/l;
    .locals 4

    const/4 v3, 0x0

    #v3=(Null);
    sget-object v0, Lcom/reporo/android/ads/l;->c:[Lcom/reporo/android/ads/l;

    #v0=(Reference,[Lcom/reporo/android/ads/l;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Lcom/reporo/android/ads/l;

    #v2=(Reference,[Lcom/reporo/android/ads/l;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
