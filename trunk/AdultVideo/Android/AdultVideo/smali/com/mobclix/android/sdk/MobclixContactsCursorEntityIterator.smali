.class public abstract Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;
.super Ljava/lang/Object;
.source "MobclixContactsCursorEntityIterator.java"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    .line 24
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    .line 25
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v1, "closing when already closed"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/IllegalStateException;);
    throw v0

    .line 95
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    .line 96
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    return-void
.end method

.method public abstract getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v1, "calling hasNext() when the iterator is closed"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/IllegalStateException;);
    throw v0

    .line 49
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public next()Landroid/content/Entity;
    .locals 3

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v2, "calling next() when the iterator is closed"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/IllegalStateException;);
    throw v1

    .line 65
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v2, "you may only call next() if hasNext() is true"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/IllegalStateException;);
    throw v1

    .line 70
    :cond_1
    :try_start_0
    #v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #v1=(Reference,Landroid/database/Cursor;);
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 71
    :catch_0
    #v1=(Conflicted);
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference,Landroid/os/RemoteException;);
    new-instance v1, Ljava/lang/RuntimeException;

    #v1=(UninitRef,Ljava/lang/RuntimeException;);
    const-string v2, "caught a remote exception, this process will die soon"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference,Ljava/lang/RuntimeException;);
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->next()Landroid/content/Entity;

    move-result-object v0

    #v0=(Reference,Landroid/content/Entity;);
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef,Ljava/lang/UnsupportedOperationException;);
    const-string v1, "remove not supported by EntityIterators"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/UnsupportedOperationException;);
    throw v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mIsClosed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v1, "calling reset() when the iterator is closed"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/IllegalStateException;);
    throw v0

    .line 84
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    return-void
.end method
