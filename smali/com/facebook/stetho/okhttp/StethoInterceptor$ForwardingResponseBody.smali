.class Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "StethoInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/okhttp/StethoInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForwardingResponseBody"
.end annotation


# instance fields
.field private final mBody:Lcom/squareup/okhttp/ResponseBody;

.field private final mInterceptedSource:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ResponseBody;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/ResponseBody;
    .param p2, "interceptedStream"    # Ljava/io/InputStream;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;->mBody:Lcom/squareup/okhttp/ResponseBody;

    .line 264
    invoke-static {p2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;->mInterceptedSource:Lokio/BufferedSource;

    .line 265
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;->mBody:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;->mBody:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;->mInterceptedSource:Lokio/BufferedSource;

    return-object v0
.end method
