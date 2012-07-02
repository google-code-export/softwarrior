.class Lcom/mobclix/android/sdk/Base64$1;
.super Ljava/io/ObjectInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p2, p0, Lcom/mobclix/android/sdk/Base64$1;->val$loader:Ljava/lang/ClassLoader;

    .line 1358
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #p0=(Reference,Lcom/mobclix/android/sdk/Base64$1;);
    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .parameter "streamClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/mobclix/android/sdk/Base64$1;->val$loader:Ljava/lang/ClassLoader;

    #v3=(Reference,Ljava/lang/ClassLoader;);
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1363
    .local v0, c:Ljava/lang/Class;
    #v0=(Reference,Ljava/lang/Class;);
    if-nez v0, :cond_0

    .line 1364
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    .line 1366
    .end local v0           #c:Ljava/lang/Class;
    :cond_0
    return-object v0
.end method
