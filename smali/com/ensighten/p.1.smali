.class final Lcom/ensighten/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/ensighten/q;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ensighten/q;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ensighten/p;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 43
    iput-object p2, p0, Lcom/ensighten/p;->b:Lorg/apache/http/protocol/HttpContext;

    .line 44
    iput-object p3, p0, Lcom/ensighten/p;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 45
    iput-object p4, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    .line 46
    instance-of v0, p4, Lcom/ensighten/r;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/p;->e:Z

    .line 49
    :cond_0
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/p;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/ensighten/p;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/ensighten/p;->b:Lorg/apache/http/protocol/HttpContext;

    instance-of v3, v0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 79
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v1, v0}, Lcom/ensighten/q;->a(Lorg/apache/http/HttpResponse;)V

    .line 92
    :cond_0
    return-void

    .line 78
    :cond_1
    check-cast v0, Lorg/apache/http/client/HttpClient;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v0}, Lcom/ensighten/q;->a()V

    .line 1097
    :cond_0
    const/4 v0, 0x1

    .line 1099
    iget-object v2, p0, Lcom/ensighten/p;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move v2, v0

    move-object v0, v1

    .line 1100
    :goto_0
    if-eqz v2, :cond_3

    .line 1102
    :try_start_1
    invoke-direct {p0}, Lcom/ensighten/p;->a()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    .line 60
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v0}, Lcom/ensighten/q;->b()V

    .line 73
    :cond_2
    :goto_2
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v2}, Lcom/ensighten/q;->b()V

    .line 66
    iget-boolean v2, p0, Lcom/ensighten/p;->e:Z

    if-eqz v2, :cond_4

    .line 67
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v2, v0, v1}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 1109
    :catch_2
    move-exception v0

    .line 1111
    :try_start_3
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v2, :cond_1

    .line 1112
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 1115
    :catch_3
    move-exception v0

    .line 1116
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    if-eqz v2, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    const-string v3, "socket time out"

    invoke-virtual {v2, v0, v3}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 1120
    :catch_4
    move-exception v0

    .line 1122
    iget v2, p0, Lcom/ensighten/p;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/p;->f:I

    iget-object v4, p0, Lcom/ensighten/p;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_0

    .line 1123
    :catch_5
    move-exception v2

    .line 1127
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1128
    iget v2, p0, Lcom/ensighten/p;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/p;->f:I

    iget-object v4, p0, Lcom/ensighten/p;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_0

    .line 1133
    :cond_3
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 1134
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1135
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 69
    :cond_4
    iget-object v2, p0, Lcom/ensighten/p;->d:Lcom/ensighten/q;

    invoke-virtual {v2, v0, v1}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2
.end method
