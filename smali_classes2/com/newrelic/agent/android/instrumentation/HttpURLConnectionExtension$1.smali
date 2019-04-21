.class Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;
.super Ljava/lang/Object;
.source "HttpURLConnectionExtension.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

.field final synthetic val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 8
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 353
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    :try_start_0
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 356
    .local v4, "statusCode":I
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v5, v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v4    # "statusCode":I
    :goto_0
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v0, v5

    .line 361
    .local v0, "contentLength":J
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    .line 362
    .local v2, "numBytes":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 363
    move-wide v2, v0

    .line 365
    :cond_0
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v5, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 366
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$200(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 368
    .end local v0    # "contentLength":J
    .end local v2    # "numBytes":J
    :cond_1
    return-void

    .line 357
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$1;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$000(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;Ljava/lang/Exception;)V

    .line 349
    return-void
.end method
