.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;
.super Lcom/squareup/okhttp/Request$Builder;
.source "RequestBuilderExtension.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lcom/squareup/okhttp/Request$Builder;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0
    .param p1, "impl"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    .line 26
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->setCrossProcessHeader()V

    .line 27
    return-void
.end method

.method private setCrossProcessHeader()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "crossProcessId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    const-string v2, "X-NewRelic-ID"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 114
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    const-string v2, "X-NewRelic-ID"

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/squareup/okhttp/Request;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method public cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "cacheControl"    # Lcom/squareup/okhttp/CacheControl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->delete()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->head()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public patch(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->patch(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->impl:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method
