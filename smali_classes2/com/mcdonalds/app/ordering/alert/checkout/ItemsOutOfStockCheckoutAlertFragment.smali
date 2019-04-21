.class public Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;
.source "ItemsOutOfStockCheckoutAlertFragment.java"


# instance fields
.field protected mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

.field protected mItemList:Landroid/support/v7/widget/RecyclerView;

.field protected mProblematicOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblematicOffersCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblematicProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblematicProductsCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const v0, 0x7f04009d

    return v0
.end method

.method public getProblematicOffers()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v8, "getProblematicOffers"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v5, "orderOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 91
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "offerCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 94
    .local v3, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v1    # "offerCode":Ljava/lang/String;
    .end local v7    # "size":I
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProductsCodes:Ljava/util/List;

    if-eqz v8, :cond_7

    .line 102
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProductsCodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 103
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProductsCodes:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 104
    .local v6, "productCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 105
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 106
    .restart local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 108
    .local v4, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 109
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 110
    .local v2, "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 112
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 113
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    .end local v2    # "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .end local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v4    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 125
    .end local v0    # "i":I
    .end local v6    # "productCode":Ljava/lang/String;
    :cond_7
    return-object v5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProductsCodes:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getOutOfStockAndUnavailableProducts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProducts:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getProblematicOffers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffers:Ljava/util/List;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f1100eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    .line 60
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getProblematicOffersNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    new-instance v3, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    .line 68
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    return-object v2
.end method

.method public onPositiveButtonClicked()V
    .locals 9

    .prologue
    const-string v7, "onPositiveButtonClicked"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.ordering.removedOutOfStockProductsInCheckout"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    .line 138
    .local v6, "removeItems":Z
    if-eqz v6, :cond_3

    .line 139
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    .line 140
    .local v4, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 142
    .local v0, "mOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getProblematicProductsCodes()Ljava/util/List;

    move-result-object v5

    .line 143
    .local v5, "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    .local v3, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 146
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 147
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 152
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->mProblematicOffers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 153
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    goto :goto_1

    .line 156
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 162
    .end local v0    # "mOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v3    # "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v4    # "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .end local v5    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 163
    return-void

    .line 159
    .restart local v0    # "mOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .restart local v3    # "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .restart local v4    # "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .restart local v5    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    goto :goto_2
.end method
