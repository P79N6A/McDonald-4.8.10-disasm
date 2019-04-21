.class Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;
.super Ljava/lang/Object;
.source "StethoInterceptor.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/okhttp/StethoInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkHttpInspectorResponse"
.end annotation


# instance fields
.field private final mConnection:Lcom/squareup/okhttp/Connection;

.field private final mRequest:Lcom/squareup/okhttp/Request;

.field private final mRequestId:Ljava/lang/String;

.field private final mResponse:Lcom/squareup/okhttp/Response;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "response"    # Lcom/squareup/okhttp/Response;
    .param p4, "connection"    # Lcom/squareup/okhttp/Connection;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mRequestId:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mRequest:Lcom/squareup/okhttp/Request;

    .line 196
    iput-object p3, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    .line 197
    iput-object p4, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mConnection:Lcom/squareup/okhttp/Connection;

    .line 198
    return-void
.end method


# virtual methods
.method public connectionId()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mConnection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public connectionReused()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fromDiskCache()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headerValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;->mRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
