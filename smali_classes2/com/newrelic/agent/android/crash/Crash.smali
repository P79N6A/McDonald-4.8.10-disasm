.class public Lcom/newrelic/agent/android/crash/Crash;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "Crash.java"


# static fields
.field public static final MAX_UPLOAD_COUNT:I = 0x3

.field public static final PROTOCOL_VERSION:I = 0x1


# instance fields
.field private activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

.field private analyticsEnabled:Z

.field private final appToken:Ljava/lang/String;

.field private applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

.field private final buildId:Ljava/lang/String;

.field private deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

.field private events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

.field private sessionAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J

.field private uploadCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/newrelic/agent/android/crash/Crash;-><init>(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Collection;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Collection;Z)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p4, "analyticsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    .local p3, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 76
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    .line 78
    .local v0, "agentImpl":Lcom/newrelic/agent/android/AgentImpl;
    invoke-static {p1}, Lcom/newrelic/agent/android/crash/Crash;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 80
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->uuid:Ljava/util/UUID;

    .line 81
    invoke-static {}, Lcom/newrelic/agent/android/crash/Crash;->getBuildId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->buildId:Ljava/lang/String;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/newrelic/agent/android/crash/Crash;->timestamp:J

    .line 83
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->getInstance()Lcom/newrelic/agent/android/crash/CrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/crash/CrashReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->appToken:Ljava/lang/String;

    .line 84
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v3

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;-><init>(Lcom/newrelic/agent/android/harvest/DeviceInformation;Lcom/newrelic/agent/android/harvest/EnvironmentInformation;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    .line 85
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    .line 86
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-direct {v2, v1}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    .line 87
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->extractThreads(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->threads:Ljava/util/List;

    .line 88
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityHistory()Lcom/newrelic/agent/android/harvest/ActivityHistory;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    .line 89
    iput-object p2, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    .line 90
    iput-object p3, p0, Lcom/newrelic/agent/android/crash/Crash;->events:Ljava/util/Collection;

    .line 91
    iput-boolean p4, p0, Lcom/newrelic/agent/android/crash/Crash;->analyticsEnabled:Z

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;J)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "buildId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    .line 56
    .local v0, "agentImpl":Lcom/newrelic/agent/android/AgentImpl;
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/Crash;->uuid:Ljava/util/UUID;

    .line 57
    iput-object p2, p0, Lcom/newrelic/agent/android/crash/Crash;->buildId:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lcom/newrelic/agent/android/crash/Crash;->timestamp:J

    .line 59
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->getInstance()Lcom/newrelic/agent/android/crash/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/crash/CrashReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->appToken:Ljava/lang/String;

    .line 60
    new-instance v1, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v2

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;-><init>(Lcom/newrelic/agent/android/harvest/DeviceInformation;Lcom/newrelic/agent/android/harvest/EnvironmentInformation;)V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    .line 61
    new-instance v1, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    .line 62
    new-instance v1, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->threads:Ljava/util/List;

    .line 64
    new-instance v1, Lcom/newrelic/agent/android/harvest/ActivityHistory;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/newrelic/agent/android/harvest/ActivityHistory;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/crash/Crash;->events:Ljava/util/Collection;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newrelic/agent/android/crash/Crash;->analyticsEnabled:Z

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    .line 69
    return-void
.end method

.method public static crashFromJsonString(Ljava/lang/String;)Lcom/newrelic/agent/android/crash/Crash;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v9, Lcom/newrelic/com/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/newrelic/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v9, p0}, Lcom/newrelic/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    .line 172
    .local v3, "element":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v2

    .line 174
    .local v2, "crashObject":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v9, "uuid"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "uuid":Ljava/lang/String;
    const-string v9, "buildId"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "buildIdentifier":Ljava/lang/String;
    const-string v9, "timestamp"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    .line 178
    .local v6, "timestamp":J
    new-instance v1, Lcom/newrelic/agent/android/crash/Crash;

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v1, v9, v0, v6, v7}, Lcom/newrelic/agent/android/crash/Crash;-><init>(Ljava/util/UUID;Ljava/lang/String;J)V

    .line 180
    .local v1, "crash":Lcom/newrelic/agent/android/crash/Crash;
    const-string v9, "deviceInfo"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/newrelic/agent/android/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    .line 181
    const-string v9, "appInfo"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/newrelic/agent/android/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    .line 182
    const-string v9, "exception"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/newrelic/agent/android/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    .line 183
    const-string v9, "threads"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->newListFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v1, Lcom/newrelic/agent/android/crash/Crash;->threads:Ljava/util/List;

    .line 184
    const-string v9, "activityHistory"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/harvest/ActivityHistory;->newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Lcom/newrelic/agent/android/harvest/ActivityHistory;

    move-result-object v9

    iput-object v9, v1, Lcom/newrelic/agent/android/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    .line 185
    const-string v9, "sessionAttributes"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "analyticsEvents"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v1, Lcom/newrelic/agent/android/crash/Crash;->analyticsEnabled:Z

    .line 187
    const-string v9, "sessionAttributes"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 188
    const-string v9, "sessionAttributes"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Ljava/util/Set;

    move-result-object v5

    .line 189
    .local v5, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-virtual {v1, v5}, Lcom/newrelic/agent/android/crash/Crash;->setSessionAttributes(Ljava/util/Set;)V

    .line 192
    .end local v5    # "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :cond_1
    const-string v9, "analyticsEvents"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 193
    const-string v9, "analyticsEvents"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Ljava/util/Collection;

    move-result-object v4

    .line 194
    .local v4, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    invoke-virtual {v1, v4}, Lcom/newrelic/agent/android/crash/Crash;->setAnalyticsEvents(Ljava/util/Collection;)V

    .line 197
    .end local v4    # "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    :cond_2
    const-string v9, "uploadCount"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 198
    const-string v9, "uploadCount"

    invoke-virtual {v2, v9}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/com/google/gson/JsonElement;->getAsInt()I

    move-result v9

    iput v9, v1, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    .line 201
    :cond_3
    return-object v1

    .line 185
    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    const-string v0, "6243fbe4-fc89-4c32-b5a7-cff154491f35"

    return-object v0
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    if-eqz p0, :cond_2

    .line 207
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 209
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 222
    .end local v0    # "cause":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v0}, Lcom/newrelic/agent/android/crash/Crash;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 215
    .end local v0    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 217
    .restart local v1    # "e":Ljava/lang/Exception;
    if-nez p0, :cond_0

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance p0, Ljava/lang/Throwable;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    const-string v2, "Unknown cause"

    invoke-direct {p0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 10

    .prologue
    .line 130
    new-instance v2, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 132
    .local v2, "data":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v6, "protocolVersion"

    new-instance v7, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 133
    const-string v6, "platform"

    new-instance v7, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v8, "Android"

    invoke-direct {v7, v8}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 134
    const-string v6, "uuid"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->uuid:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 135
    const-string v6, "buildId"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->buildId:Ljava/lang/String;

    invoke-static {v7}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 136
    const-string v6, "timestamp"

    iget-wide v8, p0, Lcom/newrelic/agent/android/crash/Crash;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 137
    const-string v6, "appToken"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->appToken:Ljava/lang/String;

    invoke-static {v7}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 138
    const-string v6, "deviceInfo"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 139
    const-string v6, "appInfo"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 140
    const-string v6, "exception"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 141
    const-string v6, "threads"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/crash/Crash;->getThreadsAsJson()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 142
    const-string v6, "activityHistory"

    iget-object v7, p0, Lcom/newrelic/agent/android/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/ActivityHistory;->asJsonArrayWithoutDuration()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 145
    new-instance v1, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 146
    .local v1, "attributeObject":Lcom/newrelic/com/google/gson/JsonObject;
    iget-object v6, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 148
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 151
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    const-string v6, "sessionAttributes"

    invoke-virtual {v2, v6, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 154
    new-instance v5, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 155
    .local v5, "eventArray":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v6, p0, Lcom/newrelic/agent/android/crash/Crash;->events:Ljava/util/Collection;

    if-eqz v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/newrelic/agent/android/crash/Crash;->events:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    .line 157
    .local v4, "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_1

    .line 160
    .end local v4    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    :cond_1
    const-string v6, "analyticsEvents"

    invoke-virtual {v2, v6, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 162
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v3

    .line 163
    .local v3, "dataToken":Lcom/newrelic/agent/android/harvest/DataToken;
    if-eqz v3, :cond_2

    .line 164
    const-string v6, "dataToken"

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/DataToken;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 167
    :cond_2
    return-object v2
.end method

.method public getExceptionInfo()Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    return-object v0
.end method

.method public getSessionAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    return-object v0
.end method

.method protected getThreadsAsJson()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 228
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->threads:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/newrelic/agent/android/crash/Crash;->threads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;

    .line 230
    .local v1, "thread":Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 234
    .end local v1    # "thread":Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;
    :cond_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/newrelic/agent/android/crash/Crash;->timestamp:J

    return-wide v0
.end method

.method public getUploadCount()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/Crash;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public incrementUploadCount()V
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    .line 239
    return-void
.end method

.method public isStale()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/newrelic/agent/android/crash/Crash;->uploadCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnalyticsEvents(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/Crash;->events:Ljava/util/Collection;

    .line 126
    return-void
.end method

.method public setSessionAttributes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/Crash;->sessionAttributes:Ljava/util/Set;

    .line 118
    return-void
.end method
