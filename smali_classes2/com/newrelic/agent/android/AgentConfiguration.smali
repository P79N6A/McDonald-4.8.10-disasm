.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# static fields
.field private static final APP_TOKEN_HEADER:Ljava/lang/String; = "X-App-License-Key"

.field private static final APP_VERSION_HEADER:Ljava/lang/String; = "X-NewRelic-App-Version"

.field private static final DEFAULT_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final DEFAULT_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.newrelic.com"

.field private static final DEVICE_OS_NAME_HEADER:Ljava/lang/String; = "X-NewRelic-OS-Name"

.field private static final HEX_COLLECTOR_PATH:Ljava/lang/String; = "/mobile/f"

.field private static final HEX_COLLECTOR_TIMEOUT:I = 0x1388

.field private static final NUM_IO_THREADS:I = 0x3

.field private static final PAYLOAD_TTL:I = 0xa4cb800


# instance fields
.field private analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

.field private appName:Ljava/lang/String;

.field private applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

.field private applicationPlatformVersion:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private crashCollectorHost:Ljava/lang/String;

.field private crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

.field private customApplicationVersion:Ljava/lang/String;

.field private customBuildId:Ljava/lang/String;

.field private enableAnalyticsEvents:Z

.field private payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/agent/android/payload/PayloadStore",
            "<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation
.end field

.field private reportCrashes:Z

.field private reportHandledExceptions:Z

.field private sessionID:Ljava/lang/String;

.field private useLocationService:Z

.field private useSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 30
    const-string v0, "mobile-crash.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 35
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 36
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    .line 37
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 38
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->provideSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/newrelic/agent/android/payload/NullPayloadStore;

    invoke-direct {v0}, Lcom/newrelic/agent/android/payload/NullPayloadStore;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    .line 46
    sget-object v0, Lcom/newrelic/agent/android/ApplicationPlatform;->Native:Lcom/newrelic/agent/android/ApplicationPlatform;

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 47
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTokenHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "X-App-License-Key"

    return-object v0
.end method

.method public getAppVersionHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "X-NewRelic-App-Version"

    return-object v0
.end method

.method public getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    return-object v0
.end method

.method public getApplicationPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashStore()Lcom/newrelic/agent/android/crash/CrashStore;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    return-object v0
.end method

.method public getCustomApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomBuildIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsNameHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "X-NewRelic-OS-Name"

    return-object v0
.end method

.method public getEnableAnalyticsEvents()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    return v0
.end method

.method public getHexCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->getCollectorHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexCollectorPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "/mobile/f"

    return-object v0
.end method

.method public getHexCollectorTimeout()I
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x1388

    return v0
.end method

.method public getIOThreadSize()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x3

    return v0
.end method

.method public getPayloadStore()Lcom/newrelic/agent/android/payload/PayloadStore;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    return-object v0
.end method

.method public getPayloadTTL()I
    .locals 1

    .prologue
    .line 220
    const v0, 0xa4cb800

    return v0
.end method

.method public getReportCrashes()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return v0
.end method

.method public getReportHandledExceptions()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method protected provideSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAnalyticAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;)V
    .locals 0
    .param p1, "analyticAttributeStore"    # Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .line 127
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V
    .locals 0
    .param p1, "applicationPlatform"    # Lcom/newrelic/agent/android/ApplicationPlatform;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 167
    return-void
.end method

.method public setApplicationPlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationPlatformVersion"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCrashCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashCollectorHost"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCrashStore(Lcom/newrelic/agent/android/crash/CrashStore;)V
    .locals 0
    .param p1, "crashStore"    # Lcom/newrelic/agent/android/crash/CrashStore;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    .line 111
    return-void
.end method

.method public setCustomApplicationVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "customApplicationVersion"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setCustomBuildIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "customBuildId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEnableAnalyticsEvents(Z)V
    .locals 0
    .param p1, "enableAnalyticsEvents"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 135
    return-void
.end method

.method public setPayloadStore(Lcom/newrelic/agent/android/payload/PayloadStore;)V
    .locals 0
    .param p1, "payloadStore"    # Lcom/newrelic/agent/android/payload/PayloadStore;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    .line 217
    return-void
.end method

.method public setReportCrashes(Z)V
    .locals 0
    .param p1, "reportCrashes"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 103
    return-void
.end method

.method public setReportHandledExceptions(Z)V
    .locals 0
    .param p1, "reportHandledExceptions"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    .line 119
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setUseLocationService(Z)V
    .locals 0
    .param p1, "useLocationService"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    .line 95
    return-void
.end method

.method public setUseSsl(Z)V
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 87
    return-void
.end method

.method public useLocationService()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return v0
.end method

.method public useSsl()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
