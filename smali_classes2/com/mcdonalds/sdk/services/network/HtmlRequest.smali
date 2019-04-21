.class public Lcom/mcdonalds/sdk/services/network/HtmlRequest;
.super Lcom/android/volley/Request;
.source "HtmlRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"


# instance fields
.field private mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TT;TE;>;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    .local p3, "requestProvider":Lcom/mcdonalds/sdk/services/network/RequestProvider;, "Lcom/mcdonalds/sdk/services/network/RequestProvider<TT;TE;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;

    invoke-direct {v1, p1, p4}, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 27
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 28
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getBody()[B
    .locals 4

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    const/4 v1, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-interface {v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 48
    invoke-interface {v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .param p1, "networkResponse"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 35
    invoke-static {v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 37
    .local v1, "htmlString":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .end local v1    # "htmlString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0
.end method
