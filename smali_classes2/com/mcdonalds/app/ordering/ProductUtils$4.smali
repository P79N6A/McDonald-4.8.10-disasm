.class final Lcom/mcdonalds/app/ordering/ProductUtils$4;
.super Ljava/lang/Object;
.source "ProductUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ProductUtils;->getBaseOrderProductFromAdvertisable(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$productCode:I


# direct methods
.method constructor <init>(ILcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 473
    iput p1, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$productCode:I

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

    .line 473
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/ProductUtils$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    .line 478
    .local v0, "advertisableDeal":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->getSwapProductId()I

    move-result v5

    iget v6, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$productCode:I

    if-ne v5, v6, :cond_0

    .line 479
    const-string v4, "ordering"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 481
    .local v1, "module":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->getBaseProductId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 482
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisablePromotion(Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;)V

    .line 484
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 485
    .local v2, "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v4, v2}, Lcom/mcdonalds/app/ordering/ProductUtils;->access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 486
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v4, v2, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 493
    .end local v0    # "advertisableDeal":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    .end local v1    # "module":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v2    # "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductUtils$4;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-interface {v4, v5, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 494
    return-void
.end method
