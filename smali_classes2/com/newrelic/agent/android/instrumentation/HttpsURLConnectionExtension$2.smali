.class Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;
.super Ljava/lang/Object;
.source "HttpsURLConnectionExtension.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

.field final synthetic val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 424
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 426
    :try_start_0
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 427
    .local v1, "statusCode":I
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v1    # "statusCode":I
    :goto_0
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;->access$100(Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v4

    const-string v5, "content-length"

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    .line 433
    .local v2, "numBytes":J
    if-eqz v0, :cond_0

    .line 435
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 442
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v4, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 443
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v4, v5}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;->access$200(Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 445
    .end local v0    # "header":Ljava/lang/String;
    .end local v2    # "numBytes":J
    :cond_1
    return-void

    .line 436
    .restart local v0    # "header":Ljava/lang/String;
    .restart local v2    # "numBytes":J
    :catch_0
    move-exception v4

    goto :goto_1

    .line 428
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
    .line 416
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;->access$000(Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V

    .line 420
    return-void
.end method
