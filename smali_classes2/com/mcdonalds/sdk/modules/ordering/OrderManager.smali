.class public Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
.super Ljava/lang/Object;
.source "OrderManager.java"


# static fields
.field private static final CONFIG_ALLOW_DOWN_CHARGE_DELIVERY:Ljava/lang/String; = "modules.delivery.allowDownCharge"

.field private static final CONFIG_ALLOW_DOWN_CHARGE_ORDERING:Ljava/lang/String; = "modules.ordering.allowDownCharge"

.field private static sOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;


# instance fields
.field private mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->checkProductAvailability(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    return-void
.end method

.method private static checkProductAvailability(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V
    .locals 5
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 341
    if-nez p0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 351
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v0, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->checkProductAvailability(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 352
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 349
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "i":I
    :cond_3
    instance-of v3, p0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v3, :cond_4

    move-object v0, p0

    .line 358
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 359
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 360
    .local v2, "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_4

    .line 361
    invoke-static {v2, p1, p2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->checkProductAvailability(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 362
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 363
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->setUnavailable(Z)V

    .line 371
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_5
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    goto :goto_2
.end method

.method public static checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V
    .locals 2
    .param p0, "subProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p3, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 383
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    goto :goto_0
.end method

.method private static getChoiceList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    if-eqz p0, :cond_1

    .line 413
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 414
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    instance-of v3, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v3, :cond_0

    .line 415
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_1
    return-object v1
.end method

.method private static getChoicesCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    const/4 v1, 0x0

    .line 397
    .local v1, "result":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 398
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    add-int/lit8 v1, v1, 0x1

    .line 400
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_1
    return v1
.end method

.method public static getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->sOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->sOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->sOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    return-object v0
.end method

.method private getNoBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4

    .prologue
    .line 195
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 196
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 197
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v1

    .line 199
    .local v1, "noBagProductCode":I
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getOrderProductInOrder(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 201
    .end local v1    # "noBagProductCode":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getOrderProductInOrder(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p1, "productCode"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 208
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 209
    .local v1, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 213
    .end local v1    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDeliveryOrder()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 263
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    const/4 v1, 0x0

    .line 277
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Order;-><init>()V

    .line 268
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 269
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 272
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 273
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeOrderProductFromOrder(I)V
    .locals 4
    .param p1, "productCode"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 219
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 221
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 222
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    goto :goto_0

    .line 226
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return-void
.end method

.method public static updateProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 6
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setUnavailableProductCodes(Ljava/util/List;)V

    .line 306
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 308
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 309
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;

    invoke-direct {v5, v0, v1, v2, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {v1, v4, v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 338
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public static updateProductsForOrder(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 285
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 286
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-interface {p0, v3, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 300
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$1;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 299
    .local v1, "outerCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncCounter;)V

    goto :goto_0
.end method


# virtual methods
.method public allowBagCharges()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 169
    const-string v7, "customer"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 170
    .local v2, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 172
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v6

    .line 176
    :cond_1
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v0

    .line 177
    .local v0, "bagChargeEnabled":Z
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v1

    .line 178
    .local v1, "bagProductCode":I
    const-string v7, "ordering"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 179
    .local v3, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v5

    .line 180
    .local v5, "storeHasProduct":Z
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public allowDownCharge()Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 246
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v1

    return v1
.end method

.method public allowDownCharge(Lcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 2
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const-string v0, "modules.ordering.allowDownCharge"

    .line 258
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 255
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, "modules.delivery.allowDownCharge"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method public cleanBagsFromOrder()V
    .locals 5

    .prologue
    .line 233
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 234
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 235
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v0

    .line 237
    .local v0, "bagProductCode":I
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v2

    .line 239
    .local v2, "noBagProductCode":I
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->removeOrderProductFromOrder(I)V

    .line 240
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->removeOrderProductFromOrder(I)V

    .line 242
    .end local v0    # "bagProductCode":I
    .end local v2    # "noBagProductCode":I
    :cond_0
    return-void
.end method

.method public deleteCurrentOrder()V
    .locals 4

    .prologue
    .line 91
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 93
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isDeliveryOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 95
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 96
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 97
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 99
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 101
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 107
    .end local v1    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 110
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v2

    const-string v3, "com.mcdonalds.notification.ORDER_CHANGED_NOTIFICATION"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 111
    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    goto :goto_0
.end method

.method public deleteCurrentOrderAndAddress()V
    .locals 3

    .prologue
    .line 118
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 121
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 124
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 127
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "com.mcdonalds.notification.ORDER_CHANGED_NOTIFICATION"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public getBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4

    .prologue
    .line 184
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 185
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 186
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v0

    .line 188
    .local v0, "bagProductCode":I
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getOrderProductInOrder(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 190
    .end local v0    # "bagProductCode":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 4

    .prologue
    .line 58
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 59
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "Customer Module unavailable"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v2, :cond_1

    .line 65
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 67
    .local v1, "savedOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v1, :cond_4

    .line 68
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 77
    .end local v1    # "savedOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v2, :cond_3

    .line 81
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v2

    .line 70
    .restart local v1    # "savedOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_4
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->newOrder(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    goto :goto_0
.end method

.method public getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isDeliveryOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 145
    :cond_0
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 146
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxBasketQuantity()I
    .locals 4

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isDeliveryOrder()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "delivery"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 159
    .local v0, "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getMaxBasketQuantity()I

    move-result v2

    .line 165
    .end local v0    # "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    .local v2, "ret":I
    :goto_0
    return v2

    .line 161
    .end local v2    # "ret":I
    :cond_0
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 162
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMaxBasketQuantity()I

    move-result v2

    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public isBagChargeAdded()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getNoBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 2
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 138
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->mCurrentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 139
    return-void
.end method
