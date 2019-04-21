.class public Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "MiddlewareConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;
.implements Lcom/mcdonalds/sdk/connectors/CustomerConnector;
.implements Lcom/mcdonalds/sdk/connectors/NutritionConnector;
.implements Lcom/mcdonalds/sdk/connectors/OffersConnector;
.implements Lcom/mcdonalds/sdk/connectors/OrderingConnector;
.implements Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;


# static fields
.field public static final CONFIG_BASE_API_KEYS_PATH:Ljava/lang/String; = "connectors.Middleware.requestMcdApiKeys"

.field public static final CONFIG_BASE_PATH:Ljava/lang/String; = "connectors.Middleware"

.field public static final CONFIG_BASE_VERSION_PATH:Ljava/lang/String; = "connectors.Middleware.requestVersions"

.field public static final CONFIG_DEFAULT_VERSION:Ljava/lang/String; = "connectors.Middleware.defaultRequestVersion"

.field public static final CONFIG_HEADER_API_KEY:Ljava/lang/String; = "mcd_apikey"

.field public static final CONFIG_HEADER_GUEST_API_KEY:Ljava/lang/String; = "guest_mcd_apikey"

.field public static final NAME:Ljava/lang/String; = "middleware"


# instance fields
.field private mConfigurationConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

.field private mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

.field private mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

.field private mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

.field private mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

.field private mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field private mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

.field private final mUseDCS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->setContext(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 103
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 106
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 107
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 108
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "connectors.Middleware.DCSSecurity"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mUseDCS:Z

    .line 109
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mUseDCS:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 114
    :goto_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 115
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    .line 116
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mConfigurationConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    goto :goto_0
.end method

.method public static getApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectors.Middleware.requestMcdApiKeys."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mcd_apikey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGuestApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectors.Middleware.requestMcdApiKeys."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "guest_mcd_apikey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURLStringForEndpoint(Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "methodType"    # Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Middleware.baseUrl"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "lastChar":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_0
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getVersion(Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "version":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^/"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "endpoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.Middleware.baseUrl"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "methodType"    # Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector$1;->$SwitchMap$com$mcdonalds$sdk$services$network$RequestProvider$MethodType:[I

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 165
    const-string v1, "GET"

    .line 169
    .local v1, "method":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectors.Middleware.requestVersions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "version":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Middleware.defaultRequestVersion"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "defaultVersion":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Middleware.defaultRequestVersion"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_0
    :goto_1
    return-object v2

    .line 156
    .end local v0    # "defaultVersion":Ljava/lang/String;
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_0
    const-string v1, "POST"

    .line 157
    .restart local v1    # "method":Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v1    # "method":Ljava/lang/String;
    :pswitch_1
    const-string v1, "PUT"

    .line 160
    .restart local v1    # "method":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v1    # "method":Ljava/lang/String;
    :pswitch_2
    const-string v1, "DELETE"

    .line 163
    .restart local v1    # "method":Ljava/lang/String;
    goto :goto_0

    .line 175
    .restart local v0    # "defaultVersion":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 434
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
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
    .line 316
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "favoriteName"    # Ljava/lang/String;
    .param p4, "isProduct"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 398
    .local p3, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public archiveOffer(Ljava/lang/Integer;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "offerId"    # Ljava/lang/Integer;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 532
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->archiveOffer(Ljava/lang/Integer;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public associateDevice(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "deviceToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 368
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->associateDevice(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public balanceMergeTransfer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Object;Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "sourceECard"    # Ljava/lang/Object;
    .param p3, "destinationECard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 726
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 727
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public cancelPayment(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 762
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 763
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 229
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "storeId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Landroid/location/Location;",
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
    .line 595
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public checkin(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "checkinData"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 606
    .local p4, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkin(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 611
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 636
    .local p4, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public configureAutoReload(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILjava/lang/Object;Ljava/lang/Object;DDLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "sourceCardId"    # I
    .param p3, "destinationCard"    # Ljava/lang/Object;
    .param p4, "autoReloadType"    # Ljava/lang/Object;
    .param p5, "autoReloadAmount"    # D
    .param p7, "thresholdAmount"    # D
    .param p9, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 738
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p9, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 739
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createNewOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
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
    .line 321
    .local p1, "favoriteLocationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 403
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "cancellationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public eArchCardPurchase(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/PaymentCard;Ljava/lang/String;DLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .param p3, "cardName"    # Ljava/lang/String;
    .param p4, "amount"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            "Ljava/lang/String;",
            "D",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;>;"
    const/4 v2, 0x0

    .line 720
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p6, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 721
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public eArchCardTenderAmounts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 714
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 715
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public enquireBalance(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "customerPaymentId"    # I
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 708
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 709
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public enquireBalanceList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 702
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 703
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public enteredStoreBoundaryForOrder(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "checkInCode"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->enteredStoreBoundaryForOrder(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 574
    return-void
.end method

.method public executePaymentByBarCode(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;DLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p3, "paymentBarCode"    # Ljava/lang/String;
    .param p4, "amount"    # D
    .param p6, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 750
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p6, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 751
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public foundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 621
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->foundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public generatePaymentBarCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "paymentMethodId"    # I
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 744
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 745
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 408
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getAddressElements(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 414
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getAddressElements(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 512
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 507
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 672
    return-void
.end method

.method public getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 662
    return-void
.end method

.method public getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 667
    return-void
.end method

.method public getAutoReloadConfiguration(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "card"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/Object;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 732
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 733
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCatalogUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Catalog;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getCatalogUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerIdentificationCode(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 527
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getCustomerIdentificationCode(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/Double;
    .param p3, "longitude"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 502
    .local p4, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "orderNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 641
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .line 468
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

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
    .line 478
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getEnableMultipleMenuTypes()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->isEnableMultipleMenuTypes()Z

    move-result v0

    return v0
.end method

.method public getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mConfigurationConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;->getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 569
    return-void
.end method

.method public getMaxBasketQuantity()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMaxBasketQuantity()I

    move-result v0

    return v0
.end method

.method public getMaxItemQuantity()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getMaxItemQuantity()I

    move-result v0

    return v0
.end method

.method public getMaxMinutesToAdvOrder()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMaxMinutesToAdvOrder()I

    move-result v0

    return v0
.end method

.method public getMinMinutesToAdvOrder()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMinMinutesToAdvOrder()I

    move-result v0

    return v0
.end method

.method public getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getOrderByCode(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/String;
    .param p2, "barCode"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 756
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 757
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "paymentProviderData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 488
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;>;"
    return-void
.end method

.method public getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 343
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getRecentOrders(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "numRecents"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getRecentOrders(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 657
    return-void
.end method

.method public getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 652
    return-void
.end method

.method public getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 698
    return-void
.end method

.method public getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mConfigurationConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;->getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 769
    return-void
.end method

.method public getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "socialLoginId"    # I
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getStoreFromList(Ljava/util/Date;ZDLjava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .param p1, "deliveryTime"    # Ljava/util/Date;
    .param p2, "isNormalOrder"    # Z
    .param p3, "orderAmount"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "ZD",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p5, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getStoreFromList(Ljava/util/Date;ZDLjava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 564
    return-void
.end method

.method public getStoreOrderingCapabilties(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getStoreOrderingCapabilties(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 559
    return-void
.end method

.method public getUpsellItems(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<[I>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getUpsellItems(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 584
    return-void
.end method

.method public isEnableMultipleMenuTypes()Z
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v2, "enableMultipleMenuTypes"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "enableMultipleMenuTypesString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 631
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public orderUnAttendedCheckIn(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "checkInCode"    # Ljava/lang/String;
    .param p2, "orderUnAttendedCheckIn"    # Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->orderUnAttendedCheckIn(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 579
    return-void
.end method

.method public paymentTypePostRegistrationURL(ILjava/lang/Boolean;ILcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3, "storeId"    # I
    .param p4, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "I",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 348
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->paymentTypePostRegistrationURL(ILjava/lang/Boolean;ILcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 677
    return-void
.end method

.method public preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 616
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .param p4, "isOneTimePayment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 773
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public removeAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 439
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->removeAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
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
    .line 338
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 459
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 449
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 444
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
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
    .line 454
    .local p1, "storeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mStoreLocator:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 241
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
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
    .line 326
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/Integer;
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public selectToRedeem(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p3, "storeId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 522
    .local p2, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->selectToRedeem(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 291
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->sendRating(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 296
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseImagePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "mBaseImagePath"    # Ljava/lang/String;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mNutritionConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->setBaseImagePath(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public setDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 688
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->setDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "preferences"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "offerId"    # Ljava/lang/Integer;
    .param p2, "expStartDate"    # Ljava/util/Date;
    .param p3, "expEndDate"    # Ljava/util/Date;
    .param p4, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOffersConnector:Lcom/mcdonalds/sdk/connectors/OffersConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public signIn(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mUseDCS:Z

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->signIn(Lcom/mcdonalds/sdk/AsyncListener;Z)Lcom/mcdonalds/sdk/AsyncToken;

    .line 188
    return-void
.end method

.method public signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public trackNotification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "deliveryID"    # Ljava/lang/String;
    .param p4, "tagID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 281
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->trackNotification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public unarchiveOffer(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "offerId"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 537
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAddressBook(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updateAddressBook(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public updatePayment(Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "paymentProviderData"    # Ljava/lang/String;
    .param p3, "isPreferred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 353
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updatePayment(Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public updateTermsAndConditions(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "isPrivacyPolicyAccepted"    # Z
    .param p3, "isTermsOfUseAccepted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "ZZ",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 333
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updateTermsAndConditions(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mOrderingConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->validate(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 424
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "verificationType"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .param p3, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 306
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method
