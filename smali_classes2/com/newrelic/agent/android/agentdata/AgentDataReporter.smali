.class public Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
.super Lcom/newrelic/agent/android/payload/PayloadReporter;
.source "AgentDataReporter.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;


# static fields
.field protected static final instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newrelic/agent/android/agentdata/AgentDataReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static reportExceptions:Z


# instance fields
.field protected final payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/agent/android/payload/PayloadStore",
            "<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation
.end field

.field protected final reportCachedAgentDataCallable:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportExceptions:Z

    return-void
.end method

.method protected constructor <init>(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/payload/PayloadReporter;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 29
    new-instance v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$1;-><init>(Lcom/newrelic/agent/android/agentdata/AgentDataReporter;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportCachedAgentDataCallable:Ljava/util/concurrent/Callable;

    .line 80
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getPayloadStore()Lcom/newrelic/agent/android/payload/PayloadStore;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportHandledExceptions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    return-void
.end method

.method static synthetic access$000()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$100()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    return-object v0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
    .locals 3
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 42
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    invoke-direct {v2, p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportHandledExceptions()Z

    move-result v0

    sput-boolean v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportExceptions:Z

    .line 45
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    return-object v0
.end method

.method protected static isInitialized()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPayloadStale(Lcom/newrelic/agent/android/payload/Payload;)Z
    .locals 3
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getPayloadTTL()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/newrelic/agent/android/payload/Payload;->isStale(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/payload/PayloadStore;->delete(Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payload ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has become stale, and has been removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Payload/Removed/Stale"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportAgentData([B)Z
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "reported":Z
    invoke-static {}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    sget-boolean v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportExceptions:Z

    if-eqz v2, :cond_0

    .line 62
    new-instance v0, Lcom/newrelic/agent/android/payload/Payload;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/payload/Payload;-><init>([B)V

    .line 63
    .local v0, "payload":Lcom/newrelic/agent/android/payload/Payload;
    sget-object v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->storeAndReportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;

    .line 64
    const/4 v1, 0x1

    .line 70
    .end local v0    # "payload":Lcom/newrelic/agent/android/payload/Payload;
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "AgentDataReporter not initialized"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void

    .line 53
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method private submitBatchedPayload(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/payload/Payload;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/newrelic/agent/android/payload/Payload;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newrelic/agent/android/payload/Payload;

    .line 181
    .local v6, "payload":Lcom/newrelic/agent/android/payload/Payload;
    invoke-virtual {v6}, Lcom/newrelic/agent/android/payload/Payload;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v6    # "payload":Lcom/newrelic/agent/android/payload/Payload;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 191
    .local v2, "flat":Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 192
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v4, v7, [B

    .line 193
    .local v4, "modifiedBytes":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    new-instance v0, Lcom/newrelic/agent/android/agentdata/AgentDataSender;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    sget-object v7, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    iget-object v7, v7, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v0, v8, v7}, Lcom/newrelic/agent/android/agentdata/AgentDataSender;-><init>([BLcom/newrelic/agent/android/AgentConfiguration;)V

    .line 198
    .local v0, "agentDataSender":Lcom/newrelic/agent/android/payload/PayloadSender;
    new-instance v7, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$3;

    invoke-direct {v7, p0, p1}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$3;-><init>(Lcom/newrelic/agent/android/agentdata/AgentDataReporter;Ljava/util/List;)V

    invoke-static {v0, v7}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)Ljava/util/concurrent/Future;

    .line 218
    .end local v0    # "agentDataSender":Lcom/newrelic/agent/android/payload/PayloadSender;
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "flat":Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/newrelic/agent/android/payload/Payload;>;"
    .end local v4    # "modifiedBytes":[B
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method


# virtual methods
.method public onHarvest()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportCachedAgentDataCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 236
    return-void
.end method

.method public onHarvestBefore()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public onHarvestComplete()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onHarvestConnected()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onHarvestDisabled()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onHarvestDisconnected()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onHarvestError()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onHarvestFinalize()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onHarvestSendFailed()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onHarvestStart()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onHarvestStop()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected reportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "future":Ljava/util/concurrent/Future;
    new-instance v1, Lcom/newrelic/agent/android/agentdata/AgentDataSender;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/newrelic/agent/android/agentdata/AgentDataSender;-><init>(Lcom/newrelic/agent/android/payload/Payload;Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 125
    .local v1, "payloadSender":Lcom/newrelic/agent/android/payload/PayloadSender;
    new-instance v2, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;

    invoke-direct {v2, p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;-><init>(Lcom/newrelic/agent/android/agentdata/AgentDataReporter;)V

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method protected reportCachedAgentData()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    invoke-interface {v1}, Lcom/newrelic/agent/android/payload/PayloadStore;->fetchAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/payload/Payload;

    .line 110
    .local v0, "payload":Lcom/newrelic/agent/android/payload/Payload;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isPayloadStale(Lcom/newrelic/agent/android/payload/Payload;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 116
    .end local v0    # "payload":Lcom/newrelic/agent/android/payload/Payload;
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "AgentDataReporter not initialized"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportCachedAgentDataCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 90
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AgentDataReporter.start(): Must initialize PayloadController first."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 102
    return-void
.end method

.method public storeAndReportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/payload/PayloadStore;->store(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/payload/Payload;->setPersisted(Z)V

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
