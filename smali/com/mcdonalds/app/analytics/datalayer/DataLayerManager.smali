.class public Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;
.super Ljava/lang/Object;
.source "DataLayerManager.java"


# static fields
.field private static instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;


# instance fields
.field private analytics:Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;

.field private currentPageSection:Ljava/lang/String;

.field private dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

.field private enabled:Z


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;Z)V
    .locals 0
    .param p1, "dataLayerWrapper"    # Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;
    .param p2, "analytics"    # Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;
    .param p3, "enabled"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    .line 59
    iput-object p2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->analytics:Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;

    .line 60
    iput-boolean p3, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "com.mcdonalds.app.analytics.datalayer.DataLayerManager"

    const-string v1, "getInstance"

    invoke-static {v3, v0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "DLA"

    const-string v1, "DataLayerManager is not initialized. Defaulting to off."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    new-instance v1, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsNoOp;

    invoke-direct {v1}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsNoOp;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;-><init>(Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;Z)V

    sput-object v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    return-object v0
.end method

.method private static getJsonFileName(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/lang/String;
    .locals 5
    .param p0, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.DataLayerManager"

    const-string v2, "getJsonFileName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string v0, "analytics.DataLayer.trackedEvents"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "analytics.DataLayer.trackedEvents"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DLAEvents"

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 15
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const-string v9, "com.mcdonalds.app.analytics.datalayer.DataLayerManager"

    const-string v10, "init"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v13

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-static {v14, v9, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    new-instance v9, Lcom/google/gson/GsonBuilder;

    invoke-direct {v9}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 67
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v8, "trackedEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getJsonFileName(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "jsonFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 71
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const-class v9, Ljava/util/Map;

    instance-of v10, v4, Lcom/google/gson/Gson;

    if-nez v10, :cond_0

    invoke-virtual {v4, v6, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .end local v4    # "gson":Lcom/google/gson/Gson;
    :goto_0
    move-object v0, v9

    check-cast v0, Ljava/util/Map;

    move-object v8, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1
    new-instance v2, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    new-instance v9, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    invoke-direct {v9, v8}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v9}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;-><init>(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;)V

    .line 78
    .local v2, "dataLayerWrapper":Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;
    new-instance v1, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsKochava;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsKochava;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/configuration/Configuration;)V

    .line 79
    .local v1, "analyticsWrapper":Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;
    new-instance v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v10

    invoke-direct {v9, v2, v1, v10}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;-><init>(Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;Z)V

    sput-object v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    .line 81
    sget-object v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setSite(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V

    .line 83
    new-instance v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerLifecycleManager;

    invoke-direct {v9}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerLifecycleManager;-><init>()V

    invoke-virtual {p0, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 87
    .end local v1    # "analyticsWrapper":Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;
    .end local v2    # "dataLayerWrapper":Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;
    .end local v7    # "jsonFileName":Ljava/lang/String;
    .end local v8    # "trackedEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    return-void

    .line 72
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "jsonFileName":Ljava/lang/String;
    .restart local v8    # "trackedEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    check-cast v4, Lcom/google/gson/Gson;

    .end local v4    # "gson":Lcom/google/gson/Gson;
    invoke-static {v4, v6, v9}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    .line 73
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "DLA"

    const-string v10, "Unable to read in events file."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "jsonFileName":Ljava/lang/String;
    .end local v8    # "trackedEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    new-instance v10, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsNoOp;

    invoke-direct {v10}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalyticsNoOp;-><init>()V

    invoke-direct {v9, v14, v10, v13}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;-><init>(Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;Z)V

    sput-object v9, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->instance:Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    goto :goto_2
.end method

.method public static isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z
    .locals 5
    .param p0, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.DataLayerManager"

    const-string v2, "isEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const-string v0, "analytics.DataLayer.enableDataLayerAnalytics"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reportWarning(Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.DataLayerManager"

    const-string v2, "reportWarning"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const-string v0, "DLA"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private setOffers(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "qrCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setOffers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setOffers(Ljava/util/List;Ljava/util/List;)V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnalytics()Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;
    .locals 2

    .prologue
    const-string v0, "getAnalytics"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->analytics:Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;

    return-object v0
.end method

.method public logButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-string v0, "logButtonClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->logButtonClick(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public logItemClick(Ljava/lang/String;I)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "positionTag"    # I

    .prologue
    const-string v0, "logItemClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->logListItemClick(Ljava/lang/String;I)V

    .line 211
    :cond_0
    return-void
.end method

.method public logLifecycleEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const-string v0, "logLifecycleEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->logLifecycleEvent(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public logPageLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    const-string v0, "logPageLoad"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public recordError(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "recordError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public recordError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "recordError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->recordError(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method public reportCurrentPageSection()V
    .locals 2

    .prologue
    const-string v0, "reportCurrentPageSection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->currentPageSection:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setCurrentPageSection(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentPageSection"    # Ljava/lang/String;

    .prologue
    const-string v0, "setCurrentPageSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->currentPageSection:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 3
    .param p1, "formName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setFormName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setFormName(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V

    .line 229
    :cond_0
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v0, "setLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setLocation(Landroid/location/Location;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Ljava/lang/String;)V
    .locals 3
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "qrCode"    # Ljava/lang/String;

    .prologue
    const-string v0, "setOffer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffers(Ljava/util/List;Ljava/util/List;)V

    .line 139
    return-void
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v0, "setOffers"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffers(Ljava/util/List;Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public setPageSection(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    const-string v0, "setPageSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setPageSection(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "setProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setRecipe(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 3
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    const-string v0, "setRecipe"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setRecipe(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;
    .param p4, "numResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setSearchTerm"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setSearchTerm(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 149
    :cond_0
    return-void
.end method

.method public setSite(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 3
    .param p1, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const-string v0, "setSite"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setSite(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "setState"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setStoreFilterToggled(Z)V
    .locals 4
    .param p1, "storeFilterToggled"    # Z

    .prologue
    const-string v0, "setStoreFilterToggled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setStoreFilterToggled(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public setTransaction(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/MenuType;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;
    .param p3, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setTransaction"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setTransaction(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/MenuType;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 161
    :cond_0
    return-void
.end method

.method public setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V
    .locals 3
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "authStatus"    # Ljava/lang/String;
    .param p3, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const-string v0, "setUser"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->dataLayerWrapper:Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 123
    :cond_0
    return-void
.end method
