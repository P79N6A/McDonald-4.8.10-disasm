.class final Lcom/threatmetrix/TrustDefender/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 7
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 24
    .local v1, "originalRequest":Lcom/squareup/okhttp/Request;
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 26
    :cond_0
    invoke-interface {p1, v1}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 33
    :goto_0
    return-object v2

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    new-instance v5, Lcom/threatmetrix/TrustDefender/ab$a$2;

    invoke-direct {v5, p0, v4}, Lcom/threatmetrix/TrustDefender/ab$a$2;-><init>(Lcom/threatmetrix/TrustDefender/ab$a;Lcom/squareup/okhttp/RequestBody;)V

    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v5, v4}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    new-instance v6, Lcom/threatmetrix/TrustDefender/ab$a$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/threatmetrix/TrustDefender/ab$a$1;-><init>(Lcom/threatmetrix/TrustDefender/ab$a;Lcom/squareup/okhttp/RequestBody;Lokio/Buffer;)V

    invoke-virtual {v2, v3, v6}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    instance-of v3, v2, Lcom/squareup/okhttp/Request$Builder;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 33
    .local v0, "compressedRequest":Lcom/squareup/okhttp/Request;
    :goto_1
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    goto :goto_0

    .line 29
    .end local v0    # "compressedRequest":Lcom/squareup/okhttp/Request;
    :cond_2
    check-cast v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    goto :goto_1
.end method
