.class public Lcom/google/api/client/http/MultipartContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/MultipartContent$Part;
    }
.end annotation


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    const-string v2, "__END_OF_PART__"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method public final getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/MultipartContent$Part;

    .line 119
    .local v1, "part":Lcom/google/api/client/http/MultipartContent$Part;
    iget-object v2, v1, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v2}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 123
    .end local v1    # "part":Lcom/google/api/client/http/MultipartContent$Part;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .local v9, "writer":Ljava/io/Writer;
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "boundary":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/client/http/MultipartContent$Part;

    .line 65
    .local v7, "part":Lcom/google/api/client/http/MultipartContent$Part;
    new-instance v10, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v10}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    .line 66
    .local v5, "headers":Lcom/google/api/client/http/HttpHeaders;
    iget-object v10, v7, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    if-eqz v10, :cond_1

    .line 67
    iget-object v10, v7, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 69
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const-string v11, "Content-Transfer-Encoding"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 75
    iget-object v1, v7, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    .line 76
    .local v1, "content":Lcom/google/api/client/http/HttpContent;
    const/4 v8, 0x0

    .line 77
    .local v8, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v1, :cond_2

    .line 78
    const-string v10, "Content-Transfer-Encoding"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "binary"

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 79
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 80
    iget-object v4, v7, Lcom/google/api/client/http/MultipartContent$Part;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 82
    .local v4, "encoding":Lcom/google/api/client/http/HttpEncoding;
    if-nez v4, :cond_3

    .line 83
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v2

    .line 84
    .local v2, "contentLength":J
    move-object v8, v1

    .line 90
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v10, v2, v10

    if-eqz v10, :cond_2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    .line 95
    .end local v2    # "contentLength":J
    .end local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    :cond_2
    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v10, v11, v9}, Lcom/google/api/client/http/HttpHeaders;->serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    .line 101
    if-eqz v8, :cond_0

    .line 102
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V

    .line 104
    invoke-interface {v8, p1}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 105
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    .restart local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    :cond_3
    invoke-interface {v4}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 87
    new-instance v8, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    .end local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    invoke-direct {v8, v1, v4}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    .line 88
    .restart local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    invoke-static {v1}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength(Lcom/google/api/client/http/HttpContent;)J

    move-result-wide v2

    .restart local v2    # "contentLength":J
    goto :goto_1

    .line 109
    .end local v1    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v2    # "contentLength":J
    .end local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    .end local v5    # "headers":Lcom/google/api/client/http/HttpHeaders;
    .end local v7    # "part":Lcom/google/api/client/http/MultipartContent$Part;
    .end local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :cond_4
    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V

    .line 114
    return-void
.end method
