.class public Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "OrderingModule.java"


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field private static final KEY_ALLOW_ZERO_PRICED_ORDER_DELIVERY:Ljava/lang/String; = "modules.delivery.allowZeroPriceOrder"

.field private static final KEY_ALLOW_ZERO_PRICED_ORDER_PICKUP:Ljava/lang/String; = "modules.ordering.allowZeroPriceOrder"

.field public static final NAME:Ljava/lang/String; = "ordering"


# instance fields
.field private mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 63
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.ordering.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "implementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 65
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;[ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->sortProductsByProductCodes([ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createMenuType(ILjava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/MenuType;
    .locals 1
    .param p1, "menuTypeId"    # I
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "displayImage"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    .line 183
    .local v0, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setID(I)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setShortName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setDisplayImage(Ljava/lang/String;)V

    .line 186
    return-object v0
.end method

.method private getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    return-object v0
.end method

.method private sortProductsByProductCodes([ILjava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "codes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v1, "orderedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v0, p1, v3

    .line 628
    .local v0, "code":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 629
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 630
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "code":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public allowZeroPricedOrder()Z
    .locals 3

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 165
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.delivery.allowZeroPriceOrder"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 168
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.ordering.allowZeroPriceOrder"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public checkStoreForOrderingSupport(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkStoreForOrderingSupport"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 132
    return-object v0
.end method

.method public checkStoreListForOrderingSupport(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p2, "location"    # Landroid/location/Location;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 84
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkStoresForOrderingSupport"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    new-instance v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$1;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 96
    return-object v0
.end method

.method public checkin(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "checkinData"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 254
    .local p3, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkin"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$6;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$6;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkin(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 266
    return-object v0
.end method

.method public checkinKiosk(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "#checkinKiosk"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$7;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$7;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 282
    return-object v0
.end method

.method public getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;>;"
    const/4 v2, 0x0

    .line 594
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/repository/CategoryRepository;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 595
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    invoke-interface {p1, v0, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 596
    return-void
.end method

.method public getAllProducts(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v2, 0x0

    .line 573
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {p1, v0, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 575
    return-void
.end method

.method public getAllProductsForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v3, 0x0

    .line 584
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByCategory(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 585
    .local v0, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {p2, v0, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 586
    return-void
.end method

.method public getFullProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V

    .line 541
    return-void
.end method

.method public getMaxBasketQuantity()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMaxBasketQuantity()I

    move-result v0

    return v0
.end method

.method public getMaxMinutesToAdvOrder()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMaxMinutesToAdvOrder()I

    move-result v0

    return v0
.end method

.method public getMenuTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/repository/MenuTypeRepository;->getValid(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinMinutesToAdvOrder()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMinMinutesToAdvOrder()I

    move-result v0

    return v0
.end method

.method public getOrderTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 197
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v3

    .line 205
    :goto_0
    return-object v3

    .line 200
    :cond_0
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 201
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 202
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 205
    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public getPaymentMethodForId(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .locals 1
    .param p1, "paymentId"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mcdonalds/sdk/services/data/repository/PaymentMethodRepository;->getById(ILandroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;>;"
    const/4 v2, 0x0

    .line 316
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/repository/PaymentMethodRepository;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    invoke-interface {p1, v0, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 318
    return-void
.end method

.method public getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    .line 508
    .local v0, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/Product;)D
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    .line 514
    .local v0, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getProductChoices(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductChoices(Lcom/mcdonalds/sdk/modules/models/Product;Z)Ljava/util/List;
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "getChoiceIngredients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductDimensions(Lcom/mcdonalds/sdk/modules/models/Product;I)Ljava/util/List;
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductExtras(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductExtras(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductForExternalId(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3
    .param p1, "externalId"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 409
    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method public getProductForExternalId(Ljava/lang/String;Ljava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2, "orderDate"    # Ljava/util/Date;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 414
    invoke-static {v0, v1, v2, p2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZLjava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method public getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2, "resolveProductDetailsNoDimen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 431
    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method public getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V

    .line 526
    return-void
.end method

.method public getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V
    .locals 3
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resolveProductDetailsNoDimen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 399
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getProductForExternalId(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-virtual {p0, p1, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 531
    return-void
.end method

.method public getProductForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$8;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 373
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getProductIngredients(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductsForOrdering(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "pod"    # Ljava/lang/String;
    .param p2, "menuTypeId"    # I
    .param p3, "searchQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductMap(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 337
    .local v0, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v2, 0x0

    .line 338
    .local v2, "storeId":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 339
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    .line 342
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->hasCatalogDownloaded(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 346
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->markMarketCatalogDirty(Landroid/content/Context;)V

    .line 347
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->markStoreCatalogDirty(Landroid/content/Context;I)V

    .line 348
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->requestSync()V

    .line 352
    :cond_1
    return-object v0
.end method

.method public getProductsWithExternalIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "externalIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 549
    .local v2, "productCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 550
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 551
    .local v1, "productCode":I
    aput v1, v2, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v1    # "productCode":I
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$10;

    invoke-direct {v3, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$10;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;[ILcom/mcdonalds/sdk/AsyncListener;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 564
    instance-of v5, v3, Landroid/os/AsyncTask;

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    :goto_1
    return-void

    .line 564
    :cond_1
    check-cast v3, Landroid/os/AsyncTask;

    invoke-static {v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public getStoreFromList(Ljava/util/List;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
    .param p2, "deliveryTime"    # Ljava/util/Date;
    .param p3, "isNormalOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 153
    .local p1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkStoreForOrderingSupport"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    .line 156
    .local v8, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v4

    .line 158
    .local v4, "orderAmount":D
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    move-object v2, p2

    move v3, p3

    move-object v6, p1

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getStoreFromList(Ljava/util/Date;ZDLjava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 160
    return-object v0
.end method

.method public getStoreInformation(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "checkStoreForOrderingSupport"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 147
    return-object v0
.end method

.method public getStoreOrderingCapabilties(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getStoreOrderingCapabilties"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getStoreOrderingCapabilties(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 109
    return-object v0
.end method

.method public getUpsellItems(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getUpsellItems(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 623
    return-void
.end method

.method public populateFullProductDetails(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v0, 0x0

    .line 606
    invoke-interface {p2, v0, v0, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 607
    return-void
.end method

.method public populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithStoreSpecificData(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 442
    return-void
.end method

.method public preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
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
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "preparePayment"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-interface {v1, p1, p2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 293
    return-object v0
.end method

.method public productIsInCurrentStore(I)Z
    .locals 1
    .param p1, "externalId"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->productIsInCurrentStore(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public supportsDayParts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public totalize(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v1, "totalize"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$4;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 225
    return-object v0
.end method

.method public totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "forOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;
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
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v1, "totalize"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->mConnector:Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    new-instance v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$5;

    invoke-direct {v2, p0, p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$5;-><init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 244
    return-object v0
.end method
