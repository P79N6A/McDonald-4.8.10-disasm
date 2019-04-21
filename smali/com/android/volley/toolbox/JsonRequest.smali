.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/android/volley/toolbox/JsonRequest;, "Lcom/android/volley/toolbox/JsonRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public getBody()[B
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/JsonRequest;, "Lcom/android/volley/toolbox/JsonRequest<TT;>;"
    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-object v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "utf-8"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/android/volley/toolbox/JsonRequest;, "Lcom/android/volley/toolbox/JsonRequest<TT;>;"
    sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/android/volley/toolbox/JsonRequest;, "Lcom/android/volley/toolbox/JsonRequest<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/android/volley/toolbox/JsonRequest;, "Lcom/android/volley/toolbox/JsonRequest<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method
