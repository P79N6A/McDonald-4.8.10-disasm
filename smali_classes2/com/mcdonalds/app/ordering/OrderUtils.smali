.class public Lcom/mcdonalds/app/ordering/OrderUtils;
.super Ljava/lang/Object;
.source "OrderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;,
        Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {p0, p1}, Lcom/mcdonalds/app/ordering/OrderUtils;->fromCustomerOrder(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    return-object v0
.end method

.method public static checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V
    .locals 5
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
    .local p3, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v2, "checkProductInCurrentStore"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 266
    return-void
.end method

.method public static clearTotalizeResponses(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v1, "clearTotalizeResponses"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v4, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 558
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 559
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setCheckinResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 560
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setCheckoutResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 561
    return-void
.end method

.method private static fromCustomerOrder(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 9
    .param p0, "customerOrder"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v6, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v7, "fromCustomerOrder"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v5

    aput-object p1, v8, v4

    invoke-static {v3, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Order;-><init>()V

    .line 133
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->isDelivery()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getProducts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    return-object v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 143
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 144
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v3

    sget-object v7, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-ne v3, v7, :cond_3

    move v3, v4

    .line 145
    :goto_1
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setMeal(Z)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_0

    :cond_3
    move v3, v5

    .line 146
    goto :goto_1
.end method

.method public static getErrorCount(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)I
    .locals 10
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "problematicErrorCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v7, "getErrorCount"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-static {p0, p1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicProducts(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v3

    .line 386
    .local v3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 388
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 389
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 390
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return v0
.end method

.method public static getErrorOfferCount(Ljava/util/ArrayList;Lcom/mcdonalds/sdk/modules/models/Order;)I
    .locals 6
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "problematicOfferCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v3, "getErrorOfferCount"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-static {p0, p1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOffers(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public static getNumberOfRecentOrder()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v1, "getNumberOfRecentOrder"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.numberOfRecentOrders"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.numberOfRecentOrders"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static getOrderWithOnlyAvailableItems(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 15
    .param p0, "originalOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string v10, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v11, "getOrderWithOnlyAvailableItems"

    new-array v12, v14, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-static {v9, v10, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    .line 406
    .local v4, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v8, "removeOrders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 413
    .local v7, "originalOrderProductList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 414
    .local v2, "copyOrderProductList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    .line 415
    const-string v9, "ordering"

    invoke-static {v9}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 416
    .local v6, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 417
    .local v5, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 418
    .local v1, "copyOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 419
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v5, v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 422
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 423
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 424
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 425
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v5, v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 427
    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 422
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "copyOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "i":I
    .end local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 432
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 433
    .restart local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 431
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 436
    .end local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    return-object v4
.end method

.method private static getOutOfStockProductFromChoices(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v4, "getOutOfStockProductFromChoices"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, "tempProblematicProductCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 493
    .local v0, "choiceView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x40c

    if-ne v3, v4, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->getOutOfStockProductFromChoices(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 499
    .end local v0    # "choiceView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_1
    return-object v1
.end method

.method public static getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-string v12, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v13, "getProblematicOfferCodes"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v4, "problematicProductCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v11

    if-nez v11, :cond_1

    .line 486
    :cond_0
    return-object v4

    .line 466
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v9

    .line 467
    .local v9, "responseOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v3

    .line 469
    .local v3, "mOrderOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPromotionalItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 470
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPromotionalItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    .line 471
    .local v7, "productViewAfterCheckin":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 472
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 473
    .local v5, "productCodeAfterCheckIn":I
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPromotionalItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 474
    .local v8, "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 475
    .local v6, "productCodeBeforeCheckIn":I
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 476
    .local v0, "errProductCodeAfter":I
    invoke-static {v8}, Lcom/mcdonalds/app/ordering/OrderUtils;->getOutOfStockProductFromChoices(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    if-ne v6, v5, :cond_3

    const/16 v11, -0x40c

    if-ne v0, v11, :cond_3

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setValidationErrorCode(Ljava/lang/Integer;)V

    .line 479
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 480
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "errProductCodeAfter":I
    .end local v5    # "productCodeAfterCheckIn":I
    .end local v6    # "productCodeBeforeCheckIn":I
    .end local v8    # "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .restart local v0    # "errProductCodeAfter":I
    .restart local v5    # "productCodeAfterCheckIn":I
    .restart local v6    # "productCodeBeforeCheckIn":I
    .restart local v8    # "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getProblematicOffers(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;
    .locals 15
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "problematicOfferCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const-string v11, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v12, "getProblematicOffers"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v8, "orderOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "alreadyAdded":Z
    if-eqz p0, :cond_5

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_0
    if-ge v1, v9, :cond_5

    .line 310
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 313
    .local v4, "offerCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 314
    .local v7, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 315
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v0, 0x1

    .line 318
    :cond_1
    if-nez v0, :cond_0

    .line 319
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 320
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 321
    .local v5, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 322
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 323
    .local v6, "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 324
    if-nez v0, :cond_2

    .line 325
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const/4 v0, 0x1

    .line 321
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 319
    .end local v6    # "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v5    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v7    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    .end local v4    # "offerCode":Ljava/lang/String;
    .end local v9    # "size":I
    :cond_5
    return-object v8
.end method

.method public static getProblematicProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    const-string v16, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v17, "getProblematicProductCodes"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    const/16 v19, 0x1

    aput-object p1, v18, v19

    invoke-static/range {v15 .. v18}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v7, "problematicProductCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v15

    if-nez v15, :cond_1

    .line 539
    :cond_0
    return-object v7

    .line 510
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v13

    .line 511
    .local v13, "responseOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v5

    .line 513
    .local v5, "mOrderOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "size":I
    :goto_0
    if-ge v3, v14, :cond_0

    .line 514
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 515
    .local v11, "productViewAfterCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 516
    .local v9, "productCodeAfterCheckIn":I
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "prodSize":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 517
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 518
    .local v12, "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 520
    .local v10, "productCodeBeforeCheckIn":I
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 522
    .local v2, "errProductCodeAfter":I
    if-ne v10, v9, :cond_4

    const/16 v15, -0x40c

    if-ne v2, v15, :cond_4

    .line 523
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setValidationErrorCode(Ljava/lang/Integer;)V

    .line 524
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 525
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_2
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v15}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 528
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 529
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-static {v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->loopOverChoiceSolutionsForErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;

    move-result-object v6

    .line 530
    .local v6, "problematicChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 531
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 516
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v6    # "problematicChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 513
    .end local v2    # "errProductCodeAfter":I
    .end local v10    # "productCodeBeforeCheckIn":I
    .end local v12    # "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public static getProblematicProducts(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;
    .locals 14
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "problematicProductsCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const-string v10, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v11, "getProblematicProducts"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v9, v10, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v5, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz p0, :cond_7

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_7

    .line 345
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 347
    .local v4, "productCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 348
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 349
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 350
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 351
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 352
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    .line 355
    .local v8, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 356
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_2
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 359
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 360
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 361
    .local v7, "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 362
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v7    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    instance-of v10, v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v10, :cond_4

    .line 366
    check-cast v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    .end local v8    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 367
    .restart local v7    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 368
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v7    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 374
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "j":I
    :cond_5
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 375
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 344
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 381
    .end local v1    # "i":I
    .end local v4    # "productCode":Ljava/lang/String;
    .end local v6    # "size":I
    :cond_7
    return-object v5
.end method

.method public static getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;
    .locals 7
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v4, "getTotalEnergyUnit"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v2

    .line 234
    :goto_0
    return-object v2

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 224
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 226
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 234
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method public static isProductBagProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 10
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v8, "isProductBagProduct"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p0, v9, v5

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    .line 447
    .local v1, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 448
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 450
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 452
    .local v2, "productCode":I
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v6

    if-eq v2, v6, :cond_0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v6

    if-ne v2, v6, :cond_1

    .line 456
    .end local v2    # "productCode":I
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private static loopOverChoiceSolutionsForErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "choice"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v4, "loopOverChoiceSolutionsForErrorCodes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v1, "tempProblematicChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x40c

    if-ne v2, v3, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 549
    .local v0, "subChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->loopOverChoiceSolutionsForErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 552
    .end local v0    # "subChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_1
    return-object v1
.end method

.method public static orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 10
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v7, "orderHasUnavailableProductsOrIsEmpty"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "hasUnavailableProducts":Z
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 242
    .local v3, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 247
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 248
    const/4 v1, 0x1

    .line 250
    :cond_2
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 251
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, "productCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v2, v3, v4}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 254
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v4    # "productCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return v1
.end method

.method public static ordersFromCustomerOrders(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "customerOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v3, "ordersFromCustomerOrders"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

    invoke-direct {v0, p0, p1, v6, p2}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;-><init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V

    .line 70
    .local v0, "thread":Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->start()V

    .line 71
    return-void
.end method

.method public static ordersFromFavoriteItems(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 8
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.OrderUtils"

    const-string v3, "ordersFromFavoriteItems"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;

    invoke-direct {v0, p0, p1, v7, p2}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;-><init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V

    .line 52
    .local v0, "task":Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;
    new-array v1, v6, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    .end local v0    # "task":Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;
    :goto_0
    return-void

    .line 52
    .restart local v0    # "task":Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
