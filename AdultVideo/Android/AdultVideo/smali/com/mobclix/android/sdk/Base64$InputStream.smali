.class public Lcom/mobclix/android/sdk/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1661
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/mobclix/android/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1662
    #p0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 1687
    #v2=(Null);
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1688
    #p0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    iput p2, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->options:I

    .line 1689
    and-int/lit8 v0, p2, 0x8

    #v0=(Integer);
    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->breakLines:Z

    .line 1690
    and-int/lit8 v0, p2, 0x1

    #v0=(Integer);
    if-lez v0, :cond_1

    :goto_1
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->encode:Z

    .line 1691
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->encode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    #v0=(PosByte);
    iput v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->bufferLength:I

    .line 1692
    iget v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->bufferLength:I

    #v0=(Integer);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->buffer:[B

    .line 1693
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    .line 1694
    iput v2, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->lineLength:I

    .line 1695
    invoke-static {p2}, Lcom/mobclix/android/sdk/Base64;->access$0(I)[B

    move-result-object v0

    #v0=(Reference,[B);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->decodabet:[B

    .line 1696
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 1689
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v1, v2

    .line 1690
    #v1=(Null);
    goto :goto_1

    .line 1691
    :cond_2
    #v0=(Boolean);v1=(Boolean);
    const/4 v0, 0x3

    #v0=(PosByte);
    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    #v4=(PosByte);
    const/4 v10, 0x4

    #v10=(PosByte);
    const/4 v9, -0x1

    #v9=(Byte);
    const/4 v1, 0x0

    .line 1709
    #v1=(Null);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    #v3=(Integer);
    if-gez v3, :cond_1

    .line 1710
    iget-boolean v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->encode:Z

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 1711
    new-array v0, v4, [B

    .line 1712
    .local v0, b3:[B
    #v0=(Reference,[B);
    const/4 v2, 0x0

    .line 1713
    .local v2, numBinaryBytes:I
    #v2=(Null);
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    #v2=(Integer);v3=(Byte);v6=(Conflicted);v8=(Integer);
    if-lt v8, v4, :cond_2

    .line 1726
    :cond_0
    #v3=(Conflicted);
    if-lez v2, :cond_3

    .line 1727
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->buffer:[B

    #v3=(Reference,[B);
    iget v5, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->options:I

    #v5=(Integer);
    move v4, v1

    #v4=(Null);
    invoke-static/range {v0 .. v5}, Lcom/mobclix/android/sdk/Base64;->access$1([BII[BII)[B

    .line 1728
    iput v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    .line 1729
    iput v10, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->numSigBytes:I

    .line 1769
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_1
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    #v3=(Integer);
    if-ltz v3, :cond_e

    .line 1771
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    iget v4, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v9

    .line 1790
    :goto_2
    #v1=(Integer);v3=(Conflicted);
    return v1

    .line 1714
    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v8       #i:I
    :cond_2
    #v0=(Reference,[B);v1=(Null);v2=(Integer);v3=(Byte);v4=(PosByte);v5=(Uninit);v7=(Uninit);v8=(Integer);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->in:Ljava/io/InputStream;

    #v3=(Reference,Ljava/io/InputStream;);
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1717
    .local v6, b:I
    #v6=(Integer);
    if-ltz v6, :cond_0

    .line 1718
    int-to-byte v3, v6

    #v3=(Byte);
    aput-byte v3, v0, v8

    .line 1719
    add-int/lit8 v2, v2, 0x1

    .line 1713
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v6           #b:I
    :cond_3
    #v3=(Conflicted);v6=(Conflicted);
    move v1, v9

    .line 1732
    #v1=(Byte);
    goto :goto_2

    .line 1738
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_4
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Boolean);v6=(Uninit);v8=(Uninit);
    new-array v7, v10, [B

    .line 1739
    .local v7, b4:[B
    #v7=(Reference,[B);
    const/4 v8, 0x0

    .line 1740
    .restart local v8       #i:I
    #v8=(Null);
    const/4 v8, 0x0

    :goto_3
    #v3=(Byte);v4=(Byte);v6=(Conflicted);v8=(Integer);
    if-lt v8, v10, :cond_6

    .line 1753
    :cond_5
    #v3=(Conflicted);
    if-ne v8, v10, :cond_9

    .line 1754
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->buffer:[B

    #v3=(Reference,[B);
    iget v4, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->options:I

    #v4=(Integer);
    invoke-static {v7, v1, v3, v1, v4}, Lcom/mobclix/android/sdk/Base64;->access$2([BI[BII)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->numSigBytes:I

    .line 1755
    iput v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    goto :goto_1

    .line 1742
    :cond_6
    #v3=(Byte);v4=(Byte);
    const/4 v6, 0x0

    .line 1743
    .restart local v6       #b:I
    :cond_7
    #v6=(Integer);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->in:Ljava/io/InputStream;

    #v3=(Reference,Ljava/io/InputStream;);
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1744
    if-ltz v6, :cond_8

    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    #v4=(Integer);
    aget-byte v3, v3, v4

    #v3=(Byte);
    const/4 v4, -0x5

    #v4=(Byte);
    if-le v3, v4, :cond_7

    .line 1746
    :cond_8
    #v3=(Conflicted);
    if-ltz v6, :cond_5

    .line 1750
    int-to-byte v3, v6

    #v3=(Byte);
    aput-byte v3, v7, v8

    .line 1740
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1757
    .end local v6           #b:I
    :cond_9
    #v3=(Conflicted);v6=(Conflicted);
    if-nez v8, :cond_a

    move v1, v9

    .line 1758
    #v1=(Byte);
    goto :goto_2

    .line 1762
    :cond_a
    #v1=(Null);
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef,Ljava/io/IOException;);
    const-string v3, "Improperly padded Base64 input."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/io/IOException;);
    throw v1

    .line 1775
    .end local v7           #b4:[B
    .end local v8           #i:I
    :cond_b
    #v0=(Conflicted);v1=(Null);v2=(Conflicted);v3=(Integer);v4=(Integer);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-boolean v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->encode:Z

    #v3=(Boolean);
    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->lineLength:I

    #v3=(Integer);
    const/16 v4, 0x4c

    #v4=(PosByte);
    if-lt v3, v4, :cond_c

    .line 1776
    iput v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->lineLength:I

    .line 1777
    const/16 v1, 0xa

    #v1=(PosByte);
    goto :goto_2

    .line 1780
    :cond_c
    #v1=(Null);v4=(Integer);
    iget v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->lineLength:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->lineLength:I

    .line 1784
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->buffer:[B

    #v1=(Reference,[B);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1786
    .restart local v6       #b:I
    #v6=(Byte);
    iget v1, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    #v1=(Integer);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 1787
    iput v9, p0, Lcom/mobclix/android/sdk/Base64$InputStream;->position:I

    .line 1790
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1797
    .end local v6           #b:I
    :cond_e
    #v1=(Null);v6=(Conflicted);
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef,Ljava/io/IOException;);
    const-string v3, "Error in Base64 code reading stream."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/io/IOException;);
    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1819
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-lt v1, p3, :cond_1

    .line 1832
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 1820
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Base64$InputStream;->read()I

    move-result v0

    .line 1822
    .local v0, b:I
    #v0=(Integer);
    if-ltz v0, :cond_2

    .line 1823
    add-int v2, p2, v1

    #v2=(Integer);
    int-to-byte v3, v0

    #v3=(Byte);
    aput-byte v3, p1, v2

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1825
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    if-nez v1, :cond_0

    .line 1826
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method
