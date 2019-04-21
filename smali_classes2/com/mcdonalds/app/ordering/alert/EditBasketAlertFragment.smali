.class public abstract Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.source "EditBasketAlertFragment.java"


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field protected mProblematicProductsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    return-void
.end method

.method private isOutOfStock(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isOutOfStock"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 136
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 137
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    .line 139
    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v2

    const/16 v3, -0x40c

    if-ne v2, v3, :cond_0

    .line 135
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 139
    goto :goto_0
.end method


# virtual methods
.method protected getOutOfStockAndUnavailableProducts()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const-string v8, "getOutOfStockAndUnavailableProducts"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v5, "problematicProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v8, :cond_8

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 64
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v6, "problematicSubProductsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 66
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 67
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 68
    .local v7, "subChoice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->isOutOfStock(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v10, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v13}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v7}, Lcom/mcdonalds/app/util/OrderProductUtils;->getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 76
    .local v1, "component":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->isOutOfStock(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 77
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v10, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v13}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 86
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "component":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v7    # "subChoice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->isOutOfStock(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 87
    :cond_6
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    new-instance v10, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    invoke-direct {v10, v11, v12, v13}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_7
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 93
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "problematicSubProductsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    :cond_8
    return-object v5
.end method

.method protected getProblematicOffersNames(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "problematicOfferCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "getProblematicOffersNames"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v10, "productNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "choiceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_6

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v2, v11, :cond_4

    .line 102
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    .local v5, "offerCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 108
    .local v6, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 109
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 110
    .local v7, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 111
    new-instance v12, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v12, v14, v15, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 113
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    .end local v7    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 117
    new-instance v12, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v12, v14, v15, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 101
    .end local v3    # "j":I
    .end local v6    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 122
    .end local v5    # "offerCode":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 124
    .local v9, "productCode":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/McDonaldsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    .line 125
    .local v8, "outOfStockChoiceProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v8, :cond_5

    .line 126
    new-instance v13, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 131
    .end local v2    # "i":I
    .end local v8    # "outOfStockChoiceProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v9    # "productCode":Ljava/lang/String;
    .end local v11    # "size":I
    :cond_6
    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mBundle:Landroid/os/Bundle;

    .line 35
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 36
    return-void
.end method

.method public onNegativeButtonClicked()V
    .locals 4

    .prologue
    const-string v0, "onNegativeButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mBundle:Landroid/os/Bundle;

    .line 55
    :cond_0
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->mBundle:Landroid/os/Bundle;

    const/16 v3, 0x13

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->onResume()V

    .line 41
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 42
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->haveProducts()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 46
    :cond_0
    return-void
.end method
