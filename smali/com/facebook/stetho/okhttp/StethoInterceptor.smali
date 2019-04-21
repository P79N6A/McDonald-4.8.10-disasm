.class public Lcom/facebook/stetho/okhttp/StethoInterceptor;
.super Ljava/lang/Object;
.source "StethoInterceptor.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;,
        Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;,
        Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;
    }
.end annotation


# instance fields
.field private final mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

.field private final mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/facebook/stetho/inspector/network/NetworkEventReporterImpl;->get()Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 16
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "requestId":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v12

    .line 48
    .local v12, "request":Lcom/squareup/okhttp/Request;
    const/4 v13, 0x0

    .line 49
    .local v13, "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v13, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    .end local v13    # "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-direct {v13, v1, v2}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;-><init>(Lcom/facebook/stetho/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    .line 51
    .restart local v13    # "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    new-instance v11, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;

    invoke-direct {v11, v2, v12, v13}, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;-><init>(Ljava/lang/String;Lcom/squareup/okhttp/Request;Lcom/facebook/stetho/inspector/network/RequestBodyHelper;)V

    .line 53
    .local v11, "inspectorRequest":Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1, v11}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->requestWillBeSent(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest;)V

    .line 58
    .end local v11    # "inspectorRequest":Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorRequest;
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 66
    .local v14, "response":Lcom/squareup/okhttp/Response;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v13}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->reportDataSent()V

    .line 71
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/squareup/okhttp/Interceptor$Chain;->connection()Lcom/squareup/okhttp/Connection;

    move-result-object v8

    .line 72
    .local v8, "connection":Lcom/squareup/okhttp/Connection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    new-instance v3, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;

    invoke-direct {v3, v2, v12, v14, v8}, Lcom/facebook/stetho/okhttp/StethoInterceptor$OkHttpInspectorResponse;-><init>(Ljava/lang/String;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;)V

    invoke-interface {v1, v3}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->responseHeadersReceived(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse;)V

    .line 79
    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v7

    .line 80
    .local v7, "body":Lcom/squareup/okhttp/ResponseBody;
    const/4 v9, 0x0

    .line 81
    .local v9, "contentType":Lcom/squareup/okhttp/MediaType;
    const/4 v5, 0x0

    .line 82
    .local v5, "responseStream":Ljava/io/InputStream;
    if-eqz v7, :cond_2

    .line 83
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v9

    .line 84
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 87
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    if-eqz v9, :cond_5

    .line 89
    invoke-virtual {v9}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Content-Encoding"

    .line 90
    invoke-virtual {v14, v4}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/facebook/stetho/inspector/network/DefaultResponseHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-direct {v6, v15, v2}, Lcom/facebook/stetho/inspector/network/DefaultResponseHandler;-><init>(Lcom/facebook/stetho/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    .line 87
    invoke-interface/range {v1 .. v6}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/facebook/stetho/inspector/network/ResponseHandler;)Ljava/io/InputStream;

    move-result-object v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    instance-of v1, v14, Lcom/squareup/okhttp/Response$Builder;

    if-nez v1, :cond_6

    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    .end local v14    # "response":Lcom/squareup/okhttp/Response;
    :goto_1
    new-instance v3, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;

    invoke-direct {v3, v7, v5}, Lcom/facebook/stetho/okhttp/StethoInterceptor$ForwardingResponseBody;-><init>(Lcom/squareup/okhttp/ResponseBody;Ljava/io/InputStream;)V

    .line 95
    instance-of v4, v1, Lcom/squareup/okhttp/Response$Builder;

    if-nez v4, :cond_7

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    .line 96
    :goto_2
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v14

    .line 100
    .end local v5    # "responseStream":Ljava/io/InputStream;
    .end local v7    # "body":Lcom/squareup/okhttp/ResponseBody;
    .end local v8    # "connection":Lcom/squareup/okhttp/Connection;
    .end local v9    # "contentType":Lcom/squareup/okhttp/MediaType;
    .restart local v14    # "response":Lcom/squareup/okhttp/Response;
    :cond_3
    return-object v14

    .line 59
    .end local v14    # "response":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v10

    .line 60
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    throw v10

    .line 89
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "responseStream":Ljava/io/InputStream;
    .restart local v7    # "body":Lcom/squareup/okhttp/ResponseBody;
    .restart local v8    # "connection":Lcom/squareup/okhttp/Connection;
    .restart local v9    # "contentType":Lcom/squareup/okhttp/MediaType;
    .restart local v14    # "response":Lcom/squareup/okhttp/Response;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    :cond_6
    check-cast v14, Lcom/squareup/okhttp/Response$Builder;

    .end local v14    # "response":Lcom/squareup/okhttp/Response;
    invoke-static {v14}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->newBuilder(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_7
    check-cast v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->body(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    goto :goto_2
.end method
