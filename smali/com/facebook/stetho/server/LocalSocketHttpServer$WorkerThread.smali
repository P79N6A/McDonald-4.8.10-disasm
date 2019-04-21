.class Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;
.super Ljava/lang/Thread;
.source "LocalSocketHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/server/LocalSocketHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private final conn:Lorg/apache/http/HttpServerConnection;

.field private final httpservice:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 2
    .param p1, "httpservice"    # Lorg/apache/http/protocol/HttpService;
    .param p2, "conn"    # Lorg/apache/http/HttpServerConnection;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StethoWorker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    .line 224
    iput-object p2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    .line 225
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogMethodNoExceptionInCatch"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 232
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 247
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "ex":Lorg/apache/http/ConnectionClosedException;
    :try_start_2
    const-string v2, "Client closed connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :try_start_3
    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 244
    :catch_1
    move-exception v2

    goto :goto_0

    .line 237
    .end local v1    # "ex":Lorg/apache/http/ConnectionClosedException;
    :catch_2
    move-exception v1

    .line 238
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v2, "I/O error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :try_start_5
    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 244
    :catch_3
    move-exception v2

    goto :goto_0

    .line 239
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 240
    .local v1, "ex":Lorg/apache/http/HttpException;
    :try_start_6
    const-string v2, "Unrecoverable HTTP protocol violation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    :try_start_7
    iget-object v2, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 244
    :catch_5
    move-exception v2

    goto :goto_0

    .line 242
    .end local v1    # "ex":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v2

    .line 243
    :try_start_8
    iget-object v3, p0, Lcom/facebook/stetho/server/LocalSocketHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v3}, Lorg/apache/http/HttpServerConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 245
    :goto_1
    throw v2

    .line 244
    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v2

    goto :goto_0
.end method
