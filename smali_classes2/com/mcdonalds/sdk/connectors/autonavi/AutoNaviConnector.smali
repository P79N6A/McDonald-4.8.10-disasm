.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "AutoNaviConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;


# static fields
.field private static final CONFIG:Ljava/lang/String; = "connectors.AutoNavi.storeLocator"

.field private static final CONFIG_API_KEY:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.apiKey"

.field public static final CONFIG_BACKUP_LOCATION:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.backupUserLocationForKeywordSearch"

.field private static final CONFIG_BASE_URL:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.baseURL"

.field private static final CONFIG_INFO_MISSING_MSG:Ljava/lang/String; = "Configuration missing data needed for Store Locator"

.field private static final CONFIG_MAPS_ENGINE_ENDPOINT:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.endPoint"

.field private static final CONFIG_TABLES_ID:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.tables"

.field public static final CONFIG_USE_KEYWORD_SEARCH:Ljava/lang/String; = "connectors.AutoNavi.storeLocator.keywordSearchWithAPISearch"

.field public static final DEFAULT_SEARCH_LIMIT:I = 0x4b

.field public static final DEFAULT_SEARCH_RADIUS:I = 0xc350

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "autonavi"

.field public static final TOKEN_ALL_STORES:Ljava/lang/String; = "storeLocator.stores"

.field public static final TOKEN_FILTERS:Ljava/lang/String; = "storeLocator.filters"

.field public static final TOKEN_SINGLE_STORE:Ljava/lang/String; = "storeLocator.singleStore"

.field public static final TOKEN_STORES_BY_ID:Ljava/lang/String; = "storeLocator.storesById"

.field public static final URL_FORMAT:Ljava/lang/String; = "{0}/{1}"


# instance fields
.field private mApiBaseUrl:Ljava/lang/String;

.field private mApiIdBaseUrl:Ljava/lang/String;

.field private mApiKey:Ljava/lang/String;

.field private mApiTables:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->init(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 74
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->setBaseUrl()V

    .line 75
    return-void
.end method

.method private getApiFilters(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "apiFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->getFilterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_1
    return-object v0
.end method

.method private getCenter(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;)Ljava/lang/String;
    .locals 11
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 352
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "connectors.AutoNavi.storeLocator.backupUserLocationForKeywordSearch"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "backupLocation":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "lng":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "lat":Ljava/lang/String;
    :goto_0
    const-string v4, "%s,%s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 360
    .end local v1    # "lat":Ljava/lang/String;
    .end local v2    # "lng":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v10, :cond_1

    .line 361
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "location":[Ljava/lang/String;
    aget-object v2, v3, v8

    .line 364
    .restart local v2    # "lng":Ljava/lang/String;
    aget-object v1, v3, v9

    .line 365
    .restart local v1    # "lat":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v1    # "lat":Ljava/lang/String;
    .end local v2    # "lng":Ljava/lang/String;
    .end local v3    # "location":[Ljava/lang/String;
    :cond_1
    const-string v2, "0.0"

    .line 367
    .restart local v2    # "lng":Ljava/lang/String;
    const-string v1, "0.0"

    .restart local v1    # "lat":Ljava/lang/String;
    goto :goto_0
.end method

.method private isConfigured()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiTables:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .param p3, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 237
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.AutoNavi.storeLocator.keywordSearchWithAPISearch"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 239
    .local v1, "shouldUseApiSearch":Z
    if-eqz v1, :cond_0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoresByKeywordSearchString(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 251
    .end local v1    # "shouldUseApiSearch":Z
    :goto_0
    return-void

    .line 242
    .restart local v1    # "shouldUseApiSearch":Z
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoresByGeocodeSearchString(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0

    .line 244
    .end local v1    # "shouldUseApiSearch":Z
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoresByLocation(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mcdonalds/sdk/R$string;->invalid_parameters_for_store_search:I

    .line 248
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "exception":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v2, 0x0

    invoke-interface {p2, v2, p3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method private requestStoresByGeocodeSearchString(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .param p3, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "geocodeSearch":Lcom/amap/api/services/geocoder/GeocodeSearch;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;-><init>(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    .line 337
    new-instance v1, Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/geocoder/GeocodeQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v1, "query":Lcom/amap/api/services/geocoder/GeocodeQuery;
    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 339
    return-void
.end method

.method private requestStoresByKeywordSearchString(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 9
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .param p3, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getCenter(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "center":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "keywords":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiBaseUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiTables:Ljava/lang/String;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiKey:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, "builder":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    const-string v6, "around"

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setMethod(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 287
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setCenter(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 288
    const/16 v6, 0x4b

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setLimit(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 289
    const v6, 0xc350

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setRadius(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 290
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setKeywords(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 292
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getApiFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 294
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setFilters(Ljava/util/List;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 297
    :cond_0
    new-instance v5, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;

    invoke-direct {v5, p3, p2}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 298
    .local v5, "responseListener":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;
    new-instance v4, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->build()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, "request":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 301
    return-void
.end method

.method private requestStoresByLocation(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 9
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .param p3, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const-string v5, "%s,%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 259
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 256
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "center":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiBaseUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiTables:Ljava/lang/String;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiKey:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v0, "builder":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    const-string v5, "around"

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setMethod(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 264
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setCenter(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 265
    const/16 v5, 0x4b

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setLimit(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 266
    const v5, 0xc350

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setRadius(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 268
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getFilters()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getApiFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setFilters(Ljava/util/List;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 273
    :cond_0
    new-instance v4, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;

    invoke-direct {v4, p3, p2}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 274
    .local v4, "responseListener":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "request":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 277
    return-void
.end method

.method private setBaseUrl()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    .line 81
    .local v1, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v3, "connectors.AutoNavi.storeLocator.baseURL"

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "base":Ljava/lang/String;
    const-string v3, "connectors.AutoNavi.storeLocator.endPoint"

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "endpoint":Ljava/lang/String;
    const-string v3, "connectors.AutoNavi.storeLocator.tables"

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiTables:Ljava/lang/String;

    .line 85
    const-string v3, "connectors.AutoNavi.storeLocator.apiKey"

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiKey:Ljava/lang/String;

    .line 86
    const-string v3, "{0}/{1}"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiBaseUrl:Ljava/lang/String;

    .line 87
    const-string v3, "{0}/{1}"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v5, "datamanage/data/"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiIdBaseUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 2
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Configuration missing data needed for Store Locator"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "exception":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 230
    return-void
.end method


# virtual methods
.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 208
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDeliveryStore is not supported in AutoNavi"

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .param p4, "isNormalOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 220
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDeliveryStore is not supported in AutoNavi"

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "storeLocator.filters"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->getFilters()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 199
    return-object v0
.end method

.method public requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v3, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "storeLocator.singleStore"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->isConfigured()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    new-instance v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiIdBaseUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiTables:Ljava/lang/String;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->mApiKey:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "builder":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    const-string v4, "list"

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setMethod(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 134
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->setId(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;

    .line 136
    new-instance v2, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;

    invoke-direct {v2, v3, p2}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 137
    .local v2, "responseListener":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->build()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 146
    .end local v0    # "builder":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .end local v1    # "request":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;
    .end local v2    # "responseListener":Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;
    :goto_0
    return-object v3

    .line 143
    :cond_0
    invoke-direct {p0, p2, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "storeLocator.stores"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v4, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v5, "storeLocator.storesById"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 155
    .local v4, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->isConfigured()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5, p2}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 159
    .local v0, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 160
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "storeId":Ljava/lang/String;
    new-instance v5, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;Lcom/mcdonalds/sdk/AsyncCounter;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "storeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 190
    :cond_1
    return-object v4
.end method
