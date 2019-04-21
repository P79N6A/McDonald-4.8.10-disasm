.class public Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsKochava;
.super Ljava/lang/Object;
.source "DataLayerAnalyticsKochava.java"

# interfaces
.implements Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v3, "analytics.DataLayer.kochavaParamsDictionary.kochavaAppId"

    invoke-virtual {p2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "appId":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsKochava;->shouldLimitAdTracking(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v1

    .line 31
    .local v1, "limitAdTracking":Z
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsKochava;->getLogLevel(Lcom/mcdonalds/sdk/services/configuration/Configuration;)I

    move-result v2

    .line 33
    .local v2, "logLevel":I
    new-instance v3, Lcom/kochava/base/Tracker$Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kochava/base/Tracker$Configuration;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v3, v0}, Lcom/kochava/base/Tracker$Configuration;->setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v1}, Lcom/kochava/base/Tracker$Configuration;->setAppLimitAdTracking(Z)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v2}, Lcom/kochava/base/Tracker$Configuration;->setLogLevel(I)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/kochava/base/Tracker;->configure(Lcom/kochava/base/Tracker$Configuration;)V

    .line 37
    return-void
.end method

.method private getLogLevel(Lcom/mcdonalds/sdk/services/configuration/Configuration;)I
    .locals 5
    .param p1, "configuration"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const-string v2, "getLogLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "result":I
    const-string v2, "analytics.DataLayer.kochavaParamsDictionary.enableLogging"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "configValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private shouldLimitAdTracking(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z
    .locals 4
    .param p1, "configuration"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const-string v1, "shouldLimitAdTracking"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string v1, "analytics.DataLayer.kochavaParamsDictionary.limitAdTracking"

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "configValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance v1, Lcom/kochava/base/Tracker$Event;

    invoke-direct {v1, p1}, Lcom/kochava/base/Tracker$Event;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/kochava/base/Tracker$Event;->addCustom(Lorg/json/JSONObject;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    .line 43
    .local v0, "event":Lcom/kochava/base/Tracker$Event;
    invoke-static {v0}, Lcom/kochava/base/Tracker;->sendEvent(Lcom/kochava/base/Tracker$Event;)V

    .line 44
    return-void
.end method
