.class public Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
.super Ljava/lang/Object;
.source "ProductCustomizationItem.java"


# instance fields
.field private mCost:Landroid/widget/TextView;

.field private mDecreaseButton:Landroid/widget/ImageView;

.field private mIncreaseButton:Landroid/widget/ImageView;

.field private mIngredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

.field private mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mQuantity:Landroid/widget/TextView;

.field private mTypeLabel:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mView:Landroid/view/View;

    .line 30
    const v0, 0x7f110162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mTypeLabel:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f110165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mQuantity:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f110163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mCost:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f110166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mDecreaseButton:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f110164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mIncreaseButton:Landroid/widget/ImageView;

    .line 35
    return-void
.end method


# virtual methods
.method public getCost()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getCost"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mCost:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDecreaseButton()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getDecreaseButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mDecreaseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIncreaseButton()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getIncreaseButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mIncreaseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .locals 2

    .prologue
    const-string v0, "getIngredient"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mIngredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    return-object v0
.end method

.method public getOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2

    .prologue
    const-string v0, "getOrderProduct"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    return-object v0
.end method

.method public getQuantity()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getQuantity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mQuantity:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypeLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTypeLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mTypeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setIngredient(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V
    .locals 3
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .prologue
    const-string v0, "setIngredient"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mIngredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 51
    return-void
.end method

.method public setOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "setOrderProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 43
    return-void
.end method
