.class public Lcom/mcdonalds/sdk/services/network/OkHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "OkHttpStack.java"


# instance fields
.field private final mFactory:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/OkHttpStack;->mFactory:Lcom/squareup/okhttp/OkUrlFactory;

    .line 48
    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/OkHttpStack;->mFactory:Lcom/squareup/okhttp/OkUrlFactory;

    instance-of v1, v0, Lcom/squareup/okhttp/OkUrlFactory;

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->open(Lcom/squareup/okhttp/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0
.end method
