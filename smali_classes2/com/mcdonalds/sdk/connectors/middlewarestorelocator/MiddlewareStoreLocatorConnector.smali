.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "MiddlewareStoreLocatorConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER_STRING:Ljava/lang/String; = "Accept-Language"

.field private static final CONFIG_API_KEY:Ljava/lang/String;

.field private static final CONFIG_BASE_URL:Ljava/lang/String;

.field private static final CONFIG_DISTANCE:Ljava/lang/String; = "modules.storeLocator.defaultSearchRadius"

.field private static final CONFIG_ENDPOINT_URL:Ljava/lang/String;

.field private static final CONFIG_HEADER_MARKET_ID:Ljava/lang/String;

.field private static final CONFIG_INFO_MISSING_MSG:Ljava/lang/String; = "Configuration missing data needed for Store Locator"

.field private static final CONFIG_LOCALE:Ljava/lang/String;

.field private static final CONFIG_MARKET_ID:Ljava/lang/String;

.field private static final CONFIG_RESULT_SIZE:Ljava/lang/String;

.field private static final CONFIG_STORE_ID_TYPE:Ljava/lang/String;

.field private static final CONFIG_STORE_SEARCH_LANG:Ljava/lang/String;

.field public static final FILTER_CURRENT_LANGUAGE:Ljava/lang/String; = "FILTER_CURRENT_LANGUAGE"

.field private static final HEADER_MARKET_ID:Ljava/lang/String; = "MarketId"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MIN_STORE_ID_DIGIT:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.minStoreIdDigit"

.field public static final NAME:Ljava/lang/String; = "middlewarestorelocator"

.field private static final NEW_CONFIG:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator"

.field private static final OLD_CONFIG:Ljava/lang/String; = "connectors.MWStoreLocator.storeLocator"

.field private static final STORE_LOCATOR_CONNECTOR:Ljava/lang/String; = "modules.storeLocator.connector"

.field public static final TOKEN_ALL_STORES:Ljava/lang/String; = "storeLocator.stores"

.field public static final TOKEN_FILTERS:Ljava/lang/String; = "storeLocator.filters"

.field public static final TOKEN_SINGLE_STORE:Ljava/lang/String; = "storeLocator.singleStore"

.field public static final TOKEN_STORES_BY_ID:Ljava/lang/String; = "storeLocator.storesById"

.field public static final URL_FORMAT:Ljava/lang/String; = "{0}/{1}"


# instance fields
.field private mApiBaseUrl:Ljava/lang/String;

.field private mApiKey:Ljava/lang/String;

.field private mDistance:D

.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFiltersListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFiltersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGettingFilters:Z

.field private mLocale:Ljava/lang/String;

.field private mMarket:Ljava/lang/String;

.field private mResultSize:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".baseUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_BASE_URL:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".endpoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_ENDPOINT_URL:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mcd_apikey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_API_KEY:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".marketId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_MARKET_ID:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".headerMarketId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_HEADER_MARKET_ID:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".languageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_LOCALE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".defaultResultSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_RESULT_SIZE:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".storeIdType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_STORE_ID_TYPE:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".useDeviceLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_STORE_SEARCH_LANG:Ljava/lang/String;

    .line 74
    const-class v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mIsGettingFilters:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersListeners:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->setContext(Landroid/content/Context;)V

    .line 104
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 105
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->setBaseUrl()V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->init(Ljava/util/HashMap;)V

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)V

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private static CONFIG()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const-string v1, "connectors.MiddlewareStoreLocator.storeLocator"

    .line 91
    .local v1, "retString":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.storeLocator.connector"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "connector":Ljava/lang/String;
    const-string v2, "MWStoreLocator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v1, "connectors.MWStoreLocator.storeLocator"

    .line 96
    :cond_0
    return-object v1
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mIsGettingFilters:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFilters:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getApiFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getApiFilters(Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 413
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "apiFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 416
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 417
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 419
    .local v2, "filter":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, "attribute":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "attribute":Ljava/lang/String;
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_1
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$7;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$7;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)V

    invoke-virtual {p0, v5}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 435
    :cond_2
    return-object v0
.end method

.method private isConfigured()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBaseUrl()V
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    .line 124
    .local v1, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "base":Ljava/lang/String;
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_ENDPOINT_URL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "endpoint":Ljava/lang/String;
    const-string v3, "{0}/{1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiBaseUrl:Ljava/lang/String;

    .line 128
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_API_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiKey:Ljava/lang/String;

    .line 129
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_MARKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mMarket:Ljava/lang/String;

    .line 130
    const-string v3, "modules.storeLocator.defaultSearchRadius"

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mDistance:D

    .line 131
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_RESULT_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mResultSize:D

    .line 132
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_LOCALE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mLocale:Ljava/lang/String;

    .line 133
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
    .line 440
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Configuration missing data needed for Store Locator"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "exception":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 442
    return-void
.end method


# virtual methods
.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 400
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 407
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 14
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
    .line 303
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v8, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v10, "storeLocator.filters"

    invoke-direct {v8, v10}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 305
    .local v8, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v10

    const-string v11, "FILTER_CURRENT_LANGUAGE"

    new-instance v12, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$5;

    invoke-direct {v12, p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$5;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)V

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    .local v4, "languageResponse":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFilters:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFilters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 308
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFilters:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {p1, v10, v8, v11}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 395
    :cond_0
    :goto_0
    return-object v8

    .line 311
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v10

    const-string v11, "FILTER_CURRENT_LANGUAGE"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v1, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 313
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-boolean v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mIsGettingFilters:Z

    if-nez v10, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->isConfigured()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 321
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_BASE_URL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/restaurant/location/marketAttributes?market="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mMarket:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "url":Ljava/lang/String;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesResponseListener;

    new-instance v10, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;

    invoke-direct {v10, p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)V

    invoke-direct {v7, v10}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 368
    .local v7, "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesResponseListener;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;

    invoke-direct {v6, v9}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;-><init>(Ljava/lang/String;)V

    .line 369
    .local v6, "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;
    const-string v10, "mcd_apikey"

    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_HEADER_MARKET_ID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 371
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_HEADER_MARKET_ID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "headerMarketId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 373
    const-string v10, "MarketId"

    invoke-virtual {v6, v10, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v3    # "headerMarketId":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v10, "Accept-Language"

    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mLocale:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mIsGettingFilters:Z

    .line 382
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_0

    .line 376
    :cond_3
    const-string v10, "MarketId"

    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mMarket:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v6    # "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;
    .end local v7    # "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesResponseListener;
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v10, "Configuration missing data needed for Store Locator"

    invoke-direct {v2, v10}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "exception":Lcom/mcdonalds/sdk/AsyncException;
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/AsyncListener;

    .line 389
    .local v5, "listenerItem":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v11, 0x0

    invoke-interface {v5, v11, v8, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_2

    .line 391
    .end local v5    # "listenerItem":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mFiltersListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 392
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mIsGettingFilters:Z

    goto/16 :goto_0
.end method

.method public requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 16
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
    .line 224
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v10, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v11, "storeLocator.singleStore"

    invoke-direct {v10, v11}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 226
    .local v10, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->isConfigured()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mResultSize:D

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v8, v12

    .line 229
    .local v8, "resultSize":I
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiBaseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mMarket:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mLocale:Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13, v8}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    .local v2, "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v12, "connectors.MiddlewareStoreLocator.storeLocator.minStoreIdDigit"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v5

    .line 233
    .local v5, "minStoreIdDigit":I
    if-lez v5, :cond_0

    .line 235
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 236
    .local v4, "i":I
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 237
    .local v3, "f":Ljava/util/Formatter;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v3, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 238
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 244
    .end local v3    # "f":Ljava/util/Formatter;
    .end local v4    # "i":I
    :cond_0
    :goto_0
    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreId:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    move-object/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_STORE_ID_TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 247
    .local v9, "storeIdType":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 248
    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreIdType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-virtual {v2, v11, v9}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;Ljava/lang/String;)V

    .line 253
    :goto_1
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;

    move-object/from16 v0, p2

    invoke-direct {v7, v10, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 254
    .local v7, "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->build()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v6, "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 263
    .end local v2    # "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .end local v5    # "minStoreIdDigit":I
    .end local v6    # "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;
    .end local v7    # "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;
    .end local v8    # "resultSize":I
    .end local v9    # "storeIdType":Ljava/lang/String;
    :goto_2
    return-object v10

    .line 250
    .restart local v2    # "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .restart local v5    # "minStoreIdDigit":I
    .restart local v8    # "resultSize":I
    .restart local v9    # "storeIdType":Ljava/lang/String;
    :cond_1
    sget-object v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreIdType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v12, "NatlStrNumber"

    invoke-virtual {v2, v11, v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v2    # "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .end local v5    # "minStoreIdDigit":I
    .end local v8    # "resultSize":I
    .end local v9    # "storeIdType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_2

    .line 239
    .restart local v2    # "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .restart local v5    # "minStoreIdDigit":I
    .restart local v8    # "resultSize":I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 22
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
    .line 137
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v19, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v6, "storeLocator.stores"

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 139
    .local v19, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->isConfigured()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mDistance:D

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    double-to-int v10, v6

    .line 146
    .local v10, "distance":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mResultSize:D

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    move/from16 v18, v0

    .line 147
    .local v18, "resultSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mLocale:Ljava/lang/String;

    .line 148
    .local v14, "locale":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->CONFIG_STORE_SEARCH_LANG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mLocale:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "arr":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 151
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "language":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 155
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mApiBaseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->mMarket:Ljava/lang/String;

    move/from16 v0, v18

    invoke-direct {v5, v6, v7, v14, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    .local v5, "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {v5 .. v10}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->searchByDistance(DDI)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getFilters()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getApiFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 160
    .local v12, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 161
    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->setAttributes(Ljava/util/List;)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;

    .line 164
    :cond_1
    new-instance v17, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;-><init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 165
    .local v17, "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->setOriginalLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 167
    new-instance v16, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->build()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v16, "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 219
    .end local v5    # "builder":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .end local v10    # "distance":I
    .end local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "locale":Ljava/lang/String;
    .end local v16    # "request":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;
    .end local v17    # "responseListener":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;
    .end local v18    # "resultSize":I
    :goto_0
    return-object v19

    .line 174
    :cond_2
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v6

    if-nez v6, :cond_3

    .line 176
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMockLocation()Landroid/location/Location;

    move-result-object v15

    .line 189
    .local v15, "mockLocation":Landroid/location/Location;
    if-nez v15, :cond_5

    .line 190
    new-instance v11, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;

    invoke-direct {v11}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;-><init>()V

    .line 191
    .local v11, "asyncTask":Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    aput-object v8, v6, v7

    instance-of v7, v11, Landroid/os/AsyncTask;

    if-nez v7, :cond_4

    invoke-virtual {v11, v6}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    check-cast v11, Landroid/os/AsyncTask;

    .end local v11    # "asyncTask":Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;
    invoke-static {v11, v6}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 207
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setSearchString(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 209
    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 210
    invoke-virtual/range {p0 .. p2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 216
    .end local v15    # "mockLocation":Landroid/location/Location;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto/16 :goto_0
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
    .line 269
    .local p1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v3, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "storeLocator.storesById"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "token":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->isConfigured()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4, p2}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 274
    .local v0, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;-><init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 289
    .local v2, "singleStoreListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 295
    .end local v0    # "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "singleStoreListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    :cond_0
    invoke-direct {p0, p2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->throwNoConfigurationException(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 298
    :cond_1
    return-object v3
.end method
