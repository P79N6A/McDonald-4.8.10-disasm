.class Lcom/newrelic/agent/android/payload/PayloadReaper;
.super Ljava/lang/Object;
.source "PayloadReaper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/newrelic/agent/android/payload/PayloadSender;",
        ">;"
    }
.end annotation


# instance fields
.field final handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

.field final sender:Lcom/newrelic/agent/android/payload/PayloadSender;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)V
    .locals 2
    .param p1, "sender"    # Lcom/newrelic/agent/android/payload/PayloadSender;
    .param p2, "handler"    # Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    if-nez p1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must provide payload sender!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    .line 15
    iput-object p2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    .line 16
    return-void
.end method


# virtual methods
.method public call()Lcom/newrelic/agent/android/payload/PayloadSender;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "payloadSender":Lcom/newrelic/agent/android/payload/PayloadSender;
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/payload/PayloadSender;->call()Lcom/newrelic/agent/android/payload/PayloadSender;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    invoke-interface {v2, v1}, Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;->onResponse(Lcom/newrelic/agent/android/payload/PayloadSender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v2, v1

    .line 36
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->handler:Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    iget-object v3, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;->onException(Lcom/newrelic/agent/android/payload/PayloadSender;Ljava/lang/Exception;)V

    .line 36
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadReaper;->call()Lcom/newrelic/agent/android/payload/PayloadSender;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-ne p0, p1, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 49
    :goto_0
    return v1

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/newrelic/agent/android/payload/PayloadReaper;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/newrelic/agent/android/payload/PayloadReaper;

    .line 47
    .local v0, "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    iget-object v1, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    iget-object v1, v1, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    iget-object v2, v0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    iget-object v2, v2, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/payload/Payload;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 49
    .end local v0    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/payload/PayloadSender;->getPayload()Lcom/newrelic/agent/android/payload/Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
