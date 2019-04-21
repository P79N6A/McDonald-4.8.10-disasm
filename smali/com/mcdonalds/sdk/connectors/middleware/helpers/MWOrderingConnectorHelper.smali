.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/OrderingConnector;


# static fields
.field private static final INVALID_PAYMENT_DATA_ID:I = -0x1

.field public static final KEY_CACHE_LATEST_ORDER:Ljava/lang/String; = "modules.ordering.cacheLatestOrderMinutes"

.field public static final KEY_CASH:Ljava/lang/String; = "supportedPaymentMethods.cash.expectedPaymentMethodID"

.field public static final KEY_CREDIT_CARD:Ljava/lang/String; = "supportedPaymentMethods.creditCard.expectedPaymentMethodID"

.field public static final KEY_OTHER:Ljava/lang/String; = "supportedPaymentMethods.other.expectedPaymentMethodID"

.field public static final KEY_SUPPORTED_PAYMENTS:Ljava/lang/String; = "supportedPaymentMethods.paymentMethodIDs"

.field public static final KEY_THIRD_PARTY:Ljava/lang/String; = "supportedPaymentMethods.thirdParty.expectedPaymentMethodID"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_BASKET_QUANTITY:I = 0x28

.field private static final MAX_DIM_DEPTH:I = 0x2

.field private static final MAX_MINUTES_TO_ADV_ORDER:I = 0x2760

.field private static final MIN_MINUTES_TO_ADV_ORDER:I = 0x78

.field private static final OFFER_NOT_VALID_AT_LOCATION:Ljava/lang/Integer;

.field public static final PARTIAL_PAYMENT_ERROR_CODE:I = -0x1784

.field private static final PRODUCT_OUT_OF_STOCK_CODE:Ljava/lang/Integer;

.field private static final RESULT_CODE_OK:I = 0x1

.field private static final RESULT_CODE_ORDER_ERRORS:I = -0x1778

.field private static final RESULT_CODE_OUT_OF_STOCK:I = -0x40c

.field private static final RESULT_CODE_UNAUTHENTICATED:I = -0x40d

.field private static final RESULT_CODE_UNAVAILABLE_AT_RESTAURANT:I = -0x40b

.field private static final RESULT_CODE_VALIDATION_ERRORS:I = -0x455


# instance fields
.field private mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->LOG_TAG:Ljava/lang/String;

    .line 114
    const/16 v0, -0x40c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->PRODUCT_OUT_OF_STOCK_CODE:Ljava/lang/Integer;

    .line 115
    const/16 v0, -0x1f4f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->OFFER_NOT_VALID_AT_LOCATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->PRODUCT_OUT_OF_STOCK_CODE:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->OFFER_NOT_VALID_AT_LOCATION:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 312
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkMobileOrderingSupport"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreInformationRequest;

    .line 315
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreInformationRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 314
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 350
    return-object v0
.end method

.method public checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
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
    .line 357
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "checkMobileOrderingSupportForStores"

    invoke-direct {v6, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 359
    .local v6, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Store list is empty to checkMobileOrderingSupportForStores"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    if-eqz p2, :cond_2

    .line 366
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v7

    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoresByLocationRequest;

    .line 368
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoresByLocationRequest;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/util/List;)V

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;

    invoke-direct {v1, p0, p3, v6, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;)V

    .line 366
    invoke-virtual {v7, v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 416
    :goto_0
    return-object v6

    .line 408
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$9;

    invoke-direct {v1, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$9;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public checkin(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 11
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
    .line 563
    .local p4, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v9, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "checkin"

    invoke-direct {v9, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 565
    .local v9, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$13;

    invoke-direct {v8, p0, p4, v9}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$13;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 617
    .local v8, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWCheckinResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v10

    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCheckinRequest;

    .line 619
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v4

    .line 625
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentResult()Ljava/lang/String;

    move-result-object v7

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCheckinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v10, v0, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 631
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearPaymentResult()V

    .line 633
    return-object v9
.end method

.method public checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
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
    .line 638
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "#checkinKiosk"

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 640
    .local v6, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWKioskCheckinRequest;

    .line 641
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWKioskCheckinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;Ljava/lang/String;)V

    .line 648
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWKioskCheckinRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;

    invoke-direct {v2, p0, p3, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 668
    return-object v6
.end method

.method public checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
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
    .line 762
    .local p4, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "lookupDeliveryCharge"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 764
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;

    .line 765
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 767
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$17;

    invoke-direct {v3, p0, p4, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$17;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 787
    return-object v1
.end method

.method public createNewOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public enteredStoreBoundaryForOrder(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
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
    .line 267
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWBoundaryCrossCheckInRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWBoundaryCrossCheckInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v0, "boundaryCrossRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWBoundaryCrossCheckInRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 276
    return-void
.end method

.method public foundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .line 535
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "foundationalCheckIn"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWFoundationalCheckInRequest;

    .line 538
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWFoundationalCheckInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .line 544
    .local v0, "pickupRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWFoundationalCheckInRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;

    invoke-direct {v3, p0, p2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 558
    return-object v1
.end method

.method public getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
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
    .line 820
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;>;"
    new-instance v3, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v5, "getDeliveryStatus"

    invoke-direct {v3, v5}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 822
    .local v3, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 823
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v4, ""

    .line 824
    .local v4, "username":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 827
    :cond_0
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x96

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0x190

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 829
    .local v1, "inProgressStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v4, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .local v2, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$19;

    invoke-direct {v6, p0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$19;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v5, v2, v6}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 846
    return-object v3
.end method

.method public getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .line 792
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "getDeliveryStatus"

    invoke-direct {v2, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 794
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 795
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v3, ""

    .line 796
    .local v3, "username":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 797
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 801
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryStatusRequest;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$18;

    invoke-direct {v5, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$18;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v4, v1, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 815
    return-object v2
.end method

.method public getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
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
    .line 253
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;-><init>()V

    .line 255
    .local v0, "configRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$4;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 263
    return-void
.end method

.method public getMaxBasketQuantity()I
    .locals 3

    .prologue
    .line 851
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v2, "maxQttyOnBasket"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "maxItemQuantity":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x28

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMaxMinutesToAdvOrder()I
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v2, "maxMinutesToAdvOrder"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "maxMinutesToAdvOrder":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x2760

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMinMinutesToAdvOrder()I
    .locals 3

    .prologue
    .line 857
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    const-string v2, "minMinutesToAdvOrder"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "minMinutesToAdvOrder":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x78

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
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
    .line 871
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;>;"
    return-void
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
    .line 158
    .local p5, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getStoreFromList"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 160
    .local v7, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryLocationByStoreRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryLocationByStoreRequest;-><init>(Ljava/lang/String;Ljava/util/Date;ZDLjava/util/List;)V

    .line 162
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetDeliveryLocationByStoreRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;

    invoke-direct {v2, p0, p6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 218
    return-void
.end method

.method public getStoreOrderingCapabilties(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
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
    .line 131
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreInformationRequest;

    .line 132
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreInformationRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 153
    return-void
.end method

.method public getUpsellItems(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 10
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
    .line 281
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<[I>;"
    new-instance v9, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getUpsellItems"

    invoke-direct {v9, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 283
    .local v9, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v7

    .line 285
    .local v7, "orderView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 287
    .local v8, "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderAddonsRequest;

    .line 288
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    .line 292
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v5

    .line 293
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderAddonsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;ZLcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .line 296
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderAddonsRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$6;

    invoke-direct {v2, p0, p2, v9}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$6;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 307
    return-void
.end method

.method public lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 10
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
    .line 715
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "lookupDeliveryCharge"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 718
    .local v7, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 719
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 723
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    .line 724
    .local v8, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v8, :cond_1

    .line 725
    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {p2, v1, v7, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 757
    :goto_0
    return-object v7

    .line 729
    :cond_1
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    .line 731
    .local v9, "storeId":I
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWLookupDeliveryChargeRequest;

    .line 732
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWLookupDeliveryChargeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 738
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWLookupDeliveryChargeRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$16;

    invoke-direct {v2, p0, p2, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$16;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public orderUnAttendedCheckIn(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
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
    .line 222
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->fromUnAttendedCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;)V

    .line 224
    .local v0, "unAttendedCheckInRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 249
    return-void
.end method

.method public preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
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
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    const/4 v7, 0x1

    .line 476
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "preparePayment"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentDataId(I)V

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPreparePaymentForDeliveryRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPreparePaymentForDeliveryRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 496
    .local v1, "preparePaymentRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 497
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, -0x1778

    .line 498
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const/16 v5, -0x40c

    .line 499
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, -0x40b

    .line 500
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 496
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 501
    .local v0, "allowedResultCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;

    invoke-direct {v4, p0, v0, p2, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 530
    return-object v2

    .line 488
    .end local v0    # "allowedResultCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "preparePaymentRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPreparePaymentRequest;

    .line 489
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPreparePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .restart local v1    # "preparePaymentRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    goto :goto_0
.end method

.method public totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 10
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
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 422
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v4, "totalize"

    invoke-direct {v2, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 423
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 425
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    if-nez v4, :cond_0

    .line 427
    const/16 v4, -0x40d

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 428
    .local v1, "exception":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-interface {p2, v5, v2, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 471
    .end local v1    # "exception":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :goto_0
    return-object v2

    .line 432
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;

    .line 433
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-static {p1, v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .line 437
    .local v3, "totalizeRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Integer;

    .line 438
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, -0x1778

    .line 439
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const/16 v6, -0x455

    .line 440
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, -0x40b

    .line 441
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, -0x40c

    .line 442
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 437
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "allowedResultCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;

    invoke-direct {v5, p0, v0, p2, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v4, v3, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public validate(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 13
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
    .line 673
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v12, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v1, "validate"

    invoke-direct {v12, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 675
    .local v12, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 677
    .local v8, "deliveryDate":Ljava/util/Date;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateOrderRequest;

    .line 678
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    .line 682
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTenderType()I

    move-result v5

    .line 683
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTenderAmount()D

    move-result-wide v6

    .line 685
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v9

    .line 686
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 687
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateOrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/util/Date;ZILcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .line 690
    .local v0, "validateRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWValidateOrderRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$15;

    invoke-direct {v2, p0, p2, v12}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$15;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 710
    return-object v12
.end method
