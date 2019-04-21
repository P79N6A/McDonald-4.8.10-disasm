.class public Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;
.super Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
.source "ProductCustomizationIngredient.java"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;-><init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected decrementPortion()V
    .locals 2

    .prologue
    const-string v0, "decrementPortion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->values()[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 27
    return-void
.end method

.method protected incrementPortion()V
    .locals 2

    .prologue
    const-string v0, "incrementPortion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->values()[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 22
    return-void
.end method
