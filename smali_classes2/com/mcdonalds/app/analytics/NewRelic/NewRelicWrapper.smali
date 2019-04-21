.class public Lcom/mcdonalds/app/analytics/NewRelic/NewRelicWrapper;
.super Ljava/lang/Object;
.source "NewRelicWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startNewRelic(Landroid/app/Application;)V
    .locals 7
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.analytics.NewRelic.NewRelicWrapper"

    const-string v4, "startNewRelic"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "analytics.NewRelic.appToken"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    .local v0, "appToken":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 19
    const-string v1, ""

    .line 20
    .local v1, "newRelicTag":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.Middleware.marketId"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.Middleware.marketId"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newRelicTag":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 23
    .restart local v1    # "newRelicTag":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4.8.10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/newrelic/agent/android/NewRelic;->withBuildIdentifier(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 27
    .end local v1    # "newRelicTag":Ljava/lang/String;
    :cond_1
    return-void
.end method
