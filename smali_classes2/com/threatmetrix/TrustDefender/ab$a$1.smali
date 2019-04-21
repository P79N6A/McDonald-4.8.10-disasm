.class final Lcom/threatmetrix/TrustDefender/ab$a$1;
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

.field final synthetic b:Lokio/Buffer;

.field final synthetic c:Lcom/threatmetrix/TrustDefender/ab$a;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/ab$a;Lcom/squareup/okhttp/RequestBody;Lokio/Buffer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->c:Lcom/threatmetrix/TrustDefender/ab$a;

    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->a:Lcom/squareup/okhttp/RequestBody;

    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->b:Lokio/Buffer;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->a:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab$a$1;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 59
    return-void
.end method
