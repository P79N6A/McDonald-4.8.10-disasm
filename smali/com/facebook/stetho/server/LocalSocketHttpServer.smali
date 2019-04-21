.class public Lcom/facebook/stetho/server/LocalSocketHttpServer;
.super Ljava/lang/Object;
.source "LocalSocketHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;
    }
.end annotation


# static fields
.field private static final MAX_BIND_RETRIES:I = 0x2

.field private static final SOCKET_NAME_PREFIX:Ljava/lang/String; = "stetho_"

.field private static final SOCKET_NAME_SUFFIX:Ljava/lang/String; = "_devtools_remote"

.field private static final TIME_BETWEEN_BIND_RETRIES_MS:I = 0x3e8

.field private static final WORKDER_THREAD_NAME_PREFIX:Ljava/lang/String; = "StethoWorker"

.field private static final sThreadId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mListenerThread:Ljava/lang/Thread;

.field private final mRegistryInitializer:Lcom/facebook/stetho/server/RegistryInitializer;

.field private mServerSocket:Landroid/net/LocalServerSocket;

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->sThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/stetho/server/RegistryInitializer;)V
    .locals 1
    .param p1, "registryInitializer"    # Lcom/facebook/stetho/server/RegistryInitializer;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/stetho/server/LocalSocketHttpServer;-><init>(Lcom/facebook/stetho/server/RegistryInitializer;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/facebook/stetho/server/RegistryInitializer;Ljava/lang/String;)V
    .locals 1
    .param p1, "registryInitializer"    # Lcom/facebook/stetho/server/RegistryInitializer;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/server/RegistryInitializer;

    iput-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mRegistryInitializer:Lcom/facebook/stetho/server/RegistryInitializer;

    .line 74
    iput-object p2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->sThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static bindToSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 194
    const/4 v2, 0x2

    .line 195
    .local v2, "retries":I
    const/4 v1, 0x0

    .local v1, "firstException":Ljava/io/IOException;
    move v3, v2

    .line 198
    .end local v2    # "retries":I
    .local v3, "retries":I
    :goto_0
    const/4 v4, 0x3

    :try_start_0
    invoke-static {v4}, Lcom/facebook/stetho/common/LogUtil;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to bind to @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/stetho/common/LogUtil;->d(Ljava/lang/String;)V

    .line 201
    :cond_0
    new-instance v4, Landroid/net/LocalServerSocket;

    invoke-direct {v4, p0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "be":Ljava/net/BindException;
    const-string v4, "Binding error, sleep 1000 ms..."

    invoke-static {v0, v4}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 204
    if-nez v1, :cond_1

    .line 205
    move-object v1, v0

    .line 207
    :cond_1
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lcom/facebook/stetho/common/Util;->sleepUninterruptibly(J)V

    .line 209
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "retries":I
    .restart local v2    # "retries":I
    if-gtz v3, :cond_2

    .line 211
    throw v1

    :cond_2
    move v3, v2

    .end local v2    # "retries":I
    .restart local v3    # "retries":I
    goto :goto_0
.end method

.method private createParams()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x1388

    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    .line 147
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    .line 148
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    .line 149
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.origin-server"

    const-string v2, "Stetho"

    .line 150
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    const-string v2, "HTTP/1.1"

    .line 151
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method private createService(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/protocol/HttpService;
    .locals 5
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 155
    iget-object v3, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mRegistryInitializer:Lcom/facebook/stetho/server/RegistryInitializer;

    invoke-interface {v3}, Lcom/facebook/stetho/server/RegistryInitializer;->getRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v1

    .line 157
    .local v1, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 158
    .local v0, "httpproc":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v3, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v3}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 159
    new-instance v3, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v3}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 160
    new-instance v3, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v3}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 161
    new-instance v3, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v3}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 163
    new-instance v2, Lorg/apache/http/protocol/HttpService;

    new-instance v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 167
    .local v2, "service":Lorg/apache/http/protocol/HttpService;
    invoke-virtual {v2, p1}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 168
    invoke-virtual {v2, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 170
    return-object v2
.end method

.method private static getDefaultAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stetho_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/facebook/stetho/common/ProcessUtil;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_devtools_remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private listenOnAddress(Ljava/lang/String;)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->bindToSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v8

    iput-object v8, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Listening on @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/stetho/common/LogUtil;->i(Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/4 v5, 0x0

    .line 104
    .local v5, "service":Lorg/apache/http/protocol/HttpService;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_3

    .line 105
    new-instance v0, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;

    invoke-direct {v0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;-><init>()V

    .line 109
    .local v0, "connection":Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
    :try_start_0
    iget-object v8, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v8}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v6

    .line 111
    .local v6, "socket":Landroid/net/LocalSocket;
    if-nez v3, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->createParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 114
    :cond_1
    if-nez v5, :cond_2

    .line 115
    invoke-direct {p0, v3}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->createService(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/protocol/HttpService;

    move-result-object v5

    .line 117
    :cond_2
    invoke-virtual {v0, v6, v3}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;->bind(Landroid/net/LocalSocket;Lorg/apache/http/params/HttpParams;)V

    .line 120
    new-instance v7, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;

    invoke-direct {v7, v5, v0}, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    .line 121
    .local v7, "t":Ljava/lang/Thread;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 122
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 123
    .end local v6    # "socket":Landroid/net/LocalSocket;
    .end local v7    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "se":Ljava/net/SocketException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_0

    .line 126
    const-string v8, "I/O error"

    invoke-static {v4, v8}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v4    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 135
    .end local v0    # "connection":Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
    :cond_3
    :goto_1
    return-void

    .line 130
    .restart local v0    # "connection":Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
    :catch_2
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "I/O error initialising connection thread"

    invoke-static {v1, v8}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mStopped:Z

    if-eqz v1, :cond_0

    .line 88
    monitor-exit p0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mListenerThread:Ljava/lang/Thread;

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mAddress:Ljava/lang/String;

    .line 94
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->listenOnAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 93
    :cond_1
    invoke-static {}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->getDefaultAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mStopped:Z

    .line 179
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mListenerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 180
    monitor-exit p0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mListenerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
