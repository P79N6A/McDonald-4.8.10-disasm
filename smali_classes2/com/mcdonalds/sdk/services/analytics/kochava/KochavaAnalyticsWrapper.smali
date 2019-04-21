.class public Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "KochavaAnalyticsWrapper.java"


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "analytics.Kochava.appId"

.field public static final CONFIG_KEY:Ljava/lang/String; = "Kochava"

.field public static final ENABLED_KEY:Ljava/lang/String; = "analytics.Kochava.enabled"


# instance fields
.field private mInitialized:Z

.field private final mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mInitialized:Z

    .line 38
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "analytics.Kochava.enabled"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mIsEnabled:Z

    .line 39
    return-void
.end method

.method private logBusiness(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v2, "eventValue"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "eventValue"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "value":Ljava/lang/String;
    :goto_1
    const-string v2, "eventTitle"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "Kochava"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Business: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "eventTitle"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "eventValue"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 125
    .local v0, "json":Lorg/json/JSONObject;
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "json":Lorg/json/JSONObject;
    .restart local v1    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "json":Lorg/json/JSONObject;
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "json":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private logEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 83
    const-string v2, "DATAKEY_BUSINESS"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 85
    .local v0, "businessArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 86
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "Event"

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "Kochava"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->logBusiness(Ljava/util/Map;)V

    .line 90
    return-void

    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    move-object v2, v1

    .line 86
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_1
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private logScreenLoad(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 78
    const-string v1, "Screen"

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "Kochava"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACTION"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private logTransaction(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 9
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 93
    const-string v5, "TRANSACTION_MAP"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 94
    .local v0, "businessArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "transactionProducts"

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 97
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "Transaction"

    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v6, v5}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v6, "Kochava"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, "transactionId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "transactionId":Ljava/lang/String;
    const-string v5, "PRODUCT_LIST"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 103
    .local v3, "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 104
    .local v2, "prod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "transactionId"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "CATEGORY"

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 107
    .restart local v1    # "json":Lorg/json/JSONObject;
    const-string v7, "Product"

    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v7, v5}, Lcom/kochava/base/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v7, "Kochava"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Product"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2    # "prod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "transactionId":Ljava/lang/String;
    :cond_0
    move-object v5, v1

    .line 97
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    move-object v5, v1

    .line 98
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .restart local v2    # "prod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v4    # "transactionId":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    .line 107
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v1

    .line 108
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 111
    .end local v2    # "prod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 44
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mInitialized:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mIsEnabled:Z

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "analytics.Kochava.appId"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Lcom/kochava/base/Tracker$Configuration;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kochava/base/Tracker$Configuration;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/kochava/base/Tracker$Configuration;->setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v1

    const/4 v2, 0x3

    .line 50
    invoke-virtual {v1, v2}, Lcom/kochava/base/Tracker$Configuration;->setLogLevel(I)Lcom/kochava/base/Tracker$Configuration;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/kochava/base/Tracker;->configure(Lcom/kochava/base/Tracker$Configuration;)V

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mInitialized:Z

    .line 55
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 2
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->logScreenLoad(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->logEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;->logTransaction(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
