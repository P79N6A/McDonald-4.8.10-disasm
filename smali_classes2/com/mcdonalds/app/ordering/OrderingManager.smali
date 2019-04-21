.class public Lcom/mcdonalds/app/ordering/OrderingManager;
.super Ljava/lang/Object;
.source "OrderingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/OrderingManager$checkInResponseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mcdonalds/app/ordering/OrderingManager;


# instance fields
.field private mProductErrorCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/OrderingManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncException;
    .param p4, "x4"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.OrderingManager"

    const-string v2, "access$000"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ordering/OrderingManager;->deliverOrderResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method private deliverOrderResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    const-string v1, "deliverOrderResponse"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    if-eqz p3, :cond_1

    .line 348
    invoke-interface {p4, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 354
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 355
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderDate(Ljava/util/Date;)V

    .line 358
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackTransaction(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 359
    invoke-interface {p4, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 361
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 363
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/ServiceUtils;->removeAdvertisableCache()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.OrderingManager"

    const-string v1, "getInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/mcdonalds/app/ordering/OrderingManager;->sInstance:Lcom/mcdonalds/app/ordering/OrderingManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/mcdonalds/app/ordering/OrderingManager;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/ordering/OrderingManager;->sInstance:Lcom/mcdonalds/app/ordering/OrderingManager;

    .line 189
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/ordering/OrderingManager;->sInstance:Lcom/mcdonalds/app/ordering/OrderingManager;

    return-object v0
.end method

.method private totalizeDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v1, "totalizeDelivery"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    const-string v1, "delivery"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 433
    .local v0, "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 435
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 439
    :cond_0
    new-instance v1, Lcom/mcdonalds/app/ordering/OrderingManager$3;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/OrderingManager$3;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->validate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 449
    return-void
.end method

.method private totalizePickUp(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v1, "totalizePickUp"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 455
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 457
    new-instance v1, Lcom/mcdonalds/app/ordering/OrderingManager$4;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/app/ordering/OrderingManager$4;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->totalize(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 468
    return-void
.end method

.method private updateDeletedOrEmptyOrder()V
    .locals 2

    .prologue
    const-string v0, "updateDeletedOrEmptyOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 222
    return-void
.end method


# virtual methods
.method public checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p1, "newOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "code"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "password"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    const-string v3, "checkIn"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCheckinTimeStamp()V

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 309
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->Delivery:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 311
    const-string v3, "delivery"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 312
    .local v0, "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/OrderingManager$1;

    invoke-direct {v4, p0, v1, p4}, Lcom/mcdonalds/app/ordering/OrderingManager$1;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1, p3, v3, v4}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 335
    .end local v0    # "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    :goto_0
    return-void

    .line 323
    :cond_2
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 324
    .local v2, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v3, Lcom/mcdonalds/app/ordering/OrderingManager$2;

    invoke-direct {v3, p0, v1, p4}, Lcom/mcdonalds/app/ordering/OrderingManager$2;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, p2, p3, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->checkin(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public deleteCurrentOrder()V
    .locals 2

    .prologue
    const-string v0, "deleteCurrentOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateDeletedOrEmptyOrder()V

    .line 217
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->deleteCurrentOrder()V

    .line 218
    return-void
.end method

.method public getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "getCurrentOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .locals 2

    .prologue
    const-string v0, "getCurrentOrderPriceType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    const-string v0, "getErrorCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProblematicProductsCodes()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "getProblematicProductsCodes"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getErrorCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 387
    :goto_0
    if-nez v0, :cond_1

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    :cond_0
    return-object v2

    .line 381
    :sswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsOutOfStock()Ljava/util/List;

    move-result-object v0

    .line 382
    goto :goto_0

    .line 384
    :sswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsUnavailable()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .local v2, "problematicProductsCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40c -> :sswitch_0
        -0x3ff -> :sswitch_1
    .end sparse-switch
.end method

.method public getProductErrorCode()I
    .locals 2

    .prologue
    const-string v0, "getProductErrorCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager;->mProductErrorCode:I

    return v0
.end method

.method public getTenderType()I
    .locals 9

    .prologue
    const-string v5, "getTenderType"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    .line 416
    .local v3, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 417
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v4

    .line 419
    .local v4, "paymentMethodId":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "modules.delivery"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/LinkedTreeMap;

    .line 420
    .local v1, "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;

    instance-of v8, v5, Lcom/google/gson/Gson;

    if-nez v8, :cond_1

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;

    .line 421
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;
    iget-object v5, v0, Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;->expectedTenderTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;

    .line 422
    .local v2, "expectedTenderType":Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;
    iget v6, v2, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->paymentMethodId:I

    if-ne v6, v4, :cond_0

    .line 423
    iget v5, v2, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->tenderType:I

    .line 427
    .end local v0    # "config":Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;
    .end local v1    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "expectedTenderType":Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;
    .end local v4    # "paymentMethodId":I
    :goto_1
    return v5

    .line 420
    .restart local v1    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "paymentMethodId":I
    :cond_1
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 427
    .end local v1    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "paymentMethodId":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isLargeOrder(Lcom/mcdonalds/sdk/modules/models/OrderView;)Z
    .locals 4
    .param p1, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isLargeOrder"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isConfirmationNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public isOrderingAvailable()Z
    .locals 2

    .prologue
    const-string v0, "isOrderingAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v0

    return v0
.end method

.method public preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    const/4 v6, 0x0

    const-string v3, "preparePayment"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    .line 474
    .local v0, "oldPayment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;-><init>()V

    .line 475
    .local v2, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 478
    :cond_0
    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 479
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 480
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 486
    .end local v0    # "oldPayment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .end local v2    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_1
    :goto_0
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 487
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v3, Lcom/mcdonalds/app/ordering/OrderingManager$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/mcdonalds/app/ordering/OrderingManager$5;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, p1, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 511
    return-void

    .line 481
    .end local v1    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 482
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    goto :goto_0
.end method

.method public setProductErrorCode(I)V
    .locals 4
    .param p1, "productErrorCode"    # I

    .prologue
    const-string v0, "setProductErrorCode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    iput p1, p0, Lcom/mcdonalds/app/ordering/OrderingManager;->mProductErrorCode:I

    .line 519
    return-void
.end method

.method public shouldHidePositive()Z
    .locals 4

    .prologue
    const-string v0, "shouldHidePositive"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public totalize(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    const-string v0, "totalize"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    if-nez p1, :cond_0

    .line 286
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "You don\'t have a current store selected."

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-interface {p2, v0, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 298
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalizeDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalizePickUp(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 4
    .param p1, "newOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v1, "updateCurrentOrder"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 231
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setTransaction(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/MenuType;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 233
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 234
    return-void
.end method

.method public updateTender()V
    .locals 6

    .prologue
    const-string v1, "updateTender"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 403
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getTenderType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setTenderType(I)V

    .line 406
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setTenderAmount(D)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setTenderAmount(D)V

    goto :goto_0
.end method
