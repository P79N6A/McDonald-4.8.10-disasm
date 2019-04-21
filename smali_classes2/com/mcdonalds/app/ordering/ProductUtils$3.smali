.class final Lcom/mcdonalds/app/ordering/ProductUtils$3;
.super Ljava/lang/Object;
.source "ProductUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ProductUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$baseOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$productCode:I


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/ProductUtils$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 10
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v5, "onResponse"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "advertisableDeal":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    .line 422
    .local v4, "promotion":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->getBaseProductId()I

    move-result v6

    iget v7, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$productCode:I

    if-ne v6, v7, :cond_2

    .line 423
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->isValidForToday()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    move-object v0, v4

    .line 438
    .end local v4    # "promotion":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    :cond_1
    if-eqz v0, :cond_3

    .line 439
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 441
    .local v1, "module":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->getSwapProductId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 442
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v3, :cond_3

    .line 443
    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisablePromotion(Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;)V

    .line 444
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$baseOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 445
    .local v2, "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$baseOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v5, v2}, Lcom/mcdonalds/app/ordering/ProductUtils;->access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 447
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v5, v2, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 452
    .end local v1    # "module":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v2    # "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :goto_0
    return-void

    .line 427
    .restart local v4    # "promotion":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    :cond_2
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->getSwapProductId()I

    move-result v6

    iget v7, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$productCode:I

    if-ne v6, v7, :cond_0

    .line 428
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->isValidForToday()Z

    move-result v5

    if-nez v5, :cond_1

    .line 429
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$baseOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v5, v6}, Lcom/mcdonalds/app/ordering/ProductUtils;->getBaseOrderProductFromAdvertisable(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 451
    .end local v4    # "promotion":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductUtils$3;->val$baseOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-interface {v5, v6, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
