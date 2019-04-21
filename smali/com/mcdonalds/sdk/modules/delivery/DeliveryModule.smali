.class public Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "DeliveryModule.java"


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final NAME:Ljava/lang/String; = "delivery"

.field public static final ORDERING_NAME:Ljava/lang/String; = "ordering"


# instance fields
.field private final mDeliveryConnectorImpl:Ljava/lang/String;

.field private mNeedsToUpdateDeliveryTracking:Z

.field private final mOrderingConnectorImpl:Ljava/lang/String;

.field private final mScheduledOrders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    .line 55
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.ordering.connector"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.delivery.connector"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mDeliveryConnectorImpl:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->requestSync(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    return-object v0
.end method

.method private getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    return-object v0
.end method

.method private getDeliveryStatusFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
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
    .line 252
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "getDeliveryStatus"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 255
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OrderingConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 266
    return-object v1
.end method

.method private requestSync(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v4, 0x1

    .line 111
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "settingsBundle":Landroid/os/Bundle;
    const-string v3, "force"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-string v3, "expedited"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const-string v3, "sync_option_store_id"

    .line 117
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 120
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 126
    .local v0, "account":Landroid/accounts/Account;
    const-string v3, "com.mcdonalds.gma.hongkong.provider"

    invoke-static {v0, v3, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    return-void
.end method


# virtual methods
.method public checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 179
    .local p4, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "checkout"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 182
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OrderingConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$4;

    invoke-direct {v2, p0, p4, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$4;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 189
    return-object v1
.end method

.method public clearModuleCacheData()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    .line 248
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    return-void
.end method

.method public getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;>;"
    const/4 v3, 0x0

    .line 222
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "getDeliveryStatus"

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-boolean v4, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    if-eqz v4, :cond_0

    .line 225
    new-instance v3, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatusFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 242
    .end local v0    # "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    :goto_0
    return-object v0

    .line 234
    .restart local v0    # "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, "scheduledOrdersList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "orderId":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v1    # "orderId":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v2, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    move-object v0, v3

    .line 239
    goto :goto_0
.end method

.method public getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "orderNumber"    # Ljava/lang/String;
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
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    const/4 v3, 0x0

    .line 201
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "getDeliveryStatus"

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    if-eqz v2, :cond_0

    .line 204
    new-instance v2, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$5;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatusFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mScheduledOrders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;

    .line 214
    .local v1, "response":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    invoke-interface {p2, v1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "deliveryAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "deliveryTime"    # Ljava/util/Date;
    .param p3, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 76
    .line 77
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "deliveryAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "deliveryTime"    # Ljava/util/Date;
    .param p3, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p4, "isNormalOrder"    # Z
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 93
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getDeliveryStore"

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 94
    .local v6, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mDeliveryConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/DeliveryConnector;

    .line 97
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/DeliveryConnector;
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;

    invoke-direct {v5, p0, p5, v6}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/DeliveryConnector;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 107
    return-object v6
.end method

.method public getMaxBasketQuantity()I
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 278
    .local v0, "orderingConnector":Lcom/mcdonalds/sdk/connectors/OrderingConnector;
    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->getMaxBasketQuantity()I

    move-result v1

    return v1
.end method

.method public lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
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
    .line 155
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "lookupDeliveryCharge"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 158
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OrderingConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$3;

    invoke-direct {v2, p0, p2, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$3;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v0, p1, v2}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 165
    return-object v1
.end method

.method public needsToUpdateDeliveryTracking()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    return v0
.end method

.method public setNeedsToUpdateDeliveryTracking(Z)V
    .locals 0
    .param p1, "needsToUpdateDeliveryTracking"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mNeedsToUpdateDeliveryTracking:Z

    .line 198
    return-void
.end method

.method public supportsDayParts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
    .line 134
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderResponse;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v2, "validate"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->mOrderingConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OrderingConnector;

    .line 137
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OrderingConnector;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$2;-><init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v0, v2, v3}, Lcom/mcdonalds/sdk/connectors/OrderingConnector;->validate(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 144
    return-object v1
.end method
