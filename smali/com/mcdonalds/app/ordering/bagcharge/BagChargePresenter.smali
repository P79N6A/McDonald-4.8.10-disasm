.class public Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;
.super Landroid/databinding/BaseObservable;
.source "BagChargePresenter.java"

# interfaces
.implements Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;
.implements Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;


# instance fields
.field private enableContinueButton:Z

.field private enableMinusButton:Z

.field private enablePlusButton:Z

.field private mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

.field private mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mView:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

.field private price:D

.field private productName:Ljava/lang/String;

.field private quantity:I

.field private thumbnailImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;)V
    .locals 6
    .param p1, "view"    # Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 39
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enableMinusButton:Z

    .line 40
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enablePlusButton:Z

    .line 41
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enableContinueButton:Z

    .line 45
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    .line 46
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 48
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mView:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

    .line 49
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v1

    .line 51
    .local v1, "bagProductId":I
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 52
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 55
    .local v0, "bagProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 56
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mView:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

    invoke-interface {v2}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;->proceedToCheckout()V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->productName:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->thumbnailImageUrl:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->updateQuantityAndTotal(I)V

    .line 64
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->checkQuantity()V

    goto :goto_0
.end method

.method private checkQuantity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "checkQuantity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v0

    .line 113
    .local v0, "quantity":I
    if-gtz v0, :cond_0

    .line 114
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnableMinusButton(Z)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnableContinueButton(Z)V

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 117
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnablePlusButton(Z)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnableContinueButton(Z)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnableMinusButton(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnablePlusButton(Z)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setEnableContinueButton(Z)V

    goto :goto_0
.end method

.method private updateQuantityAndTotal(I)V
    .locals 6
    .param p1, "quantity"    # I

    .prologue
    const-string/jumbo v2, "updateQuantityAndTotal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 86
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v0

    .line 87
    .local v0, "price":D
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setPrice(D)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->setQuantity(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 3

    .prologue
    const-string v1, "confirm"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 106
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 108
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mView:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;->proceedToCheckout()V

    .line 109
    return-void
.end method

.method public decreaseQuantity()V
    .locals 3

    .prologue
    const-string v1, "decreaseQuantity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 78
    .local v0, "quantity":I
    if-ltz v0, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->updateQuantityAndTotal(I)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->checkQuantity()V

    .line 82
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 7

    .prologue
    const-string v4, "dismiss"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v2

    .line 93
    .local v2, "noBagProductCode":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    .line 94
    .local v1, "noBagProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 96
    .local v0, "noBagOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 97
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    .line 98
    .local v3, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    .line 99
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderManager:Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 101
    .end local v3    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mView:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;

    invoke-interface {v4}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;->proceedToCheckout()V

    .line 102
    return-void
.end method

.method public getChecked()Z
    .locals 2

    .prologue
    const-string v0, "getChecked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getEnableMinusButton()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getEnableMinusButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enableMinusButton:Z

    return v0
.end method

.method public getEnablePlusButton()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getEnablePlusButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enablePlusButton:Z

    return v0
.end method

.method public getHatButtonResourceId()I
    .locals 2

    .prologue
    const-string v0, "getHatButtonResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getNameDetails()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getNameDetails"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-object v1
.end method

.method public getProductName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getProductName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductUplift()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getProductUplift"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-object v1
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getQuantity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->quantity:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowCheckBox()Z
    .locals 2

    .prologue
    const-string v0, "getShowCheckBox"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getShowDisclosureArrow()Z
    .locals 2

    .prologue
    const-string v0, "getShowDisclosureArrow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getShowHatButton()Z
    .locals 2

    .prologue
    const-string v0, "getShowHatButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getShowInfoButton()Z
    .locals 2

    .prologue
    const-string v0, "getShowInfoButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getShowNameDetails()Z
    .locals 2

    .prologue
    const-string v0, "getShowNameDetails"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getShowUplift()Z
    .locals 2

    .prologue
    const-string v0, "getShowUplift"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getSpecialInstructions()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSpecialInstructions"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-object v1
.end method

.method public getThumbnailImageUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getThumbnailImageUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->thumbnailImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v1, "getTotalPrice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    .line 251
    .local v0, "formatter":Ljava/text/NumberFormat;
    iget-wide v2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->price:D

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public increaseQuantity()V
    .locals 3

    .prologue
    const-string v1, "increaseQuantity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 70
    .local v0, "quantity":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->updateQuantityAndTotal(I)V

    .line 72
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->checkQuantity()V

    .line 74
    :cond_0
    return-void
.end method

.method public setEnableContinueButton(Z)V
    .locals 4
    .param p1, "enableContinueButton"    # Z

    .prologue
    const-string v0, "setEnableContinueButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enableContinueButton:Z

    .line 148
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->notifyPropertyChanged(I)V

    .line 149
    return-void
.end method

.method public setEnableMinusButton(Z)V
    .locals 4
    .param p1, "enableMinusButton"    # Z

    .prologue
    const-string v0, "setEnableMinusButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enableMinusButton:Z

    .line 138
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->notifyPropertyChanged(I)V

    .line 139
    return-void
.end method

.method public setEnablePlusButton(Z)V
    .locals 4
    .param p1, "enablePlusButton"    # Z

    .prologue
    const-string v0, "setEnablePlusButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->enablePlusButton:Z

    .line 143
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->notifyPropertyChanged(I)V

    .line 144
    return-void
.end method

.method public setPrice(D)V
    .locals 5
    .param p1, "price"    # D

    .prologue
    const-string v0, "setPrice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->price:D

    .line 133
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->notifyPropertyChanged(I)V

    .line 134
    return-void
.end method

.method public setQuantity(I)V
    .locals 4
    .param p1, "quantity"    # I

    .prologue
    const-string v0, "setQuantity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iput p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->quantity:I

    .line 128
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->notifyPropertyChanged(I)V

    .line 129
    return-void
.end method
