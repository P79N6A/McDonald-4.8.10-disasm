.class public Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;
.super Ljava/lang/Object;
.source "UpsellPresenter.java"


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/upsell/UpsellView;Ljava/util/List;)V
    .locals 1
    .param p1, "view"    # Lcom/mcdonalds/app/ordering/upsell/UpsellView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/app/ordering/upsell/UpsellView;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    .line 30
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 31
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mProducts:Ljava/util/List;

    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->presentUpsellItems()V

    .line 33
    return-void
.end method

.method private changeItemQuantity(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "quantityChange"    # I

    .prologue
    const-string v4, "changeItemQuantity"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 90
    .local v3, "productToIncrease":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v3, :cond_0

    .line 92
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->getMaxItemQuantity(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v1

    .line 93
    .local v1, "maxItemQuantity":I
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v0

    .line 94
    .local v0, "currentQuantity":I
    add-int v2, v0, p2

    .line 96
    .local v2, "newQuantity":I
    if-gt v2, v1, :cond_0

    .line 97
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 98
    if-gtz v2, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->setItemUnselected(I)V

    .line 105
    .end local v0    # "currentQuantity":I
    .end local v1    # "maxItemQuantity":I
    .end local v2    # "newQuantity":I
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v0    # "currentQuantity":I
    .restart local v1    # "maxItemQuantity":I
    .restart local v2    # "newQuantity":I
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    invoke-interface {v4, p1, v2}, Lcom/mcdonalds/app/ordering/upsell/UpsellView;->updateItemQuantity(II)V

    goto :goto_0
.end method

.method private getMaxItemQuantity(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I
    .locals 8
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v5, "getMaxItemQuantity"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getItemsCount()I

    move-result v1

    .line 110
    .local v1, "itemsInBasket":I
    const/4 v3, 0x0

    .line 111
    .local v3, "otherItemsQuantity":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 113
    .local v2, "key":I
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 114
    .local v4, "selectedProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    add-int/2addr v3, v5

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "key":I
    .end local v4    # "selectedProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxItemQuantity()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    return v5
.end method

.method private presentUpsellItems()V
    .locals 3

    .prologue
    const-string v1, "presentUpsellItems"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    .line 124
    .local v0, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mProducts:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellView;->displayItems(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 125
    return-void
.end method

.method private setItemSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const-string v2, "setItemSelected"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mProducts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 50
    .local v1, "productToAdd":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 51
    .local v0, "orderProductToAdd":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    invoke-interface {v2, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellView;->markItemSelected(I)V

    goto :goto_0
.end method

.method private setItemUnselected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "setItemUnselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellView;->markItemUnselected(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public addItemsToBasket()V
    .locals 7

    .prologue
    const-string v5, "addItemsToBasket"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 75
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v4, 0x1

    .line 76
    .local v4, "success":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    if-eqz v4, :cond_2

    .line 77
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 78
    .local v2, "position":I
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 79
    .local v3, "selectedItem":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    if-lez v5, :cond_1

    .line 80
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v4

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v2    # "position":I
    .end local v3    # "selectedItem":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mView:Lcom/mcdonalds/app/ordering/upsell/UpsellView;

    invoke-interface {v5}, Lcom/mcdonalds/app/ordering/upsell/UpsellView;->showCart()V

    goto :goto_0
.end method

.method public decreaseItemQuantity(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "decreaseItemQuantity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->changeItemQuantity(II)V

    .line 66
    return-void
.end method

.method public increaseItemQuantity(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "increaseItemQuantity"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1, v4}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->changeItemQuantity(II)V

    .line 62
    return-void
.end method

.method public toggleSelection(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "toggleSelection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->mSelectedItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 37
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->setItemUnselected(I)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->setItemSelected(I)V

    goto :goto_0
.end method
