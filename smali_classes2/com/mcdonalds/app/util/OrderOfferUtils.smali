.class public Lcom/mcdonalds/app/util/OrderOfferUtils;
.super Ljava/lang/Object;
.source "OrderOfferUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/lang/String;
    .locals 8
    .param p0, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.util.OrderOfferUtils"

    const-string v5, "getTotalEnergyUnit"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    const/4 v2, 0x0

    .line 12
    .local v2, "unit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 13
    .local v1, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergyNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v0

    .line 16
    .local v0, "energyNutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v2

    .line 23
    .end local v0    # "energyNutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v1    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_1
    if-nez v2, :cond_2

    .line 24
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.nutritionalInfo.energyUnit"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_2
    if-nez v2, :cond_3

    .line 28
    const-string v2, ""

    .line 31
    :cond_3
    return-object v2
.end method
