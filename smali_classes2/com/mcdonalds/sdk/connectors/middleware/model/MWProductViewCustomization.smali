.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
.source "MWProductViewCustomization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    return-void
.end method


# virtual methods
.method public populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    const/4 p0, 0x0

    .line 28
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    :goto_0
    return-object p0

    .line 26
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;->isLight:Z

    goto :goto_0
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 15
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;->isLight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setIsLight(Ljava/lang/Boolean;)V

    .line 17
    return-object v0
.end method
