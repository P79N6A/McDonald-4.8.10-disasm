.class Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;
.super Ljava/lang/Object;
.source "HttpURLConnectionExtension.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->getOutputStream()Ljava/io/OutputStream;
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
    .line 391
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 402
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    :try_start_0
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 405
    .local v1, "statusCode":I
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v1    # "statusCode":I
    :goto_0
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const-string v5, "content-length"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    .line 411
    .local v2, "numBytes":J
    if-eqz v0, :cond_0

    .line 413
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 420
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 421
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v4, v5}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$200(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 423
    .end local v0    # "header":Ljava/lang/String;
    .end local v2    # "numBytes":J
    :cond_1
    return-void

    .line 414
    .restart local v0    # "header":Ljava/lang/String;
    .restart local v2    # "numBytes":J
    :catch_0
    move-exception v4

    goto :goto_1

    .line 406
    .end local v0    # "header":Ljava/lang/String;
    .end local v2    # "numBytes":J
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;->access$000(Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;Ljava/lang/Exception;)V

    .line 398
    return-void
.end method
