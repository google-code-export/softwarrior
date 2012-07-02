.class public Lcom/mobclix/android/sdk/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1874
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, v0}, Lcom/mobclix/android/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1875
    #p0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    #v3=(PosByte);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 1898
    #v2=(Null);
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1899
    #p0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    and-int/lit8 v0, p2, 0x8

    #v0=(Integer);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->breakLines:Z

    .line 1900
    and-int/lit8 v0, p2, 0x1

    #v0=(Integer);
    if-eqz v0, :cond_1

    :goto_1
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->encode:Z

    .line 1901
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->encode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    #v0=(PosByte);
    iput v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->bufferLength:I

    .line 1902
    iget v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->bufferLength:I

    #v0=(Integer);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    .line 1903
    iput v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    .line 1904
    iput v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->lineLength:I

    .line 1905
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 1906
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->b4:[B

    .line 1907
    iput p2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->options:I

    .line 1908
    invoke-static {p2}, Lcom/mobclix/android/sdk/Base64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->decodabet:[B

    .line 1909
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 1899
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v1, v2

    .line 1900
    #v1=(Null);
    goto :goto_1

    :cond_2
    #v0=(Boolean);v1=(Boolean);
    move v0, v3

    .line 1901
    #v0=(PosByte);
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2023
    #v0=(Null);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Base64$OutputStream;->flushBase64()V

    .line 2027
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2029
    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    .line 2030
    iput-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 2031
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2002
    iget v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 2003
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->encode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #v0=(Reference,Ljava/io/OutputStream;);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->b4:[B

    #v1=(Reference,[B);
    iget-object v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    #v2=(Reference,[B);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    #v3=(Integer);
    iget v4, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->options:I

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Lcom/mobclix/android/sdk/Base64;->access$3([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2005
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    .line 2012
    :cond_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 2008
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef,Ljava/io/IOException;);
    const-string v1, "Base64 input not properly padded."

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/io/IOException;);
    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 2057
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 2058
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Base64$OutputStream;->flushBase64()V

    .line 2045
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 2046
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    #v3=(Byte);
    const/4 v6, 0x0

    .line 1928
    #v6=(Null);
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->suspendEncoding:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1929
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #v1=(Reference,Ljava/io/OutputStream;);
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1966
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 1934
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Byte);v4=(Uninit);v5=(Uninit);
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 1935
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    #v1=(Reference,[B);
    iget v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    #v2=(Integer);
    add-int/lit8 v3, v2, 0x1

    #v3=(Integer);
    iput v3, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    #v3=(Byte);
    aput-byte v3, v1, v2

    .line 1936
    iget v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1938
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #v1=(Reference,Ljava/io/OutputStream;);
    iget-object v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->b4:[B

    #v2=(Reference,[B);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    #v3=(Reference,[B);
    iget v4, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->bufferLength:I

    #v4=(Integer);
    iget v5, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->options:I

    #v5=(Integer);
    invoke-static {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/Base64;->access$3([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1940
    iget v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->lineLength:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->lineLength:I

    .line 1941
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->breakLines:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->lineLength:I

    #v1=(Integer);
    const/16 v2, 0x4c

    #v2=(PosByte);
    if-lt v1, v2, :cond_2

    .line 1942
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #v1=(Reference,Ljava/io/OutputStream;);
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1943
    iput v6, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->lineLength:I

    .line 1946
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    iput v6, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1953
    :cond_3
    #v1=(Boolean);v2=(Uninit);v3=(Byte);v4=(Uninit);v5=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->decodabet:[B

    #v1=(Reference,[B);
    and-int/lit8 v2, p1, 0x7f

    #v2=(Integer);
    aget-byte v1, v1, v2

    #v1=(Byte);
    if-le v1, v3, :cond_4

    .line 1954
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    #v1=(Reference,[B);
    iget v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    #v3=(Integer);
    iput v3, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    #v3=(Byte);
    aput-byte v3, v1, v2

    .line 1955
    iget v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    #v1=(Integer);
    iget v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1957
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->buffer:[B

    #v1=(Reference,[B);
    iget-object v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->b4:[B

    #v2=(Reference,[B);
    iget v3, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->options:I

    #v3=(Integer);
    invoke-static {v1, v6, v2, v6, v3}, Lcom/mobclix/android/sdk/Base64;->access$2([BI[BII)I

    move-result v0

    .line 1958
    .local v0, len:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1959
    iput v6, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1962
    .end local v0           #len:I
    :cond_4
    #v0=(Uninit);v1=(Byte);v2=(Integer);v3=(Byte);
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->decodabet:[B

    #v1=(Reference,[B);
    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    #v1=(Byte);
    if-eq v1, v3, :cond_0

    .line 1963
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef,Ljava/io/IOException;);
    const-string v2, "Invalid character in Base64 data."

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/io/IOException;);
    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1983
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->suspendEncoding:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1984
    iget-object v1, p0, Lcom/mobclix/android/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #v1=(Reference,Ljava/io/OutputStream;);
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1992
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1988
    :cond_1
    #v0=(Uninit);v1=(Boolean);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Byte);
    if-ge v0, p3, :cond_0

    .line 1989
    add-int v1, p2, v0

    #v1=(Integer);
    aget-byte v1, p1, v1

    #v1=(Byte);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/Base64$OutputStream;->write(I)V

    .line 1988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
