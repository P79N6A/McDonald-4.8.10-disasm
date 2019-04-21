.class public Lcom/newrelic/agent/android/payload/PayloadController;
.super Ljava/lang/Object;
.source "PayloadController.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;
    }
.end annotation


# static fields
.field public static final PAYLOAD_COLLECTOR_TIMEOUT:J = 0xbb8L

.field public static final PAYLOAD_REQUEUE_PERIOD_MS:J = 0x1d4c0L

.field protected static final dequeueRunnable:Ljava/lang/Runnable;

.field protected static instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newrelic/agent/android/payload/PayloadController;",
            ">;"
        }
    .end annotation
.end field

.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field protected static opportunisticUploads:Z

.field protected static payloadQueueLock:Ljava/util/concurrent/locks/Lock;

.field protected static payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/newrelic/agent/android/payload/PayloadReaper;",
            ">;"
        }
    .end annotation
.end field

.field protected static payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/newrelic/agent/android/payload/PayloadReaper;",
            ">;"
        }
    .end annotation
.end field

.field protected static queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

.field protected static reapersInFlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field protected static requeueFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final requeueRunnable:Ljava/lang/Runnable;


# instance fields
.field private final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    sput-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    .line 40
    sput-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->requeueFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 41
    sput-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    sput-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    sput-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    .line 44
    sput-boolean v2, Lcom/newrelic/agent/android/payload/PayloadController;->opportunisticUploads:Z

    .line 46
    new-instance v0, Lcom/newrelic/agent/android/payload/PayloadController$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/payload/PayloadController$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->dequeueRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/newrelic/agent/android/payload/PayloadController$2;

    invoke-direct {v0}, Lcom/newrelic/agent/android/payload/PayloadController$2;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->requeueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 0
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/newrelic/agent/android/payload/PayloadController;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/payload/PayloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/payload/PayloadController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/newrelic/agent/android/payload/PayloadController;->dequeuePayloadSenders()V

    return-void
.end method

.method static synthetic access$100(Lcom/newrelic/agent/android/payload/PayloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/payload/PayloadController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/newrelic/agent/android/payload/PayloadController;->requeuePayloadSenders()V

    return-void
.end method

.method private final dequeuePayloadSenders()V
    .locals 5

    .prologue
    .line 219
    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    :cond_0
    :goto_0
    :try_start_0
    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/payload/PayloadReaper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .local v1, "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    if-eqz v1, :cond_0

    .line 225
    :try_start_1
    invoke-static {v1}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadReaper;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayloadController.dequeuePayloadSenders(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 236
    :cond_2
    return-void
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/payload/PayloadController;
    .locals 9
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    const-wide/32 v2, 0x1d4c0

    .line 68
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v4, Lcom/newrelic/agent/android/payload/PayloadController;

    invoke-direct {v4, p0}, Lcom/newrelic/agent/android/payload/PayloadController;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    new-instance v0, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->getIOThreadSize()I

    move-result v1

    new-instance v4, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v5, "NR-PayloadWorker"

    invoke-direct {v4, v5}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    .line 73
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->requeueRunnable:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->requeueFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newrelic/agent/android/payload/PayloadController;->opportunisticUploads:Z

    .line 77
    invoke-static {p0}, Lcom/newrelic/agent/android/crash/CrashReporter;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/crash/CrashReporter;

    move-result-object v8

    .line 78
    .local v8, "crashReporter":Lcom/newrelic/agent/android/crash/CrashReporter;
    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {v8}, Lcom/newrelic/agent/android/crash/CrashReporter;->start()V

    .line 84
    :goto_0
    invoke-static {p0}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    move-result-object v7

    .line 85
    .local v7, "agentDataReporter":Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
    if-eqz v7, :cond_2

    .line 86
    invoke-virtual {v7}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->start()V

    .line 91
    :goto_1
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 94
    .end local v7    # "agentDataReporter":Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
    .end local v8    # "crashReporter":Lcom/newrelic/agent/android/crash/CrashReporter;
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/payload/PayloadController;

    return-object v0

    .line 81
    .restart local v8    # "crashReporter":Lcom/newrelic/agent/android/crash/CrashReporter;
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "PayloadController.initialize: No crash reporter - crash reporting will be disabled"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .restart local v7    # "agentDataReporter":Lcom/newrelic/agent/android/agentdata/AgentDataReporter;
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "PayloadController.initialize: No payload reporter - payload reporting will be disabled"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static payloadInFlight(Lcom/newrelic/agent/android/payload/Payload;)Z
    .locals 2
    .param p0, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 307
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requeuePayloadSenders()V
    .locals 4

    .prologue
    .line 239
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    :cond_0
    :goto_0
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/payload/PayloadReaper;

    .line 243
    .local v0, "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, v0, Lcom/newrelic/agent/android/payload/PayloadReaper;->sender:Lcom/newrelic/agent/android/payload/PayloadSender;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/payload/PayloadSender;->getPayload()Lcom/newrelic/agent/android/payload/Payload;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/payload/PayloadController;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getPayloadTTL()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/payload/Payload;->isStale(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-static {v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadReaper;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    .end local v0    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 247
    .restart local v0    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "PayloadController.requeuePayloadSenders: Will not re-queue stale payload."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v0    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    :cond_3
    return-void
.end method

.method public static shouldUploadOpportunistically()Z
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/newrelic/agent/android/payload/PayloadController;->opportunisticUploads:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->hasReachableNetworkConnection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 102
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->requeueFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->requeueFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->requeueFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 108
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->shutdown()V

    .line 114
    invoke-static {}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->shutdown()V

    .line 116
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    const-wide/16 v2, 0xbb8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "PayloadController.shutdown: upload thread(s) timed-out before handler"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    :goto_0
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_2
    return-void

    .line 125
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static submitCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "callable"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 206
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected static submitPayload(Lcom/newrelic/agent/android/payload/PayloadReaper;)Ljava/util/concurrent/Future;
    .locals 4
    .param p0, "payloadReaper"    # Lcom/newrelic/agent/android/payload/PayloadReaper;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "future":Ljava/util/concurrent/Future;
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 186
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 188
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "future":Ljava/util/concurrent/Future;
    check-cast v0, Ljava/util/concurrent/Future;

    .line 189
    .restart local v0    # "future":Ljava/util/concurrent/Future;
    if-eqz v0, :cond_1

    .line 190
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayloadController.submitPayload: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is already in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 8
    .param p0, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;
    .param p1, "completionHandler"    # Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "future":Ljava/util/concurrent/Future;
    new-instance v2, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v2}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 138
    .local v2, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 141
    new-instance v1, Lcom/newrelic/agent/android/payload/PayloadController$3;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/payload/PayloadController$3;-><init>(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)V

    .line 157
    .local v1, "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 158
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperRetryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 160
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "future":Ljava/util/concurrent/Future;
    check-cast v0, Ljava/util/concurrent/Future;

    .line 161
    .restart local v0    # "future":Ljava/util/concurrent/Future;
    if-eqz v0, :cond_1

    .line 162
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayloadController.submitPayload: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is already in progress."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 172
    :goto_0
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayloadController.submitPayload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms. waiting to submit payload."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 175
    .end local v1    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :cond_0
    return-object v0

    .line 164
    .restart local v1    # "payloadReaper":Lcom/newrelic/agent/android/payload/PayloadReaper;
    :cond_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadSender;->shouldUploadOpportunistically()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    invoke-virtual {v3, v1}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 166
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->reapersInFlight:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/payload/PayloadReaper;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadController;->payloadReaperQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onHarvest()V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadController;->queueExecutor:Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;

    sget-object v1, Lcom/newrelic/agent/android/payload/PayloadController;->dequeueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/payload/PayloadController$ThrottledScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 280
    return-void
.end method

.method public onHarvestBefore()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onHarvestComplete()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onHarvestConnected()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onHarvestDisabled()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onHarvestDisconnected()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onHarvestError()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onHarvestFinalize()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onHarvestSendFailed()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onHarvestStart()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onHarvestStop()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method protected uploadOpportunistically()Z
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lcom/newrelic/agent/android/payload/PayloadController;->opportunisticUploads:Z

    return v0
.end method
