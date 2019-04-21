.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/CustomerConnector;


# static fields
.field private static final ADOBE_TRACKING_CUSTOM_URL_KEY:Ljava/lang/String; = "modules.customer.pushNotificationTrackingBaseURL"

.field private static final ASYNC_TOKEN_PREFIX:Ljava/lang/String;


# instance fields
.field protected mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->buildCustomerProfile(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getException(Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v0

    return-object v0
.end method

.method private buildCustomerProfile(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;
    .param p2, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    .line 299
    .local v3, "manager":Lcom/mcdonalds/sdk/services/network/SessionManager;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getAccessData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    move-result-object v0

    .line 302
    .local v0, "accessData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;
    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setToken(Ljava/lang/String;)V

    .line 303
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setTokenAuthenticated(Z)V

    .line 304
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->notifyTokenRefreshed()V

    .line 306
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;->appParameter:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    .line 307
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getCustomerData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v2

    .line 310
    .end local v0    # "accessData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;
    :cond_0
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->toCustomer(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 314
    .local v1, "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getNewPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getNewPassword()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 316
    return-object v1

    .line 314
    :cond_1
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getException(Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;
    .locals 3
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .param p2, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .prologue
    .line 1624
    move-object v0, p1

    .line 1625
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1626
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 1628
    :cond_0
    return-object v0
.end method

.method private getPaymentData(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    .locals 7
    .param p1, "paymentProviderData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1128
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;

    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_0

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;

    .line 1133
    :goto_1
    return-object v2

    .line 1128
    :cond_0
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, p1, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v1

    .local v1, "jse":Lcom/google/gson/JsonSyntaxException;
    move-object v2, v4

    .line 1131
    goto :goto_1

    .line 1132
    .end local v1    # "jse":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v0

    .local v0, "jpe":Lcom/google/gson/JsonParseException;
    move-object v2, v4

    .line 1133
    goto :goto_1
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .line 1517
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#addAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    move-result-object v0

    .line 1521
    .local v0, "entry":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddAdressRequest;

    .line 1522
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddAdressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)V

    .line 1527
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddAdressRequest;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$35;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$35;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1541
    return-object v2
.end method

.method public addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .line 845
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "addFavoriteLocations"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 847
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddFavoriteLocationsRequest;

    .line 849
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->locationsArrayFromFavoriteLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, p2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddFavoriteLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 847
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 889
    return-object v0
.end method

.method public addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 12
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
    .line 1167
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#addFavoriteProducts"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v3, "ecpCustomerFavoriteDataList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    .line 1173
    .local v8, "ordersSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1174
    .local v4, "ecpCustomerFavoriteOrderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 1175
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1176
    .local v7, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    move-result-object v6

    .line 1177
    .local v6, "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->setProductCode(I)V

    .line 1178
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1181
    .end local v6    # "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .end local v7    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;

    .line 1182
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v2, v4, v10, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    .line 1185
    .local v2, "ecpCustomerFavoriteData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    new-instance v9, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddFavoriteProductsRequest;

    .line 1188
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddFavoriteProductsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1191
    .local v9, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWAddFavoriteProductsRequest;
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v10

    new-instance v11, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$25;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$25;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v10, v9, v11}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1210
    return-object v1
.end method

.method public addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    const/4 v0, 0x0

    .line 606
    if-nez p1, :cond_0

    .line 607
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    const-string v5, "Invalid Arguments"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v0, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 636
    :goto_0
    return-object v0

    .line 611
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "addLoginMethod"

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;-><init>()V

    .line 614
    .local v1, "mLoginInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;
    const/4 v4, 0x0

    iput v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;->loginType:I

    .line 615
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;->username:Ljava/lang/String;

    .line 616
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;->password:Ljava/lang/String;

    .line 618
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;-><init>()V

    .line 619
    .local v2, "mLoginToAdd":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;
    const/4 v4, 0x1

    iput v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;->loginType:I

    .line 620
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;->username:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;->accessToken:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;->internalID:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v4

    iput v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;->socialNetworkId:I

    .line 625
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInMergeRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInMergeRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginToAdd;)V

    .line 627
    .local v3, "temp":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInMergeRequest;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$12;

    invoke-direct {v5, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$12;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v4, v3, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public associateDevice(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1343
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#associateDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAssociateDeviceRequest;

    .line 1346
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWAssociateDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWAssociateDeviceRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$29;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$29;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1362
    return-object v0
.end method

.method public authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
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
    .line 147
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 270
    .local v1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInRequest;

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;

    invoke-direct {v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;-><init>(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;)V

    .line 275
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 291
    .end local v0    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInRequest;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInAndAuthenticateRequest;

    .line 283
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getNewPassword()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInAndAuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 476
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 477
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v0, v0, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 497
    :goto_0
    return-object v0

    .line 481
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "changePassword"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerChangePasswordRequest;

    .line 484
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$7;

    invoke-direct {v3, p0, p5, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$7;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 482
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 894
    .local p1, "favoriteLocationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "deleteFavoriteLocations"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeleteFavoriteLocationsRequest;

    .line 898
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeleteFavoriteLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$18;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$18;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 896
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 918
    return-object v0
.end method

.method public deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
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
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    .line 1216
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    .line 1217
    :cond_0
    new-instance v6, Lcom/mcdonalds/sdk/AsyncException;

    const-string v7, "Invalid Arguments"

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0, v0, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1261
    :goto_0
    return-object v0

    .line 1221
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#deleteFavoriteProducts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v1, "favoriteOrderProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 1225
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 1227
    .local v3, "order":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1228
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1232
    .end local v3    # "order":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_3
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeleteFavoriteProductsRequest;

    .line 1233
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeleteFavoriteProductsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1236
    .local v4, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeleteFavoriteProductsRequest;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$26;

    invoke-direct {v7, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$26;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v6, v4, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 10
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
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 750
    if-nez p1, :cond_0

    .line 751
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v6, v6, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 797
    :goto_0
    return-object v6

    .line 755
    :cond_0
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "deregister"

    invoke-direct {v6, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 756
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$15;

    invoke-direct {v8, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$15;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 773
    .local v8, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerDeregisterResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v7

    .line 776
    .local v7, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialDeregisterRequest;

    .line 778
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialDeregisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, v1, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 785
    .end local v7    # "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v9

    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;

    .line 787
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v9, v0, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1374
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#getAddressBook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressBookRequest;

    .line 1377
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressBookRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressBookRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$30;

    invoke-direct {v3, p0, p2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$30;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1397
    return-object v1
.end method

.method public getAddressElements(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1403
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#getAddressElements"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressElementsRequest;

    .line 1406
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressElementsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAddressElementsRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$31;

    invoke-direct {v3, p0, p2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$31;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1425
    return-object v1
.end method

.method public getCatalogUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
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
    .line 833
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Catalog;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getCatalogUpdated"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 835
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getCatalogManager()Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateCatalogs(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 840
    return-object v0
.end method

.method public getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 802
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getCustomerData"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;

    .line 805
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$16;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$16;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 803
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 819
    return-object v0
.end method

.method public getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
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
    .line 1430
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#getDefaultAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v0, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1449
    return-object v0
.end method

.method public getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1140
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#getFavoriteProducts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetFavoriteProductsRequest;

    .line 1143
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetFavoriteProductsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetFavoriteProductsRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$24;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$24;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1161
    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v1, "GcmSenderId"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemQuantity()I
    .locals 3

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v2, "maxQttyOnBasket"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "maxItemQuantity":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0xff

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    const/4 v5, 0x0

    .line 1111
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getPaymentData"

    invoke-direct {v1, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v1, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getPaymentData(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;

    move-result-object v2

    .line 1113
    .local v2, "paymentData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;->getResultCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1115
    :cond_0
    invoke-direct {p0, v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getException(Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v3

    invoke-interface {p2, v5, v5, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1123
    :goto_0
    return-object v1

    .line 1117
    :cond_1
    const/4 v0, 0x0

    .line 1118
    .local v0, "addedCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1119
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v0

    .line 1121
    :cond_2
    invoke-interface {p2, v0, v5, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
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
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 988
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 989
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v7, v7, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1028
    :goto_0
    return-object v7

    .line 993
    :cond_1
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "paymentTypeRegistrationURL"

    invoke-direct {v7, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 994
    .local v7, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$21;

    invoke-direct {v6, p0, p4, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$21;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1017
    .local v6, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWPaymentTypeRegistrationURLResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v8

    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypeRegistrationURLRequest;

    .line 1019
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1022
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypeRegistrationURLRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1017
    invoke-virtual {v8, v0, v6}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getRecentOrders(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1307
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#getRecentOrders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetRecentOrdersRequest;

    .line 1310
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetRecentOrdersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1313
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetRecentOrdersRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$28;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$28;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1332
    return-object v0
.end method

.method public getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
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
    .line 824
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getSocialLoginCatalogUpdate"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getCatalogManager()Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateSocialNetworkCatalog(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 828
    return-object v0
.end method

.method public getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 589
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "addLoginMethod"

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWWechatTokenRequest;

    .line 592
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWWechatTokenRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    .local v1, "temp":Lcom/mcdonalds/sdk/connectors/middleware/request/MWWechatTokenRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$11;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$11;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 600
    const/4 v2, 0x0

    return-object v2
.end method

.method protected locationsArrayFromFavoriteLocations(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1663
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-nez p1, :cond_1

    .line 1664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    :cond_0
    return-object v1

    .line 1667
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1668
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1670
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1671
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1673
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1675
    .local v4, "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1676
    const-string v5, "FavoriteLocationID"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    :cond_2
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1680
    const-string v5, "Name"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    :cond_3
    :goto_1
    const-string v5, "StoreNumber"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1681
    :cond_4
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1682
    const-string v5, "Name"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public paymentTypePostRegistrationURL(ILjava/lang/Boolean;ILcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
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
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;>;"
    const/4 v7, 0x0

    .line 1033
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    .line 1034
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v7, v7, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1058
    :goto_0
    return-object v7

    .line 1037
    :cond_1
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "paymentTypeRegistrationURL"

    invoke-direct {v7, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v7, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$22;

    invoke-direct {v6, p0, p5, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$22;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1054
    .local v6, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWPaymentTypeRegistrationPostUrlResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v8

    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;

    .line 1056
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-virtual {p4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v2, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;-><init>(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1054
    invoke-virtual {v8, v0, v6}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    const-string v5, "Invalid Arguments"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v7, v7, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 406
    :goto_0
    return-object v7

    .line 346
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v0

    .line 348
    .local v0, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 367
    .local v1, "requestListenerNormal":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerRegisterResponse;>;"
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 385
    .local v2, "requestListenerSocial":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;

    .line 388
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V

    .line 392
    .local v3, "temp":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 398
    .end local v3    # "temp":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;

    .line 400
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V

    .line 398
    invoke-virtual {v4, v5, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
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
    .line 1733
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#registerCard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v6, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRegisterCardRequest;

    .line 1736
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRegisterCardRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1743
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRegisterCardRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;

    invoke-direct {v2, p0, p5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1783
    return-object v6
.end method

.method public registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    const/4 v0, 0x0

    .line 553
    if-nez p1, :cond_0

    .line 554
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    const-string v5, "Invalid Arguments"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v0, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 582
    :goto_0
    return-object v0

    .line 557
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "registerExtSocialNetworkForced"

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v1

    .line 561
    .local v1, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$10;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$10;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 574
    .local v2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialForceRegisterRequest;

    .line 575
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialForceRegisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V

    .line 578
    .local v3, "temp":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialForceRegisterRequest;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public removeAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .line 1547
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#removeAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    move-result-object v0

    .line 1551
    .local v0, "entry":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRemoveAddressRequest;

    .line 1552
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRemoveAddressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)V

    .line 1557
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRemoveAddressRequest;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$36;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$36;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1570
    return-object v2
.end method

.method public renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .line 953
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "renameFavoriteStores"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 955
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRenameFavoriteLocationsRequest;

    .line 957
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 959
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->locationsArrayFromFavoriteLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, p2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRenameFavoriteLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$20;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$20;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 955
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 982
    return-object v0
.end method

.method public resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 444
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#resendActivation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    if-nez p1, :cond_0

    .line 446
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Invalid arguments: customer cannot be null"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5, v5, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 470
    :goto_0
    return-object v0

    .line 450
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "token":Ljava/lang/String;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;

    invoke-direct {v1, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 454
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$6;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$6;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .line 411
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#resendActivationCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "token":Ljava/lang/String;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerActivationCodeRequest;

    invoke-direct {v1, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerActivationCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerActivationCodeRequest;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$5;

    invoke-direct {v4, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$5;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 438
    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v0, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 521
    :goto_0
    return-object v0

    .line 507
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "resetPassword"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResetPasswordRequest;

    .line 510
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResetPasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$8;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$8;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 508
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0, v0, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 548
    :goto_0
    return-object v0

    .line 532
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "resetPassword"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResetPasswordRequest;

    .line 535
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResetPasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$9;

    invoke-direct {v3, p0, p4, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$9;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 533
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 923
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "retrieveFavoriteStores"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetFavoriteLocationsRequest;

    .line 927
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetFavoriteLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$19;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$19;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 925
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 948
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
    .line 1575
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
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
    .line 1581
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v8, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v8, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1585
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/4 v5, 0x5

    .line 1586
    .local v5, "feedbackTypeId":I
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFeedBackTypeForRating()Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    move-result-object v7

    .line 1587
    .local v7, "feedBackType":Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    if-eqz v7, :cond_0

    .line 1588
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->getID()I

    move-result v5

    .line 1591
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSendRatingRequest;

    .line 1592
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSendRatingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1595
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSendRatingRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$37;

    invoke-direct {v2, p0, p4, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$37;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1609
    return-object v8
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
    .line 1614
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1634
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#setDefaultAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetDefaultAddressRequest;

    .line 1637
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetDefaultAddressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)V

    .line 1642
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetDefaultAddressRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$38;

    invoke-direct {v3, p0, p3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$38;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1658
    return-object v1
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
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
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    const/4 v6, 0x0

    .line 689
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 690
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v6, v6, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 719
    :goto_0
    return-object v6

    .line 694
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "setPreferencesMap"

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->fromNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    move-result-object v1

    .line 698
    .local v1, "ecpNotificationPreferences":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;

    .line 700
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)V

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$14;

    invoke-direct {v4, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$14;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 698
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;

    .line 324
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 334
    return-object v3
.end method

.method public trackNotification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
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
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 726
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 727
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Invalid Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v1, v1, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 745
    :goto_0
    return-object v1

    .line 731
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "trackNotification"

    invoke-direct {v1, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 734
    .local v1, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.customer.pushNotificationTrackingBaseURL"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.customer.pushNotificationTrackingBaseURL"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "baseURL":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/AdobeTrackNotificationRequest;

    invoke-direct {v2, v0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/AdobeTrackNotificationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 743
    .end local v0    # "baseURL":Ljava/lang/String;
    .local v2, "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    invoke-virtual {v3, v2, p5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 740
    .end local v2    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :cond_2
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;

    .line 741
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v2    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    goto :goto_1
.end method

.method public updateAddressBook(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1455
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#updateAddressBook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateAddressBookRequest;

    .line 1458
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1460
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->createListFromCustomerAddressList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateAddressBookRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1463
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateAddressBookRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$33;

    invoke-direct {v3, p0, p3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$33;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1479
    return-object v1
.end method

.method public updatePayment(Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
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
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v3, 0x0

    .line 1064
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1065
    :cond_0
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    const-string v5, "Invalid Arguments"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v3, v3, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    move-object v0, v3

    .line 1105
    :goto_0
    return-object v0

    .line 1070
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getPaymentData(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;

    move-result-object v2

    .line 1071
    .local v2, "paymentData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;->getResultCode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1073
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getException(Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v6

    invoke-interface {p4, v4, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    move-object v0, v3

    .line 1074
    goto :goto_0

    .line 1077
    :cond_3
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "paymentTypeRegistrationURL"

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;

    .line 1080
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1, v2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;Z)V

    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$23;

    invoke-direct {v6, p0, p4, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$23;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1078
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    .end local v0    # "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    .end local v2    # "paymentData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Lcom/google/gson/JsonParseException;
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {p4, v3, v3, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    move-object v0, v3

    .line 1105
    goto :goto_0
.end method

.method public updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .local p2, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v0, 0x0

    .line 1267
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1268
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0, v0, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1301
    :goto_0
    return-object v0

    .line 1272
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "paymentTypeRegistrationURL"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;

    .line 1278
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1276
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v5, 0x0

    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 683
    :goto_0
    return-object v5

    .line 648
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "updateProfile"

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$13;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$13;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 664
    .local v1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateProfileResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;

    .line 668
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 666
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;

    .line 676
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 674
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public updateTermsAndConditions(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
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
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v7, 0x0

    .line 1698
    if-nez p1, :cond_0

    .line 1699
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v7, v7, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1727
    :goto_0
    return-object v7

    .line 1703
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "updateTermsAndConditions"

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$39;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$39;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1717
    .local v1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateTermsAndConditionsResponse;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateTermsAndConditionsRequest;

    .line 1719
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 1721
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1722
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, p1, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateTermsAndConditionsRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1717
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 1487
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#validateAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateAddressRequest;

    .line 1490
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->createListFromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateAddressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1495
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateAddressRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;

    invoke-direct {v3, p0, p3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1510
    return-object v1
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
    .line 1619
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method
