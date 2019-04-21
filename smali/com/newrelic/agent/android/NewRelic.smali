.class public final Lcom/newrelic/agent/android/NewRelic;
.super Ljava/lang/Object;
.source "NewRelic.java"


# static fields
.field private static final UNKNOWN_HTTP_REQUEST_TYPE:Ljava/lang/String; = "unknown"

.field protected static final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field protected static started:Z


# instance fields
.field protected logLevel:I

.field protected loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 50
    new-instance v0, Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AgentConfiguration;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    .line 57
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setApplicationToken(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected static _noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "noticeHttpTransaction: url must not be empty."

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v7, "noticeHttpTransaction: httpMethod must not be empty."

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :try_start_0
    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    sub-long v8, p5, p3

    long-to-double v14, v8

    .line 565
    .local v14, "totalTime":D
    double-to-int v7, v14

    const-string v8, "noticeHttpTransaction: the startTimeMs is later than the endTimeMs, resulting in a negative total time."

    invoke-static {v7, v8}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 568
    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v14, v8

    .line 570
    new-instance v7, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v12, p3

    move-wide/from16 v16, p7

    move-wide/from16 v18, p9

    move-object/from16 v20, p13

    invoke-direct/range {v7 .. v20}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v7}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 573
    move/from16 v0, p2

    int-to-long v8, v0

    const-wide/16 v10, 0x190

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 577
    :cond_0
    return-void

    .line 559
    .end local v14    # "totalTime":D
    :catch_0
    move-exception v6

    .line 560
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "noticeHttpTransaction: URL is malformed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static checkEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    return-void
.end method

.method private static checkNegative(ILjava/lang/String;)Z
    .locals 1
    .param p0, "number"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 663
    if-gez p0, :cond_0

    .line 664
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x1

    .line 667
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 649
    if-nez p0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    return-void
.end method

.method public static crashNow()V
    .locals 1

    .prologue
    .line 678
    const-string v0, "This is a demonstration crash courtesy of New Relic"

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->crashNow(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public static crashNow(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 687
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static currentSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 3
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 243
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/FeatureFlag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 244
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 245
    return-void
.end method

.method public static enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 0
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 233
    return-void
.end method

.method public static endInteraction(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 408
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewRelic.endInteraction invoked. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 409
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endTrace(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static endMethodTrace()V
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "NewRelic.endMethodTrace invoked."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 439
    return-void
.end method

.method public static incrementAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static incrementAttribute(Ljava/lang/String;F)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 746
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method private isInstrumented()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isStarted()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    return v0
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJ)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    const-string/jumbo v2, "unknown"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    const-string/jumbo v2, "unknown"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "unknown"

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "unknown"

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "unknown"

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V

    .line 531
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "unknown"

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V

    .line 526
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJ)V
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J

    .prologue
    .line 478
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 482
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .locals 31
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p13, :cond_0

    .line 508
    const-string v2, "X-NewRelic-ID"

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, "header":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    .line 511
    invoke-static/range {v3 .. v16}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 517
    .end local v16    # "header":Ljava/lang/String;
    :goto_0
    return-void

    .line 516
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-wide/from16 v24, p7

    move-wide/from16 v26, p9

    move-object/from16 v28, p11

    move-object/from16 v29, p12

    invoke-static/range {v17 .. v30}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 494
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p13, :cond_0

    .line 495
    const-string v3, "X-NewRelic-ID"

    move-object/from16 v0, p13

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 497
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 498
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-static/range {v3 .. v16}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 504
    .end local v2    # "header":Lorg/apache/http/Header;
    :goto_0
    return-void

    .line 503
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-static/range {v3 .. v16}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 638
    const-string/jumbo v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V

    .line 639
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "e"    # Ljava/lang/Exception;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    const-string/jumbo v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 644
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;

    .prologue
    .line 622
    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-static/range {p0 .. p7}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailureDelegate(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 626
    const-string v0, "noticeHttpException: url must not be empty."

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->exceptionToNetworkFailure(Ljava/lang/Exception;)Lcom/newrelic/agent/android/util/NetworkFailure;

    move-result-object v6

    .line 629
    .local v6, "failure":Lcom/newrelic/agent/android/util/NetworkFailure;
    invoke-virtual {p6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method private static noticeNetworkFailureDelegate(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V
    .locals 24
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 584
    sub-long v4, p4, p2

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v19, v4, v5

    .line 596
    .local v19, "durationInSeconds":F
    new-instance v22, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct/range {v22 .. v22}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 597
    .local v22, "ts":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p6 .. p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->getErrorCode()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setErrorCode(I)V

    .line 599
    invoke-virtual/range {v22 .. v22}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v21

    .line 601
    .local v21, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v20, Ljava/util/TreeMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeMap;-><init>()V

    .line 602
    .local v20, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "content_length"

    const-string v5, "0"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v4, "content_type"

    const-string v5, "text/html"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v5, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v7

    .line 605
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v9

    move/from16 v0, v19

    float-to-double v12, v0

    .line 606
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v14

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v16

    .line 607
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v18

    move-wide/from16 v10, p2

    invoke-direct/range {v5 .. v18}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 604
    invoke-static {v5}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 608
    invoke-virtual/range {v22 .. v22}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getErrorCode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    move-object/from16 v8, p7

    move-object/from16 v9, v20

    .line 609
    invoke-static/range {v4 .. v9}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    .line 612
    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-static {v4, v5, v6, v0, v1}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static recordBreadcrumb(Ljava/lang/String;)Z
    .locals 1
    .param p0, "breadcrumbName"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "breadcrumbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 851
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 853
    .restart local p1    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    const-string v0, "name"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 823
    .local p2, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 824
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 826
    .restart local p2    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    const-string v0, "name"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    :cond_1
    invoke-static {p0, p2}, Lcom/newrelic/agent/android/NewRelic;->recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 810
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 812
    .restart local p1    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 795
    .local p1, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 796
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 798
    .restart local p1    # "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordHandledException(Ljava/lang/Exception;)Z
    .locals 2
    .param p0, "exceptionToHandle"    # Ljava/lang/Exception;

    .prologue
    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 867
    .local v0, "exceptionAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->recordHandledException(Ljava/lang/Exception;Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method public static recordHandledException(Ljava/lang/Exception;Ljava/util/Map;)Z
    .locals 1
    .param p0, "exceptionToHandle"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "exceptionAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 879
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "exceptionAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 881
    .restart local p1    # "exceptionAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Exception;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 469
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;D)V

    .line 470
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v8, 0x0

    .line 465
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p2

    move-object v9, v8

    invoke-static/range {v1 .. v9}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 466
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDD)V
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D

    .prologue
    .line 448
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-static/range {v1 .. v9}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 449
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D
    .param p7, "countUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;
    .param p8, "valueUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;

    .prologue
    .line 452
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewRelic.recordMeric invoked for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exclusiveValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", countUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", valueUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 455
    const-string v0, "recordMetric: category must not be null. If no MetricCategory is applicable, use MetricCategory.NONE."

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    const-string v0, "recordMetric: name must not be empty."

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "recordMetric: count must not be negative."

    invoke-static {p2, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-static/range {p0 .. p8}, Lcom/newrelic/agent/android/Measurements;->addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static removeAllAttributes()Z
    .locals 1

    .prologue
    .line 766
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAllAttributes()Z

    move-result v0

    return v0
.end method

.method public static removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAttribute(Ljava/lang/String;F)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 714
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAttribute(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 725
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setInteractionName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setRootDisplayName(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static setMaxEventBufferTime(I)V
    .locals 1
    .param p0, "maxBufferTimeInSec"    # I

    .prologue
    .line 900
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventBufferTime(I)V

    .line 901
    return-void
.end method

.method public static setMaxEventPoolSize(I)V
    .locals 1
    .param p0, "maxSize"    # I

    .prologue
    .line 891
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventPoolSize(I)V

    .line 892
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shutdown()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/Shutdown"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 317
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    sget-object v0, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 322
    sput-boolean v2, Lcom/newrelic/agent/android/NewRelic;->started:Z

    .line 325
    :cond_0
    return-void

    .line 321
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 322
    sput-boolean v2, Lcom/newrelic/agent/android/NewRelic;->started:Z

    throw v0
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    const-string v1, "startInteraction: context must be an Activity instance."

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const-string v1, "startInteraction: actionName must be an action/method name."

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;ZZ)V

    .line 377
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "cancelRunningTrace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 396
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "startInteraction: An interaction is already being traced, and invalidateActiveTrace is false. This interaction will not be traced."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startInteraction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v1, "startInteraction: actionName must be an action/method name."

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewRelic.startInteraction invoked. actionName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 351
    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;ZZ)V

    .line 354
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 356
    :goto_0
    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startMethodTrace(Ljava/lang/String;)V
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v0, "startMethodTrace: actionName must be an action/method name."

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/newrelic/agent/android/NewRelic;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/NewRelic;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    sget-boolean v1, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "NewRelic is already running."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 284
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v1}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    :goto_1
    invoke-static {v1}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 285
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    iget v2, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->setLevel(I)V

    .line 287
    invoke-direct {p0}, Lcom/newrelic/agent/android/NewRelic;->isInstrumented()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->init(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 289
    const/4 v1, 0x1

    sput-boolean v1, Lcom/newrelic/agent/android/NewRelic;->started:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Error occurred while starting the New Relic agent!"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v1}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V

    goto :goto_1

    .line 291
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Failed to detect New Relic instrumentation.  Something likely went wrong during your build process and you should visit http://support.newrelic.com."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public usingCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCollectorHost(Ljava/lang/String;)V

    .line 81
    return-object p0
.end method

.method public usingCrashCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCrashCollectorHost(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public usingSsl(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "useSsl"    # Z

    .prologue
    .line 72
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseSsl(Z)V

    .line 73
    return-object p0
.end method

.method public withAnalyticsEvents(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 187
    return-object p0
.end method

.method public withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "buildId"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomBuildIdentifier(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-object p0
.end method

.method public withApplicationFramework(Lcom/newrelic/agent/android/ApplicationPlatform;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "applicationPlatform"    # Lcom/newrelic/agent/android/ApplicationPlatform;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V

    .line 174
    :cond_0
    return-object p0
.end method

.method public withApplicationVersion(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomApplicationVersion(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-object p0
.end method

.method public withBuildIdentifier(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 2
    .param p1, "buildId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/WithBuildIdentifier"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    return-object v0
.end method

.method public withCrashReportingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setReportCrashes(Z)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 135
    :goto_0
    return-object p0

    .line 134
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withDefaultInteractions(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 221
    :goto_0
    return-object p0

    .line 219
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withHttpResponseBodyCaptureEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 150
    :goto_0
    return-object p0

    .line 149
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withInteractionTracing(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 204
    :goto_0
    return-object p0

    .line 202
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withLocationServiceEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseLocationService(Z)V

    .line 96
    return-object p0
.end method

.method public withLogLevel(I)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    .line 119
    return-object p0
.end method

.method public withLoggingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 104
    return-object p0
.end method
