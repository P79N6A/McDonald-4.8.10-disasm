.class Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;
.super Ljava/lang/Object;
.source "GoogleStoreLocatorRequestProvider.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Ljava/util/Map;)V
    .locals 13
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "filtersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;>;"
    const/4 v12, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    .line 24
    .local v7, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    const-string v1, "connectors.Google.storeLocator.baseURL"

    .line 25
    invoke-virtual {v7, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectors.Google.storeLocator.endPoint"

    .line 26
    invoke-virtual {v7, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectors.Google.storeLocator.tables"

    .line 27
    invoke-virtual {v7, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectors.Google.storeLocator.apiMethod"

    .line 28
    invoke-virtual {v7, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connectors.Google.storeLocator.apiKey"

    .line 29
    invoke-virtual {v7, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getMaxResults()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    .line 37
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getStoreIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getStoreIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Google Store Locator does not support queries for multiple stores"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getStoreIds()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->setStore(Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getDistance()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->setArea(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 47
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getFilters()Ljava/util/List;

    move-result-object v10

    .line 49
    .local v10, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 50
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 52
    .local v9, "key":Ljava/lang/String;
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->setFilter(Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;Ljava/lang/Boolean;)V

    .line 49
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-class v0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleStoreLocatorRequestProvider{mAPIBuilder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;->mAPIBuilder:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
