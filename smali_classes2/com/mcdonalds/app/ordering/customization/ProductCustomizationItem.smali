.class public abstract Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
.super Ljava/lang/Object;
.source "ProductCustomizationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem$ProductCustomizationType;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field protected header:Z

.field protected ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

.field protected portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

.field protected product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field protected quantity:I

.field protected title:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "type"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 41
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/McDonaldsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 42
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    const-string v3, "HK"

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 45
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 46
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    .line 50
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :goto_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 51
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 52
    iput p3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->type:I

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->title:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 58
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->withQuantityAndLight(IZ)Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 67
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    goto :goto_1
.end method

.method private normalizeQuantity()V
    .locals 2

    .prologue
    const-string v0, "normalizeQuantity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getQuantityValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isLight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public add()V
    .locals 2

    .prologue
    const-string v0, "add"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->incrementPortion()V

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->normalizeQuantity()V

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    goto :goto_0
.end method

.method public canAdd()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "canAdd"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v2

    sget-object v3, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->EXTRA:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0

    .line 238
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public canRemove()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "canRemove"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v2

    sget-object v3, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 243
    goto :goto_0

    .line 246
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract decrementPortion()V
.end method

.method public getCost()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "getCost"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getCostValue()D

    move-result-wide v0

    .line 226
    .local v0, "cost":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 227
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getCostValue()D
    .locals 10

    .prologue
    const-string v3, "getCostValue"

    const/4 v6, 0x0

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-wide/16 v4, 0x0

    .line 202
    .local v4, "total":D
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v2

    .line 206
    .local v2, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    .line 207
    const-wide/16 v0, 0x0

    .line 209
    .local v0, "difference":D
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getChargeThreshold()I

    move-result v6

    if-le v3, v6, :cond_2

    .line 211
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getChargeThreshold()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v0, v3

    .line 217
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v6

    mul-double v4, v0, v6

    .line 220
    .end local v0    # "difference":D
    :cond_1
    return-wide v4

    .line 213
    .restart local v0    # "difference":D
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getRefundThreshold()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 214
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getRefundThreshold()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v0, v3

    goto :goto_0
.end method

.method protected getLocalizedProductUnit()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const-string v8, "getLocalizedProductUnit"

    invoke-static {p0, v8, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductUnit()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "unit":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 121
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    .local v3, "resources":Landroid/content/res/Resources;
    iget v8, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    if-ne v8, v11, :cond_1

    const-string v4, "_singular"

    .line 124
    .local v4, "suffix":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "packageName":Ljava/lang/String;
    const-string v8, "string"

    invoke-virtual {v3, v0, v8, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, "resourceId":I
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "unitSuffix":Ljava/lang/String;
    const v7, 0x7f0901ac

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v6, v8, v11

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resourceId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "suffix":Ljava/lang/String;
    .end local v6    # "unitSuffix":Ljava/lang/String;
    :cond_0
    return-object v7

    .line 123
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    const-string v4, "_plural"

    goto :goto_0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f09065a

    const v4, 0x7f090657

    const v3, 0x7f090659

    const-string v1, "getQuantity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    sget-object v1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem$1;->$SwitchMap$com$mcdonalds$app$ordering$customization$PortionQuantity:[I

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getLocalizedProductUnit()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "productUnit":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 187
    .end local v0    # "productUnit":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    const v2, 0x7f090658

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 163
    :pswitch_3
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->shouldBeTreatedAsRegularNone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 172
    :pswitch_5
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 174
    :pswitch_6
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_2
    iget v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 187
    .restart local v0    # "productUnit":Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getQuantityValue()I
    .locals 2

    .prologue
    const-string v0, "getQuantityValue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->getQuantity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->type:I

    return v0
.end method

.method protected abstract incrementPortion()V
.end method

.method public isHeader()Z
    .locals 2

    .prologue
    const-string v0, "isHeader"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->header:Z

    return v0
.end method

.method public isLight()Z
    .locals 2

    .prologue
    const-string v0, "isLight"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->portionQuantity:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->isLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPortion()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "isPortion"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getAcceptsLight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 100
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 101
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 102
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 99
    :goto_0
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    const-string v0, "remove"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->canRemove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isPortion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->decrementPortion()V

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->normalizeQuantity()V

    .line 96
    :cond_0
    return-void

    .line 91
    :cond_1
    iget v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->quantity:I

    goto :goto_0
.end method

.method public setHeader(Z)V
    .locals 4
    .param p1, "header"    # Z

    .prologue
    const-string v0, "setHeader"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->header:Z

    .line 143
    return-void
.end method

.method protected shouldBeTreatedAsRegularNone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "shouldBeTreatedAsRegularNone"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
