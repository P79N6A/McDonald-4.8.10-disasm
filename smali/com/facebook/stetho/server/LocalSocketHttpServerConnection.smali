.class public Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
.super Lorg/apache/http/impl/AbstractHttpServerConnection;
.source "LocalSocketHttpServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;,
        Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;
    }
.end annotation


# instance fields
.field private volatile mInputBuffer:Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;

.field private volatile mOpen:Z

.field private volatile mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    return-void
.end method

.method private close(Z)V
    .locals 1
    .param p1, "doFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mOpen:Z

    .line 103
    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->doFlush()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected assertOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mOpen:Z

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 62
    return-void
.end method

.method public bind(Landroid/net/LocalSocket;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p2}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    .line 36
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 38
    .local v0, "bufferSize":I
    new-instance v1, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;

    invoke-direct {v1, p1, v0, p2}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;-><init>(Landroid/net/LocalSocket;ILorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mInputBuffer:Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;

    .line 39
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mInputBuffer:Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;

    new-instance v2, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;

    invoke-direct {v2, p1, v0, p2}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;-><init>(Landroid/net/LocalSocket;ILorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, v1, v2, p2}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mOpen:Z

    .line 45
    return-void
.end method

.method public clearInputBuffer()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mInputBuffer:Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;

    invoke-virtual {v0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;->clearCurrentBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->close(Z)V

    .line 96
    return-void
.end method

.method public getSocket()Landroid/net/LocalSocket;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isClosed()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 84
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mOpen:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isClosed()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->close(Z)V

    .line 91
    return-void
.end method
