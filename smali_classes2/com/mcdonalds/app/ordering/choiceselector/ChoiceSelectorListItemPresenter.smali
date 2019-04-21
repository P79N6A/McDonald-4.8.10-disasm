.class public Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;
.super Landroid/databinding/BaseObservable;
.source "ChoiceSelectorListItemPresenter.java"

# interfaces
.implements Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;


# instance fields
.field private mBasePrice:D

.field private mChecked:Z

.field private mIsOutage:Z

.field private mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mRecipeId:Ljava/lang/String;

.field private mShowInfoButton:Z


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V
    .locals 0
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "isOutage"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 42
    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mIsOutage:Z

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->checkForNutritionInfo()V

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.choiceselector.ChoiceSelectorListItemPresenter"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mRecipeId:Ljava/lang/String;

    return-object p1
.end method

.method private checkForNutritionInfo()V
    .locals 3

    .prologue
    const-string v0, "checkForNutritionInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;-><init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 168
    :cond_0
    return-void
.end method

.method private getUplift()D
    .locals 4

    .prologue
    const-string v2, "getUplift"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v0

    .line 152
    .local v0, "productPrice":D
    iget-wide v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mBasePrice:D

    sub-double v2, v0, v2

    return-wide v2
.end method


# virtual methods
.method public getChecked()Z
    .locals 2

    .prologue
    const-string v0, "getChecked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mChecked:Z

    return v0
.end method

.method public getHatButtonResourceId()I
    .locals 3

    .prologue
    const-string v1, "getHatButtonResourceId"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    .line 138
    .local v0, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const v1, 0x7f02015f

    .line 141
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f02015c

    goto :goto_0
.end method

.method public getNameDetails()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getNameDetails"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-object v1
.end method

.method public getProductName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, "getProductName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mIsOutage:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09060b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 78
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProductUplift()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v1, "getProductUplift"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->getUplift()D

    move-result-wide v2

    .line 94
    .local v2, "uplift":D
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    .line 95
    .local v0, "formatter":Ljava/text/NumberFormat;
    const-string v1, "+ %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecipeId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getRecipeId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mRecipeId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCheckBox()Z
    .locals 2

    .prologue
    const-string v0, "getShowCheckBox"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public getShowDisclosureArrow()Z
    .locals 2

    .prologue
    const-string v0, "getShowDisclosureArrow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->hasSubChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    return v0
.end method

.method public getShowHatButton()Z
    .locals 5

    .prologue
    const-string v3, "getShowHatButton"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.hideProductCustomizationButton"

    .line 128
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 129
    .local v1, "hideCustomizationButton":Z
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 130
    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ProductUtils;->productHasIngredientsOrExtras(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    .line 131
    .local v0, "hasIngredientsOrExtras":Z
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v2

    .line 132
    .local v2, "isChoice":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getShowInfoButton()Z
    .locals 2

    .prologue
    const-string v0, "getShowInfoButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mShowInfoButton:Z

    return v0
.end method

.method public getShowNameDetails()Z
    .locals 2

    .prologue
    const-string v0, "getShowNameDetails"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getShowUplift()Z
    .locals 6

    .prologue
    const-string v1, "getShowUplift"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v0

    .line 87
    .local v0, "showUplift":Z
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->getUplift()D

    move-result-wide v2

    .line 88
    .local v2, "uplift":D
    if-eqz v0, :cond_0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpecialInstructions()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getSpecialInstructions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getThumbnailImageUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBasePrice(D)V
    .locals 5
    .param p1, "mBasePrice"    # D

    .prologue
    const-string v0, "setBasePrice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mBasePrice:D

    .line 48
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const-string v0, "setChecked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mChecked:Z

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->notifyPropertyChanged(I)V

    .line 62
    return-void
.end method

.method public setShowInfoButton(Z)V
    .locals 4
    .param p1, "showInfoButton"    # Z

    .prologue
    const-string v0, "setShowInfoButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->mShowInfoButton:Z

    .line 116
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->notifyPropertyChanged(I)V

    .line 118
    :cond_0
    return-void
.end method
