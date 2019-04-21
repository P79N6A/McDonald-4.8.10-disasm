.class public Lcom/google/api/client/util/ByteArrayStreamingContent;
.super Ljava/lang/Object;
.source "ByteArrayStreamingContent.java"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->byteArray:[B

    iget v1, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->offset:I

    iget v2, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 63
    return-void
.end method
