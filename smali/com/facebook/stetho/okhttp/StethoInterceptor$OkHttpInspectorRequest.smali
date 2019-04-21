.class Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;
.super Ljava/lang/Object;
.source "StethoInterceptor.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/okhttp/StethoInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkHttpInspectorRequest"
.end annotation


# instance fields
.field private final mRequest:Lcom/squareup/okhttp/Request;

.field private mRequestBodyHelper:Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/squareup/okhttp/Request;Lcom/facebook/stetho/inspector/network/RequestBodyHelper;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "requestBodyHelper"    # Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequestId:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    .line 114
    iput-object p3, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequestBodyHelper:Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    .line 115
    return-void
.end method


# virtual methods
.method public body()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v3, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 148
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    if-nez v0, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 158
    :goto_0
    return-object v3

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequestBodyHelper:Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    const-string v4, "Content-Encoding"

    invoke-virtual {p0, v4}, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 152
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 154
    .local v1, "bufferedSink":Lokio/BufferedSink;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 158
    iget-object v3, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequestBodyHelper:Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    invoke-virtual {v3}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->getDisplayBody()[B

    move-result-object v3

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    throw v3
.end method

.method public firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public friendlyNameExtra()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headerValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
