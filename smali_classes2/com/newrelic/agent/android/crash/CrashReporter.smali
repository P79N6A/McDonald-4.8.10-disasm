.class public Lcom/newrelic/agent/android/crash/CrashReporter;
.super Lcom/newrelic/agent/android/payload/PayloadReporter;
.source "CrashReporter.java"


# static fields
.field protected static instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newrelic/agent/android/crash/CrashReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static reportCrashes:Z


# instance fields
.field protected final crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

.field private final uncaughtExceptionHandler:Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrashes:Z

    return-void
.end method

.method protected constructor <init>(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/payload/PayloadReporter;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 59
    new-instance v0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crash/CrashReporter;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->uncaughtExceptionHandler:Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;

    .line 60
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashStore()Lcom/newrelic/agent/android/crash/CrashStore;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    .line 61
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportCrashes()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/crash/CrashReporter;)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/crash/CrashReporter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/newrelic/agent/android/crash/CrashReporter;->reportSupportabilityMetrics()V

    return-void
.end method

.method static synthetic access$100()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/crash/CrashReporter;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/CrashReporter;

    return-object v0
.end method

.method public static getUncaughtExceptionHandler()Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crash/CrashReporter;->uncaughtExceptionHandler:Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/crash/CrashReporter;
    .locals 3
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 28
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-direct {v2, p0}, Lcom/newrelic/agent/android/crash/CrashReporter;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/CrashReporter;

    return-object v0
.end method

.method protected static isInitialized()Z
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static setReportCrashes(Z)V
    .locals 1
    .param p0, "reportCrashes"    # Z

    .prologue
    .line 40
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/CrashReporter;

    sput-boolean p0, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrashes:Z

    .line 43
    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crash/CrashReporter;->stop()V

    .line 35
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method protected reportCrash(Lcom/newrelic/agent/android/crash/Crash;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "crash"    # Lcom/newrelic/agent/android/crash/Crash;

    .prologue
    .line 106
    sget-boolean v2, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrashes:Z

    if-eqz v2, :cond_0

    .line 107
    if-eqz p1, :cond_1

    .line 108
    new-instance v1, Lcom/newrelic/agent/android/crash/CrashSender;

    iget-object v2, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v1, p1, v2}, Lcom/newrelic/agent/android/crash/CrashSender;-><init>(Lcom/newrelic/agent/android/crash/Crash;Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 109
    .local v1, "sender":Lcom/newrelic/agent/android/crash/CrashSender;
    new-instance v0, Lcom/newrelic/agent/android/crash/CrashReporter$2;

    invoke-direct {v0, p0, p1}, Lcom/newrelic/agent/android/crash/CrashReporter$2;-><init>(Lcom/newrelic/agent/android/crash/CrashReporter;Lcom/newrelic/agent/android/crash/Crash;)V

    .line 125
    .local v0, "completionHandler":Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitPayload(Lcom/newrelic/agent/android/payload/PayloadSender;Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 131
    .end local v0    # "completionHandler":Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;
    .end local v1    # "sender":Lcom/newrelic/agent/android/crash/CrashSender;
    :goto_0
    return-object v2

    .line 128
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "CrashReporter.reportCrash(Crash): attempted to report null crash."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 131
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected reportSavedCrashes()V
    .locals 5

    .prologue
    .line 92
    iget-object v1, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    invoke-interface {v1}, Lcom/newrelic/agent/android/crash/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/crash/Crash;

    .line 94
    .local v0, "crash":Lcom/newrelic/agent/android/crash/Crash;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/crash/Crash;->isStale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/crash/CrashStore;->delete(Lcom/newrelic/agent/android/crash/Crash;)V

    .line 96
    sget-object v2, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crash ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has become stale, and has been removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/Crash/Removed/Stale"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/crash/Crash;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 103
    .end local v0    # "crash":Lcom/newrelic/agent/android/crash/Crash;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/newrelic/agent/android/crash/CrashReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/newrelic/agent/android/crash/CrashReporter$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/crash/CrashReporter$1;-><init>(Lcom/newrelic/agent/android/crash/CrashReporter;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/payload/PayloadController;->submitCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 78
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->uncaughtExceptionHandler:Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->installExceptionHandler()V

    .line 79
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportCrashes()Z

    move-result v0

    sput-boolean v0, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrashes:Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AgentDataReporter.start(): Must initialize PayloadController first."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stop()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected storeAndReportCrash(Lcom/newrelic/agent/android/crash/Crash;)V
    .locals 6
    .param p1, "crash"    # Lcom/newrelic/agent/android/crash/Crash;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    if-eqz v3, :cond_3

    .line 137
    if-eqz p1, :cond_2

    .line 138
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    invoke-interface {v3, p1}, Lcom/newrelic/agent/android/crash/CrashStore;->store(Lcom/newrelic/agent/android/crash/Crash;)Z

    move-result v2

    .line 139
    .local v2, "stored":Z
    if-nez v2, :cond_0

    .line 140
    sget-object v3, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "CrashReporter.storeAndReportCrash(Crash): failed to store passed crash."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 150
    .end local v2    # "stored":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/crash/Crash;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 151
    .local v1, "future":Ljava/util/concurrent/Future;
    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "future":Ljava/util/concurrent/Future;
    :cond_1
    :goto_1
    return-void

    .line 143
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "CrashReporter.storeAndReportCrash(Crash): attempted to store null crash."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    sget-object v3, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "CrashReporter.storeAndReportCrash(Crash): attempted to store crash without a crash store."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/crash/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CrashReporter.storeAndReportCrash(Crash): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method
