.class public Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final crashReporter:Lcom/newrelic/agent/android/crash/CrashReporter;

.field protected final handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/crash/CrashReporter;)V
    .locals 2
    .param p1, "crashReporter"    # Lcom/newrelic/agent/android/crash/CrashReporter;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->crashReporter:Lcom/newrelic/agent/android/crash/CrashReporter;

    .line 26
    return-void
.end method


# virtual methods
.method protected chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chaining crash reporting duties to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public getPreviousExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public installExceptionHandler()V
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 32
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 33
    instance-of v1, v0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "New Relic crash handler already installed."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 40
    sget-object v1, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing New Relic crash handler and chaining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 45
    :goto_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Installing New Relic crash handler."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetExceptionHandler()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 118
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "YES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v6, "Supportability/AgentHealth/Recursion/UncaughtExceptionHandler"

    invoke-virtual {v3, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->crashReporter:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/crash/CrashReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v0

    .line 64
    .local v0, "agentConfiguration":Lcom/newrelic/agent/android/AgentConfiguration;
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->crashReporter:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/crash/CrashReporter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 65
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "A crash has been detected but crash reporting is disabled!"

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "YES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    sget-object v3, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A crash has been detected in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and will be reported ASAP."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 71
    sget-object v6, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Analytics data is currently "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "enabled "

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    .line 77
    .local v1, "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setEnabled(Z)V

    .line 78
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisSinceStart()J

    move-result-wide v4

    .line 79
    .local v4, "sessionDuration":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 80
    const-string v3, "sessionDuration"

    long-to-float v6, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;FZ)Z

    .line 84
    :cond_4
    new-instance v2, Lcom/newrelic/agent/android/crash/Crash;

    .line 85
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributes()Ljava/util/Set;

    move-result-object v3

    .line 86
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/newrelic/agent/android/analytics/EventManager;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v6

    .line 87
    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v7

    invoke-direct {v2, p2, v3, v6, v7}, Lcom/newrelic/agent/android/crash/Crash;-><init>(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Collection;Z)V

    .line 90
    .local v2, "crash":Lcom/newrelic/agent/android/crash/Crash;
    iget-object v3, p0, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->crashReporter:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-virtual {v3, v2}, Lcom/newrelic/agent/android/crash/CrashReporter;->storeAndReportCrash(Lcom/newrelic/agent/android/crash/Crash;)V

    .line 92
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "YES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 94
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_5
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "YES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 71
    .end local v1    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .end local v2    # "crash":Lcom/newrelic/agent/android/crash/Crash;
    .end local v4    # "sessionDuration":J
    :cond_6
    :try_start_2
    const-string v3, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 98
    .end local v0    # "agentConfiguration":Lcom/newrelic/agent/android/AgentConfiguration;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/crash/UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_7
    throw v3
.end method
