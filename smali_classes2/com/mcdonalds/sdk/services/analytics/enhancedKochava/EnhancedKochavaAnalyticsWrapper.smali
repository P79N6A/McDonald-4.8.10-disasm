.class public Lcom/mcdonalds/sdk/services/analytics/enhancedKochava/EnhancedKochavaAnalyticsWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "EnhancedKochavaAnalyticsWrapper.java"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "EnhancedKochava"

.field public static final KEY_ENABLED:Ljava/lang/String; = "analytics.EnhancedKochava.enabled"

.field private static final KEY_MARKET_ID:Ljava/lang/String; = "analytics.EnhancedKochava.marketId"

.field private static final KEY_NULL:Ljava/lang/String; = "null"

.field private static final KEY_PARAMS_DICTIONARY_APP_ID:Ljava/lang/String; = "analytics.EnhancedKochava.paramsDictionary.kochavaAppId"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/enhancedKochava/EnhancedKochavaAnalyticsWrapper;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getMarketId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "analytics.EnhancedKochava.marketId"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "analytics.EnhancedKochava.paramsDictionary.kochavaAppId"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Lcom/kochava/base/Tracker$Configuration;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/enhancedKochava/EnhancedKochavaAnalyticsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kochava/base/Tracker$Configuration;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/kochava/base/Tracker$Configuration;->setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v1

    const/4 v2, 0x3

    .line 38
    invoke-virtual {v1, v2}, Lcom/kochava/base/Tracker$Configuration;->setLogLevel(I)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/kochava/base/Tracker;->configure(Lcom/kochava/base/Tracker$Configuration;)V

    .line 40
    return-void
.end method

.method public log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 4
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 44
    const-string v3, "LABEL"

    invoke-virtual {p2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "eventName":Ljava/lang/String;
    const-string v3, "VALUE"

    invoke-virtual {p2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "eventValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 48
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 49
    .local v2, "json":Lorg/json/JSONObject;
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    invoke-static {v0, v1}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    return-void

    .line 49
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_3
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "json":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method
