.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;
.super Ljava/lang/Object;
.source "CallbackExtension.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lcom/squareup/okhttp/Callback;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Callback;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .locals 0
    .param p1, "impl"    # Lcom/squareup/okhttp/Callback;
    .param p2, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->impl:Lcom/squareup/okhttp/Callback;

    .line 27
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 28
    return-void
.end method

.method private checkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 2
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "CallbackExtension.checkResponse() - transaction is not complete.  Inspecting and instrumenting response."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    .line 48
    :cond_0
    return-object p1
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 18
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v17

    .line 57
    .local v17, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 58
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v2

    .line 62
    .local v2, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v2, :cond_0

    .line 63
    new-instance v3, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v8

    .line 65
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v14

    .line 66
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 63
    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 70
    .end local v2    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_0
    return-void
.end method

.method private getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->error(Ljava/lang/Exception;)V

    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->impl:Lcom/squareup/okhttp/Callback;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    .line 34
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->checkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;->impl:Lcom/squareup/okhttp/Callback;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/Callback;->onResponse(Lcom/squareup/okhttp/Response;)V

    .line 40
    return-void
.end method