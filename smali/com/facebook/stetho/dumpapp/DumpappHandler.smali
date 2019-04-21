.class public abstract Lcom/facebook/stetho/dumpapp/DumpappHandler;
.super Lcom/facebook/stetho/server/SecureHttpRequestHandler;
.source "DumpappHandler.java"


# static fields
.field private static final QUERY_PARAM_ARGV:Ljava/lang/String; = "argv"

.field private static final RESPONSE_HEADER_ALLOW_ORIGIN:Ljava/lang/String; = "Access-Control-Allow-Origin"


# instance fields
.field private final mDumper:Lcom/facebook/stetho/dumpapp/Dumper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/stetho/server/SecureHttpRequestHandler;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/facebook/stetho/dumpapp/DumpappHandler;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    .line 49
    return-void
.end method

.method private static bufferInput(Lorg/apache/http/HttpRequest;)Ljava/io/InputStream;
    .locals 4
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0}, Lcom/facebook/stetho/dumpapp/DumpappHandler;->getCallerInput(Lorg/apache/http/HttpRequest;)Ljava/io/InputStream;

    move-result-object v2

    .line 75
    .local v2, "rawInput":Ljava/io/InputStream;
    const/16 v3, 0x100

    new-array v3, v3, [B

    invoke-static {v2, v0, v3}, Lcom/facebook/stetho/common/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 78
    .local v1, "bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v3
.end method

.method protected static getArgs(Lorg/apache/http/HttpRequest;)[Ljava/lang/String;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 92
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "requestUri":Landroid/net/Uri;
    const-string v2, "argv"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static getCallerInput(Lorg/apache/http/HttpRequest;)Ljava/io/InputStream;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    instance-of v1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_0

    .line 83
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 84
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 88
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method protected getDumper()Lcom/facebook/stetho/dumpapp/Dumper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/DumpappHandler;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    return-object v0
.end method

.method protected abstract getResponseEntity(Lorg/apache/http/HttpRequest;Ljava/io/InputStream;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleSecured(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/facebook/stetho/dumpapp/DumpappHandler;->bufferInput(Lorg/apache/http/HttpRequest;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/stetho/dumpapp/DumpappHandler;->getResponseEntity(Lorg/apache/http/HttpRequest;Ljava/io/InputStream;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 68
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-interface {p2, v0, v1}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0xc8

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 70
    return-void
.end method
