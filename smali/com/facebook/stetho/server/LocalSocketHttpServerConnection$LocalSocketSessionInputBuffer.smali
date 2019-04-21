.class Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "LocalSocketHttpServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalSocketSessionInputBuffer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "bufferSize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 113
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stale connection checking should not be used for local sockets"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    .line 118
    return-void
.end method


# virtual methods
.method public clearCurrentBuffer()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;->hasBufferedData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionInputBuffer;->read()I

    move-result v0

    .line 125
    .local v0, "b":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v5, "Buffered data cannot EOF"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/facebook/stetho/common/Util;->throwIfNot(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "b":I
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":I
    :cond_0
    move v3, v4

    .line 125
    goto :goto_1

    .line 128
    .end local v0    # "b":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public isDataAvailable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CoreConnectionPNames.STALE_CONNECTION_CHECK appears to be true but that can\'t be?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
