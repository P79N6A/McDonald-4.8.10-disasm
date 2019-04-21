.class public Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "CheckoutActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;
.implements Lcom/mcdonalds/app/ordering/checkout/CheckoutView;


# instance fields
.field private choose_payment_label:Landroid/widget/TextView;

.field private iv_ali_img:Landroid/widget/ImageView;

.field private mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

.field private mListView:Landroid/widget/ListView;

.field private mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

.field private mNonProductOfferNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

.field private mUnavailableProductCodes:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mNonProductOfferNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    return-object v0
.end method

.method private buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 11
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v10, 0x0

    const-string v7, "buildCustomizationString"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v5, ", "

    .line 249
    .local v5, "separator":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v2

    .line 250
    .local v2, "hideSingleChoice":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 251
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v8

    if-nez v8, :cond_0

    .line 255
    :cond_1
    invoke-static {v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 257
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 262
    .local v6, "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v6}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 263
    .local v1, "choiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "choiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v10, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method private checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 9
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "checkDisplaySizeSelection"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 571
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 572
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 573
    .local v4, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 574
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 575
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/mcdonalds/sdk/services/data/repository/StoreProductCategoryRepository;->getCategoryByStoreProduct(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v1

    .line 580
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    .line 581
    .local v0, "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getDisplaySizeSelection()I

    move-result v8

    if-eqz v8, :cond_0

    .line 587
    .end local v0    # "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    .end local v1    # "category":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private createBasketItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "createBasketItems"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v3, :cond_0

    .line 231
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 219
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 223
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 225
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 229
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private createMultiplePODsUnavailableMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "pods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "createMultiplePODsUnavailableMessage"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getRemainingPODs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 635
    .local v1, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "name":Ljava/lang/String;
    const v2, 0x7f090403

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;
    .locals 14
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "createOfferItems"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object p1, v11, v9

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v10

    sget-object v11, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v10, v11, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v4

    .line 311
    :cond_1
    const/4 v7, 0x0

    .line 312
    .local v7, "priceIschanged":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 315
    .local v6, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    if-nez v0, :cond_3

    move v3, v8

    .line 316
    .local v3, "isHeader":Z
    :goto_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_4

    move v2, v8

    .line 317
    .local v2, "isFooter":Z
    :goto_3
    new-instance v5, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 318
    .local v5, "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    invoke-virtual {v5, p1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPriceChanged(Z)V

    .line 320
    if-nez v3, :cond_5

    move v10, v8

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 321
    if-eqz v3, :cond_6

    .line 322
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 323
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 324
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 328
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 329
    if-eqz v2, :cond_7

    .line 330
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 331
    invoke-static {p1}, Lcom/mcdonalds/app/util/OrderOfferUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferTotalValue()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 336
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 337
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-direct {p0, v5, v10, v9}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 338
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 339
    .local v1, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 342
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v1    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "isFooter":Z
    .end local v3    # "isHeader":Z
    .end local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_3
    move v3, v9

    .line 315
    goto/16 :goto_2

    .restart local v3    # "isHeader":Z
    :cond_4
    move v2, v9

    .line 316
    goto/16 :goto_3

    .restart local v2    # "isFooter":Z
    .restart local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_5
    move v10, v9

    .line 320
    goto :goto_4

    .line 326
    :cond_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 334
    :cond_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 345
    .end local v0    # "i":I
    .end local v2    # "isFooter":Z
    .end local v3    # "isHeader":Z
    .end local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v6    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mNonProductOfferNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 45
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v42, "createProductItems"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object p1, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v25, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-nez v42, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v38

    .line 355
    .local v38, "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_0
    const/16 v34, 0x1

    .line 356
    .local v34, "productErrorCode":I
    const/4 v14, 0x0

    .line 358
    .local v14, "hasError":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_1

    .line 359
    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v35

    .line 360
    .local v35, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 358
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 353
    .end local v14    # "hasError":Z
    .end local v16    # "i":I
    .end local v34    # "productErrorCode":I
    .end local v35    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v38    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v38

    goto :goto_0

    .line 363
    .restart local v14    # "hasError":Z
    .restart local v16    # "i":I
    .restart local v34    # "productErrorCode":I
    .restart local v38    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    if-eqz v42, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v42

    if-eqz v42, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v39

    .line 365
    .local v39, "validationErrorCode":I
    const/16 v42, 0x1

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 366
    const/4 v14, 0x1

    .line 367
    move/from16 v34, v39

    .line 370
    .end local v39    # "validationErrorCode":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-eqz v42, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 371
    const/4 v14, 0x1

    .line 372
    const/16 v34, -0x3ff

    .line 375
    :cond_3
    const/16 v19, 0x0

    .line 376
    .local v19, "ingredientsSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v42

    if-eqz v42, :cond_4

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v19

    .line 380
    :cond_4
    const/16 v16, 0x0

    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_26

    .line 382
    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v35

    .line 383
    .restart local v35    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v9

    .line 384
    .local v9, "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v9, :cond_5

    .line 385
    move-object/from16 v35, v9

    .line 387
    :cond_5
    const/16 v42, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setOutOfStock(Z)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-eqz v42, :cond_9

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-eqz v42, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 392
    const/4 v14, 0x1

    .line 395
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    if-eqz v42, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v42

    if-eqz v42, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v42

    const/16 v43, -0x40c

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 397
    const/16 v42, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setOutOfStock(Z)V

    .line 398
    const/4 v14, 0x1

    .line 402
    :cond_7
    move/from16 v7, v16

    .line 403
    .local v7, "choiceIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-nez v42, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_8

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v42

    sub-int v7, v7, v42

    .line 406
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-le v0, v7, :cond_9

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 408
    .local v10, "choiceSubProduct":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v8

    .line 409
    .local v8, "choiceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v8}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-nez v42, :cond_9

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 410
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v42

    if-eqz v42, :cond_9

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v42

    if-eqz v42, :cond_9

    .line 380
    .end local v8    # "choiceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v10    # "choiceSubProduct":Lcom/mcdonalds/sdk/modules/models/Choice;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 417
    .end local v7    # "choiceIndex":I
    :cond_9
    const/16 v42, -0x178b

    move/from16 v0, v34

    move/from16 v1, v42

    if-ne v0, v1, :cond_a

    .line 418
    const/4 v14, 0x1

    .line 421
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-nez v42, :cond_c

    const/16 v42, 0x1

    move/from16 v0, v34

    move/from16 v1, v42

    if-ne v0, v1, :cond_c

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v29

    .line 423
    .local v29, "oldPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v28

    .line 424
    .local v28, "newPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_b
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_c

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 425
    .local v32, "oldProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_b

    .line 426
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v30

    .line 427
    .local v30, "oldPrice":D
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v26

    .line 428
    .local v26, "newPrice":D
    cmpl-double v43, v30, v26

    if-eqz v43, :cond_b

    .line 429
    const/4 v14, 0x1

    .line 430
    const/16 v34, -0x178b

    .line 437
    .end local v26    # "newPrice":D
    .end local v28    # "newPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .end local v29    # "oldPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .end local v30    # "oldPrice":D
    .end local v32    # "oldProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_c
    if-nez v16, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-eqz v42, :cond_1b

    const/16 v22, 0x1

    .line 438
    .local v22, "isHeader":Z
    :goto_4
    if-nez v16, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-nez v42, :cond_1c

    const/16 v20, 0x1

    .line 439
    .local v20, "isDivider":Z
    :goto_5
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v16

    move/from16 v1, v42

    if-ne v0, v1, :cond_1d

    const/16 v21, 0x1

    .line 441
    .local v21, "isFooter":Z
    :goto_6
    const/16 v23, 0x0

    .line 443
    .local v23, "isUnavailable":Z
    new-instance v24, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct/range {v24 .. v24}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 444
    .local v24, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v42

    if-eqz v42, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v42

    if-eqz v42, :cond_1e

    :cond_d
    if-eqz v22, :cond_1e

    .line 447
    const/16 v23, 0x1

    .line 448
    const/16 v42, -0x3ff

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 463
    :cond_e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTimeRestriction(Lcom/mcdonalds/sdk/modules/models/TimeRestriction;)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestrictions()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTimeRestrictions(Ljava/util/List;)V

    .line 467
    if-nez v22, :cond_21

    const/16 v42, 0x1

    :goto_8
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 469
    if-eqz v22, :cond_22

    .line 471
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 474
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 477
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 479
    if-eqz v14, :cond_10

    .line 480
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v42

    if-nez v42, :cond_f

    .line 481
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealHeaderNonErrorWarningItem(Z)V

    .line 483
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 489
    :cond_10
    :goto_9
    if-nez v20, :cond_23

    const/16 v42, 0x1

    :goto_a
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 492
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderDetailsText(Ljava/lang/String;)V

    .line 498
    :cond_11
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 499
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 503
    .local v15, "hasMeal":Ljava/lang/Boolean;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v42

    if-eqz v42, :cond_24

    .line 504
    const-string v33, "Delivery"

    .line 508
    .local v33, "pod":Ljava/lang/String;
    :goto_b
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v42

    const-string v43, "interface.ordering.filterDimenPod"

    invoke-virtual/range {v42 .. v43}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v13

    .line 510
    .local v13, "filterDimenPod":Z
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-nez v42, :cond_17

    if-nez v23, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v42

    if-eqz v42, :cond_17

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v12

    .line 512
    .local v12, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-eqz v12, :cond_15

    .line 513
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_12
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_15

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    .line 515
    .local v11, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    if-eqz v13, :cond_13

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 519
    :cond_13
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v43

    sget-object v44, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_12

    if-eqz v13, :cond_14

    .line 520
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v43

    .line 521
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_12

    .line 523
    :cond_14
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 529
    .end local v11    # "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    :cond_15
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_17

    if-nez v22, :cond_16

    if-eqz v20, :cond_17

    .line 530
    :cond_16
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 535
    .end local v12    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    :cond_17
    if-nez v16, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-nez v42, :cond_25

    const/16 v18, 0x1

    .line 536
    .local v18, "includeQuantity":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 538
    sub-int v7, v16, v19

    .line 539
    .restart local v7    # "choiceIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-eqz v42, :cond_18

    if-nez v22, :cond_18

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v42

    if-eqz v42, :cond_18

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-le v0, v7, :cond_18

    if-ltz v7, :cond_18

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 545
    .local v6, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v36

    .line 546
    .local v36, "productPrice":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v4

    .line 547
    .local v4, "basePrice":D
    sub-double v40, v36, v4

    .line 548
    .local v40, "uplift":D
    move-object/from16 v0, v24

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemUplift(D)V

    .line 553
    .end local v4    # "basePrice":D
    .end local v6    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v36    # "productPrice":D
    .end local v40    # "uplift":D
    :cond_18
    move-object/from16 v17, v35

    .line 554
    .local v17, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    move/from16 v42, v0

    if-eqz v42, :cond_19

    move-object/from16 v42, v35

    .line 555
    check-cast v42, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual/range {v42 .. v42}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v17

    .line 557
    :cond_19
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v42

    if-nez v42, :cond_1a

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->validatePODs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 563
    :cond_1a
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 437
    .end local v7    # "choiceIndex":I
    .end local v13    # "filterDimenPod":Z
    .end local v15    # "hasMeal":Ljava/lang/Boolean;
    .end local v17    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v18    # "includeQuantity":Z
    .end local v20    # "isDivider":Z
    .end local v21    # "isFooter":Z
    .end local v22    # "isHeader":Z
    .end local v23    # "isUnavailable":Z
    .end local v24    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v33    # "pod":Ljava/lang/String;
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 438
    .restart local v22    # "isHeader":Z
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 439
    .restart local v20    # "isDivider":Z
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 449
    .restart local v21    # "isFooter":Z
    .restart local v23    # "isUnavailable":Z
    .restart local v24    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-eqz v42, :cond_1f

    if-eqz v14, :cond_1f

    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v42

    if-eqz v42, :cond_1f

    .line 450
    const/16 v42, -0x3ff

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 451
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailable(Z)V

    .line 452
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 453
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealErrorItem(Z)V

    goto/16 :goto_7

    .line 454
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-eqz v42, :cond_20

    if-eqz v14, :cond_20

    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isOutOfStock()Z

    move-result v42

    if-eqz v42, :cond_20

    .line 455
    const/16 v42, -0x40c

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 456
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 457
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 458
    const/16 v42, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealErrorItem(Z)V

    goto/16 :goto_7

    .line 459
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v42

    if-nez v42, :cond_e

    if-eqz v14, :cond_e

    .line 460
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    goto/16 :goto_7

    .line 467
    :cond_21
    const/16 v42, 0x0

    goto/16 :goto_8

    .line 486
    :cond_22
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_9

    .line 489
    :cond_23
    const/16 v42, 0x0

    goto/16 :goto_a

    .line 506
    .restart local v15    # "hasMeal":Ljava/lang/Boolean;
    :cond_24
    const-string v33, "Pickup"

    .restart local v33    # "pod":Ljava/lang/String;
    goto/16 :goto_b

    .line 535
    .restart local v13    # "filterDimenPod":Z
    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 566
    .end local v9    # "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v13    # "filterDimenPod":Z
    .end local v15    # "hasMeal":Ljava/lang/Boolean;
    .end local v20    # "isDivider":Z
    .end local v21    # "isFooter":Z
    .end local v22    # "isHeader":Z
    .end local v23    # "isUnavailable":Z
    .end local v24    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v33    # "pod":Ljava/lang/String;
    .end local v35    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_26
    return-object v25
.end method

.method private getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "getSubProduct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-eq v1, v2, :cond_0

    .line 238
    move-object v0, p1

    .line 242
    .local v0, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    return-object v0

    .line 240
    .end local v0    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .restart local v0    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method private hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 7
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "hasNonSingleChoiceItems"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v0

    .line 643
    .local v0, "hideSingleChoice":Z
    if-nez v0, :cond_0

    .line 654
    :goto_0
    return v3

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 647
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 648
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 649
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_2
    move v3, v4

    .line 654
    goto :goto_0
.end method

.method private isAli(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 4
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v1, "isAli"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "paymentMethodDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const v1, 0x7f0900cb

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u652f\u4ed8\u5bf6"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromCashPayment(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 199
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 201
    :cond_1
    return-void
.end method

.method private isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v3, "isUnavailableProductItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "retValue":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 295
    .local v1, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    :cond_2
    return v0
.end method

.method private navigateToPayment()V
    .locals 3

    .prologue
    const-string v0, "navigateToPayment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    const-class v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .line 843
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x14

    .line 841
    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 846
    return-void
.end method

.method private setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V
    .locals 7
    .param p1, "productErrorCode"    # I
    .param p2, "newItem"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "setErrorFlag"

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v3

    aput-object p2, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p2, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 662
    const/16 v1, -0x178b

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceChanged(Z)V

    .line 664
    const/16 v1, -0x40c

    if-ne p1, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 665
    const/16 v1, -0x1f42

    if-eq p1, v1, :cond_0

    const/16 v1, -0x1f43

    if-ne p1, v1, :cond_1

    .line 667
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPODErrorCode(I)V

    .line 670
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v4, -0x438

    .line 671
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, -0x3ff

    .line 672
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, -0x40b

    .line 673
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 670
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 675
    .local v0, "unavailableErrorCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailable(Z)V

    .line 676
    return-void

    .end local v0    # "unavailableErrorCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    move v1, v3

    .line 662
    goto :goto_0

    :cond_3
    move v1, v3

    .line 664
    goto :goto_1
.end method

.method private subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "subProducts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 279
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_1
    return-object v1
.end method

.method private updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "includeQuantity"    # Z

    .prologue
    const-string v0, "updateItemData"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    if-eqz p3, :cond_3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    invoke-static {p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemInstructions(Ljava/lang/String;)V

    .line 604
    :cond_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderDetailsText(Ljava/lang/String;)V

    .line 608
    :cond_2
    return-void

    .line 596
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validatePODs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/basket/BasketListItem;)V
    .locals 8
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "item"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "validatePODs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v3

    .line 613
    .local v3, "productPODs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODsLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 616
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 618
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 619
    .local v2, "pod":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "name":Ljava/lang/String;
    const v4, 0x7f0903d3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pod":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailablePODMessage(Ljava/lang/String;)V

    .line 630
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 625
    :cond_1
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->createMultiplePODsUnavailableMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public navigateToAccountCardsPage()V
    .locals 2

    .prologue
    const-string v0, "navigateToAccountCardsPage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    const-class v0, Lcom/mcdonalds/app/account/ModifyCardsActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivity(Ljava/lang/Class;)V

    .line 873
    return-void
.end method

.method public navigateToDashboard()V
    .locals 2

    .prologue
    const-string v0, "navigateToDashboard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    const/16 v0, 0x3b67

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setResult(I)V

    .line 878
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->finish()V

    .line 879
    return-void
.end method

.method public navigateToSignIn()V
    .locals 4

    .prologue
    const-string v1, "navigateToSignIn"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "EXTRA_RESULT_CONTAINER_CLASS"

    const-class v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 702
    const-class v1, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v2, "signin"

    const/16 v3, 0xff2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 708
    return-void
.end method

.method public onActionEdit(Ljava/lang/Object;)V
    .locals 8
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const-string v4, "onActionEdit"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "/basket"

    .line 921
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "On click"

    .line 922
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "Edit"

    .line 923
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 924
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 925
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v4, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 927
    instance-of v4, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v4, :cond_1

    .line 929
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 930
    .local v1, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v5, 0x15

    move-object v4, p1

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 932
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v4

    const-string v5, "ARG_PRODUCT"

    invoke-virtual {v4, v5, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    const-string v4, "arg_editing"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 939
    const-string v4, "ARG_ANALYTICS_PARENT_NAME"

    const v5, 0x7f09086b

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v5, "ARG_UNAVAILABLE_PRODUCT_CODES"

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 945
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 946
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 948
    sget-object v4, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 957
    .end local v1    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local p1    # "item":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 950
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v4, :cond_0

    .line 952
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 953
    .restart local v1    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v4, 0x19

    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    const-class v4, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v5, "offer_detail"

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActionMakeItAMeal(Ljava/lang/Object;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const-string v2, "onActionMakeItAMeal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    instance-of v2, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    .line 962
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 963
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EVENT_NAME"

    const-string v3, "upgrade"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 965
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x15

    move-object v2, p1

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->onActionEdit(Ljava/lang/Object;)V

    .line 968
    .end local v0    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onActionRemove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const-string v0, "onActionRemove"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x27

    const/16 v3, 0x8

    .line 883
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 885
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 886
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 887
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->clear()V

    .line 888
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->createBasketItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 890
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->initialize()V

    .line 892
    const/16 v1, 0xff1

    if-ne p1, v1, :cond_3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 895
    const-string v1, "Cash"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setCashPayment()V

    .line 897
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string v1, "ThirdPart"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setAlipayPayment()V

    .line 900
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PaymentSelectionFragment.DATA_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 904
    .local v0, "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 905
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 907
    .end local v0    # "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_3
    if-ne p2, v4, :cond_0

    .line 908
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setResult(I)V

    .line 909
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040022

    invoke-static {v4, v6, v7, v5}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    .line 116
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    invoke-virtual {v4}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setContentView(Landroid/view/View;)V

    .line 118
    const v4, 0x7f090798

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->setTitle(I)V

    .line 120
    new-instance v4, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-direct {v4, p0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/checkout/CheckoutView;)V

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v4, "FROM_BAG_CHARGE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 124
    .local v0, "comingFromBagCharge":Z
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setComingFromBagCharges(Z)V

    .line 126
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setPresenter(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    .line 128
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->initialize()V

    .line 130
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$1;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->continueButton:Landroid/widget/Button;

    new-instance v6, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$2;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$2;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    invoke-virtual {v4}, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$3;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$3;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->scanCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$4;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$4;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->scanContinueButton:Landroid/widget/Button;

    new-instance v6, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$5;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$5;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    .line 166
    .local v2, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 167
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 169
    const v4, 0x7f1100b3

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->choose_payment_label:Landroid/widget/TextView;

    .line 170
    const v4, 0x7f1100b2

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    .line 171
    const v4, 0x7f11009c

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListView:Landroid/widget/ListView;

    .line 172
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 174
    new-instance v4, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v4, p0, p0, v6}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;Lcom/mcdonalds/sdk/modules/models/Order;)V

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    .line 175
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mUnavailableProductCodes:Ljava/util/List;

    .line 180
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->refreshStoreInfoAndDeliveryFee()V

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->clear()V

    .line 184
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->createBasketItems()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 185
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->isAli(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    .line 187
    .local v3, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v3, v4, :cond_2

    .line 188
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :goto_1
    return-void

    .end local v0    # "comingFromBagCharge":Z
    .end local v2    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v3    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    :cond_1
    move v0, v5

    .line 123
    goto/16 :goto_0

    .line 190
    .restart local v0    # "comingFromBagCharge":Z
    .restart local v2    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .restart local v3    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->iv_ali_img:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "onNewIntent"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 689
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 690
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "FROM_BAG_CHARGE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    .local v0, "comingFromBagCharge":Z
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setComingFromBagCharges(Z)V

    .line 692
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->initialize()V

    .line 693
    return-void

    .end local v0    # "comingFromBagCharge":Z
    :cond_0
    move v0, v2

    .line 690
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 680
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 681
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setupPaymentModes()V

    .line 682
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkIfUserHasMoreThanMaxCards()V

    .line 684
    return-void
.end method

.method public refreshStoreInfoAndDeliveryFee()V
    .locals 2

    .prologue
    const-string v0, "refreshStoreInfoAndDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 208
    :cond_0
    return-void
.end method

.method public setZeroPricedOrder(Z)V
    .locals 5
    .param p1, "zeroPriced"    # Z

    .prologue
    const v4, 0x7f0e004a

    const-string v0, "setZeroPricedOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    if-eqz p1, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0048

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 798
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->payWithLabel:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 799
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->choosePaymentLabel:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    const v1, 0x106000b

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 802
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->payWithLabel:Landroid/widget/TextView;

    const v1, 0x7f0e0032

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mBinding:Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->choosePaymentLabel:Landroid/widget/TextView;

    const v1, 0x7f0e008d

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public showFatalError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "showFatalError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090338

    .line 728
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 729
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$6;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    .line 730
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 740
    :cond_0
    return-void
.end method

.method public showLargeOrderWarning()V
    .locals 3

    .prologue
    const-string v0, "showLargeOrderWarning"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09081e

    .line 745
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09043f

    .line 746
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09012e

    new-instance v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$8;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$8;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    .line 747
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$7;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V

    .line 754
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 762
    return-void
.end method

.method public showMaxCardsAlert()V
    .locals 3

    .prologue
    const-string v0, "showMaxCardsAlert"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090a17

    .line 861
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->onMaxCardAlertPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 862
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090a18

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->onMaxCardsAlertNegativeClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 863
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 864
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 866
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 868
    return-void
.end method

.method public showNoPaymentSelectedError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "showNoPaymentSelectedError"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09061a

    .line 823
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09062b

    .line 824
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 825
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 828
    return-void
.end method

.method public showOrderErrors(IILjava/util/List;Z)V
    .locals 6
    .param p1, "errorType"    # I
    .param p2, "productErrorCode"    # I
    .param p4, "hidePositive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "showOrderErrors"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 766
    const-string v1, ""

    .line 768
    .local v1, "fragmentName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    sget-object v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 788
    sget-object v2, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    const-class v2, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const/16 v3, 0x25

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 792
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 770
    .restart local p3    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v1, "check_out_items_out_of_stock"

    .line 771
    goto :goto_0

    .line 773
    :pswitch_1
    const-string v1, "check_out_items_unavailable"

    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showOutOfStockAlert(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "showOutOfStockAlert"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    sget-object v1, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 715
    const-class v1, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v2, "check_out_items_unavailable"

    const/16 v3, 0x25

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 716
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->finish()V

    .line 717
    return-void
.end method

.method public showPaymentSelection(Ljava/util/LinkedHashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    const-string v1, "showPaymentSelection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DATA_PASSER_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 812
    const-class v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;

    const-string v2, "select_payment"

    const/16 v3, 0xff1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 818
    return-void
.end method

.method public showPickupMethodSelector()V
    .locals 2

    .prologue
    const-string v0, "showPickupMethodSelector"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    const-class v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodActivity;

    sget-object v1, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public showZeroOrNegativePriceError()V
    .locals 2

    .prologue
    const-string v0, "showZeroOrNegativePriceError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    const v0, 0x7f090293

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->showFatalError(Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public startInterinCheckinFlow()V
    .locals 2

    .prologue
    const-string v0, "startInterinCheckinFlow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    const-class v0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpActivity;

    const-string v1, "choose_pick_up"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public startOneTimePaymentCheckinFlow()V
    .locals 2

    .prologue
    const-string v0, "startOneTimePaymentCheckinFlow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->navigateToPayment()V

    .line 833
    return-void
.end method

.method public startRegularCheckinFlow()V
    .locals 2

    .prologue
    const-string v0, "startRegularCheckinFlow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->navigateToPayment()V

    .line 838
    return-void
.end method
