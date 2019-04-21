.class final Lcom/threatmetrix/TrustDefender/ab$a$2;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/ab$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/RequestBody;

.field final synthetic b:Lcom/threatmetrix/TrustDefender/ab$a;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/ab$a;Lcom/squareup/okhttp/RequestBody;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ab$a$2;->b:Lcom/threatmetrix/TrustDefender/ab$a;

    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/ab$a$2;->a:Lcom/squareup/okhttp/RequestBody;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 73
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab$a$2;->a:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Lokio/GzipSink;

    invoke-direct {v1, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 79
    .local v0, "gzipSink":Lokio/BufferedSink;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ab$a$2;->a:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 80
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 81
    return-void
.end method
