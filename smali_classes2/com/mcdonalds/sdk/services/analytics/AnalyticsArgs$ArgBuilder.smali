.class public final Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
.super Ljava/lang/Object;
.source "AnalyticsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgBuilder"
.end annotation


# instance fields
.field private args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    return-void
.end method

.method public static getFormattedLocation()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v4, "storeLocator"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 123
    .local v2, "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v1

    .line 124
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 125
    const-string v4, "%f,%f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object v3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method


# virtual methods
.method public addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 3
    .param p1, "cd"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    const-string v2, "DATAKEY_CUSTOM"

    .line 95
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    const-string v2, "DATAKEY_CUSTOM"

    .line 96
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v0, v1

    .line 99
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    const-string v1, "DATAKEY_CUSTOM"

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method

.method public build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "ACTION"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "business"    # Ljava/lang/Object;

    .prologue
    .line 104
    const-string v0, "DATAKEY_BUSINESS"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "CATEGORY"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "a"    # Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;

    .prologue
    .line 138
    const-string v0, "CONVERSION_MASTER"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "custom"    # Ljava/lang/Object;

    .prologue
    .line 90
    const-string v0, "DATAKEY_CUSTOM"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setECommercePromotion(Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 116
    const-string v0, "IMPRESSION"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "JICE"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "LABEL"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-object p0
.end method

.method public setProductList(Ljava/util/List;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v0, "PRODUCT_LIST"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    const-string v0, "DATAKEY_THROWABLE"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionMap(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "transactionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "TRANSACTION_MAP"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Long;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 82
    const-string v0, "VALUE"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "VALUE"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    return-object v0
.end method
