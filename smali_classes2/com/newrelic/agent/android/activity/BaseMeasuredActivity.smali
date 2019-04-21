.class public Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;
.super Ljava/lang/Object;
.source "BaseMeasuredActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/activity/MeasuredActivity;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private autoInstrumented:Z

.field private endTime:J

.field private endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

.field private endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

.field private finished:Z

.field private measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

.field private name:Ljava/lang/String;

.field private startTime:J

.field private startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

.field private startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logIfFinished()Z
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "BaseMeasuredActivity: cannot modify finished Activity"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    return v0
.end method

.method private throwIfFinished()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string v1, "Attempted to modify finished Measurement"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    .line 191
    return-void
.end method

.method public getBackgroundMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endTime:J

    return-wide v0
.end method

.method public getEndingMeasurement()Lcom/newrelic/agent/android/measurement/Measurement;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    return-object v0
.end method

.method public getEndingThread()Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    return-object v0
.end method

.method public getMeasurementPool()Lcom/newrelic/agent/android/measurement/MeasurementPool;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startTime:J

    return-wide v0
.end method

.method public getStartingMeasurement()Lcom/newrelic/agent/android/measurement/Measurement;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    return-object v0
.end method

.method public getStartingThread()Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    return-object v0
.end method

.method public isAutoInstrumented()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->autoInstrumented:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    return v0
.end method

.method public setAutoInstrumented(Z)V
    .locals 1
    .param p1, "autoInstrumented"    # Z

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iput-boolean p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->autoInstrumented:Z

    .line 150
    :cond_0
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-wide p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endTime:J

    .line 117
    :cond_0
    return-void
.end method

.method public setEndingMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 1
    .param p1, "endingMeasurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    .line 172
    :cond_0
    return-void
.end method

.method public setEndingThread(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .locals 1
    .param p1, "endingThread"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .line 139
    :cond_0
    return-void
.end method

.method public setMeasurementPool(Lcom/newrelic/agent/android/measurement/MeasurementPool;)V
    .locals 1
    .param p1, "measurementPool"    # Lcom/newrelic/agent/android/measurement/MeasurementPool;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    .line 183
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-wide p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startTime:J

    .line 106
    :cond_0
    return-void
.end method

.method public setStartingMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 1
    .param p1, "startingMeasurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    .line 161
    :cond_0
    return-void
.end method

.method public setStartingThread(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .locals 1
    .param p1, "startingThread"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->logIfFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .line 128
    :cond_0
    return-void
.end method