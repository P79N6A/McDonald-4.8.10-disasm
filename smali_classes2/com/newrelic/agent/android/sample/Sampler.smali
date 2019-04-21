.class public Lcom/newrelic/agent/android/sample/Sampler;
.super Ljava/lang/Object;
.source "Sampler.java"

# interfaces
.implements Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
.implements Ljava/lang/Runnable;


# static fields
.field private static final KB_IN_MB:I = 0x400

.field private static final PID:[I

.field protected static final SAMPLE_FREQ_MS:J = 0x64L

.field protected static final SAMPLE_FREQ_MS_MAX:J = 0xfaL

.field protected static cpuSamplingDisabled:Z

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field protected static sampler:Lcom/newrelic/agent/android/sample/Sampler;

.field private static final samplerLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;

.field private appStatFile:Ljava/io/RandomAccessFile;

.field protected final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastAppCpuTime:Ljava/lang/Long;

.field private lastCpuTime:Ljava/lang/Long;

.field private procStatFile:Ljava/io/RandomAccessFile;

.field protected sampleFreqMs:J

.field protected sampleFuture:Ljava/util/concurrent/ScheduledFuture;

.field private samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

.field private final samples:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    sput-boolean v2, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    .line 37
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "Sampler"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    .line 50
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    .line 52
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method static synthetic access$000()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method public static copySamples()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 363
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 365
    :try_start_0
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v2, :cond_0

    .line 366
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 379
    .local v0, "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    :goto_0
    return-object v2

    .line 370
    .end local v0    # "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/EnumMap;

    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v2, v2, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 372
    .restart local v0    # "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v2, v2, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .line 373
    .local v1, "key":Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    new-instance v4, Ljava/util/ArrayList;

    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v2, v2, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 376
    .end local v1    # "key":Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 379
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method private getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v1, :cond_0

    .line 60
    invoke-static {p0}, Lcom/newrelic/agent/android/sample/Sampler;->provideSampler(Landroid/content/Context;)Lcom/newrelic/agent/android/sample/Sampler;

    move-result-object v1

    sput-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    .line 61
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    const-wide/16 v2, 0x64

    iput-wide v2, v1, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    .line 62
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    new-instance v2, Lcom/newrelic/agent/android/metric/Metric;

    const-string v3, "samplerServiceTime"

    invoke-direct {v2, v3}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

    .line 64
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 66
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Sampler initialized"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sampler init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method protected static isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v1, v1, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v1, v1, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static provideSampler(Landroid/content/Context;)Lcom/newrelic/agent/android/sample/Sampler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Lcom/newrelic/agent/android/sample/Sampler;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/sample/Sampler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private resetCpuSampler()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 344
    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 345
    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    .line 347
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 350
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hit while resetting CPU sampler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 355
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected static sampleCpuInstance()Lcom/newrelic/agent/android/tracing/Sample;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleCpu()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v0

    goto :goto_0
.end method

.method public static sampleMemory()Lcom/newrelic/agent/android/tracing/Sample;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v0, v0, Lcom/newrelic/agent/android/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v0

    goto :goto_0
.end method

.method public static sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;
    .locals 8
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 254
    :try_start_0
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 256
    .local v1, "memInfo":[Landroid/os/Debug$MemoryInfo;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 257
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 259
    .local v3, "totalPss":I
    if-ltz v3, :cond_0

    .line 260
    new-instance v2, Lcom/newrelic/agent/android/tracing/Sample;

    sget-object v4, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v2, v4}, Lcom/newrelic/agent/android/tracing/Sample;-><init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 261
    .local v2, "sample":Lcom/newrelic/agent/android/tracing/Sample;
    int-to-double v4, v3

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "memInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v2    # "sample":Lcom/newrelic/agent/android/tracing/Sample;
    .end local v3    # "totalPss":I
    :goto_0
    return-object v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sample memory failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 122
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->stopNow()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    .line 124
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler shutdown"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/sample/Sampler;->schedule()V

    .line 86
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler started"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/sample/Sampler;->stop(Z)V

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler stopped"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static stopNow()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 108
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/sample/Sampler;->stop(Z)V

    .line 110
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler hard stopped"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected clear()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 240
    .local v0, "sampleCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;"
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 242
    .end local v0    # "sampleCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;"
    :cond_0
    return-void
.end method

.method protected monitorSamplerServiceTime(D)V
    .locals 9
    .param p1, "serviceTime"    # D

    .prologue
    const/4 v8, 0x1

    .line 196
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 197
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/newrelic/agent/android/sample/Sampler;->samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/Metric;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 199
    .local v7, "serviceTimeAvg":Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 200
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler: sample service time has been exceeded. Increase by 10%"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 201
    iget-wide v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    long-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0xfa

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    .line 202
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 206
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler scheduler restarted; sampling will now occur every %d ms."

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samplerServiceMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/Metric;->clear()V

    .line 209
    :cond_1
    return-void
.end method

.method public onEnterMethod()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->start()V

    goto :goto_0
.end method

.method public onExitMethod()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 2
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/newrelic/agent/android/sample/Sampler$1;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/sample/Sampler$1;-><init>(Lcom/newrelic/agent/android/sample/Sampler;Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public onTraceRename(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 0
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 429
    return-void
.end method

.method public onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 0
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 404
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->start()V

    .line 405
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/newrelic/agent/android/sample/Sampler;->sample()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Caught exception while running the sampler"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected sample()V
    .locals 7

    .prologue
    .line 212
    new-instance v3, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v3}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 214
    .local v3, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 216
    :try_start_0
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 217
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v2

    .line 219
    .local v2, "memorySample":Lcom/newrelic/agent/android/tracing/Sample;
    if-eqz v2, :cond_0

    .line 220
    sget-object v4, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/sample/Sampler;->getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleCpu()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v0

    .line 224
    .local v0, "cpuSample":Lcom/newrelic/agent/android/tracing/Sample;
    if-eqz v0, :cond_1

    .line 225
    sget-object v4, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/sample/Sampler;->getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    .end local v0    # "cpuSample":Lcom/newrelic/agent/android/tracing/Sample;
    .end local v2    # "memorySample":Lcom/newrelic/agent/android/tracing/Sample;
    :goto_0
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/newrelic/agent/android/sample/Sampler;->monitorSamplerServiceTime(D)V

    .line 236
    return-void

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sampling failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 229
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    sget-object v4, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public sampleCpu()Lcom/newrelic/agent/android/tracing/Sample;
    .locals 14

    .prologue
    .line 282
    sget-boolean v10, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    if-eqz v10, :cond_0

    .line 283
    const/4 v9, 0x0

    .line 340
    :goto_0
    return-object v9

    .line 287
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-nez v10, :cond_2

    .line 289
    :cond_1
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "/proc/stat"

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    .line 290
    new-instance v10, Ljava/io/RandomAccessFile;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/proc/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/stat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    .line 297
    :goto_1
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "procStatString":Ljava/lang/String;
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "appStatString":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, "procStats":[Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "appStats":[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x3

    aget-object v12, v8, v12

    .line 307
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x4

    aget-object v12, v8, v12

    .line 308
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x5

    aget-object v12, v8, v12

    .line 309
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x6

    aget-object v12, v8, v12

    .line 310
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x7

    aget-object v12, v8, v12

    .line 311
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v12, 0x8

    aget-object v12, v8, v12

    .line 312
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v4, v10, v12

    .line 314
    .local v4, "cpuTime":J
    const/16 v10, 0xd

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v1, v12

    .line 315
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v2, v10, v12

    .line 317
    .local v2, "appTime":J
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    if-nez v10, :cond_3

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    .line 322
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 293
    .end local v0    # "appStatString":Ljava/lang/String;
    .end local v1    # "appStats":[Ljava/lang/String;
    .end local v2    # "appTime":J
    .end local v4    # "cpuTime":J
    .end local v7    # "procStatString":Ljava/lang/String;
    .end local v8    # "procStats":[Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 334
    :catch_0
    move-exception v6

    .line 335
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    sput-boolean v10, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    .line 336
    sget-object v10, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception hit while CPU sampling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 337
    invoke-static {v6}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 340
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 325
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "appStatString":Ljava/lang/String;
    .restart local v1    # "appStats":[Ljava/lang/String;
    .restart local v2    # "appTime":J
    .restart local v4    # "cpuTime":J
    .restart local v7    # "procStatString":Ljava/lang/String;
    .restart local v8    # "procStats":[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v9, Lcom/newrelic/agent/android/tracing/Sample;

    sget-object v10, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v9, v10}, Lcom/newrelic/agent/android/tracing/Sample;-><init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 327
    .local v9, "sample":Lcom/newrelic/agent/android/tracing/Sample;
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v2, v10

    long-to-double v10, v10

    iget-object v12, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v4, v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(D)V

    .line 329
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 330
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected schedule()V
    .locals 8

    .prologue
    .line 143
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/newrelic/agent/android/sample/Sampler;->clear()V

    .line 147
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 148
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler scheduler started; sampling will occur every %d ms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFreqMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v7

    .line 152
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sampler scheduling failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 153
    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected stop(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 160
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/sample/Sampler;->resetCpuSampler()V

    .line 168
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Sampler canceled"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sampler stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 172
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
