.class public Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "MockHttpURLConnection.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# static fields
.field public static final ERROR_BUF:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_BUF:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private doOutputCalled:Z

.field private errorStream:Ljava/io/InputStream;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->INPUT_BUF:[B

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [B

    sput-object v0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->ERROR_BUF:[B

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->responseCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->outputStream:Ljava/io/OutputStream;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->responseCode:I

    return v0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "dooutput"    # Z

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;->doOutputCalled:Z

    .line 109
    return-void
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
