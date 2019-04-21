.class public Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ProductCustomizationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    }
.end annotation


# static fields
.field public static RESULT_PRODUCT:Ljava/lang/String;

.field public static RESULT_PRODUCT_INDEX:Ljava/lang/String;


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mCustomizationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizedQuantities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;",
            ">;"
        }
    .end annotation
.end field

.field private mDayPartIndex:I

.field private mExtrasContainer:Landroid/widget/LinearLayout;

.field private mIngredientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mIngredientsContainer:Landroid/widget/LinearLayout;

.field private mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mParentName:Ljava/lang/String;

.field private mProductIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "RESULT_PRODUCT"

    sput-object v0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 51
    const-string v0, "RESULT_PRODUCT_INDEX"

    sput-object v0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientMap:Ljava/util/Map;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mDayPartIndex:I

    .line 81
    return-void
.end method

.method private costLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;ILjava/lang/Double;)Ljava/lang/String;
    .locals 12
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "currentQuantity"    # I
    .param p3, "previousCost"    # Ljava/lang/Double;

    .prologue
    const-wide/16 v10, 0x0

    const-string v3, "costLabelText"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 441
    .local v0, "cost":Ljava/lang/Double;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getCostInclusive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    .line 443
    .local v2, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 444
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    .line 445
    .local v4, "price":D
    int-to-double v6, p2

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 448
    .end local v1    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v2    # "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .end local v4    # "price":D
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v6, v10

    if-lez v3, :cond_1

    .line 449
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 452
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private finalizeCustomizations()V
    .locals 10

    .prologue
    const-string v7, "finalizeCustomizations"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 243
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 244
    .local v3, "key":I
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;

    .line 246
    .local v6, "value":Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 247
    .local v5, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-boolean v7, v6, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->isLight:Z

    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 248
    iget v7, v6, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->quantity:I

    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "key":I
    .end local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "value":Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 253
    .local v3, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 254
    .local v0, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 256
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v8

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v8

    if-nez v8, :cond_1

    .line 259
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    .end local v0    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v3    # "key":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 266
    return-void
.end method

.method private quantityLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;IZ)Ljava/lang/String;
    .locals 8
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "currentQuantity"    # I
    .param p3, "isLight"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v3, "quantityLabelText"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v0

    .line 413
    .local v0, "defaultQuantity":I
    const/4 v2, 0x0

    .line 415
    .local v2, "standardMapping":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v3

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v3

    if-ne v3, v7, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_1

    .line 418
    :cond_0
    const/4 v2, 0x1

    .line 421
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "ret":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 423
    if-eqz p3, :cond_3

    .line 424
    const-string v1, "light"

    .line 433
    :cond_2
    :goto_0
    return-object v1

    .line 425
    :cond_3
    if-nez p2, :cond_4

    .line 426
    const-string v1, "none"

    goto :goto_0

    .line 427
    :cond_4
    if-ne p2, v6, :cond_5

    .line 428
    const-string v1, "regular"

    goto :goto_0

    .line 429
    :cond_5
    if-ne p2, v7, :cond_2

    .line 430
    const-string v1, "extra"

    goto :goto_0
.end method

.method private setupExtras()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "setupExtras"

    invoke-static {p0, v5, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 206
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 207
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 208
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v3, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;

    const v5, 0x7f040056

    .line 210
    invoke-virtual {v1, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;-><init>(Landroid/view/View;)V

    .line 212
    .local v3, "item":Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 213
    .local v0, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 215
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->setOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 218
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->setIngredient(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V

    .line 220
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getTypeLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getQuantity()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v10

    invoke-direct {p0, v2, v9, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->quantityLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getCost()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->costLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;ILjava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    if-le v5, v6, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 227
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 231
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v10

    if-le v5, v10, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 233
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v9

    const/16 v10, 0x32

    invoke-static {v9, v10}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mExtrasContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move v5, v7

    .line 226
    goto :goto_1

    :cond_2
    move v5, v7

    .line 230
    goto :goto_2

    :cond_3
    move v5, v7

    .line 231
    goto :goto_3

    .line 238
    .end local v0    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v3    # "item":Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    :cond_4
    return-void
.end method

.method private setupIngredients()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "setupIngredients"

    invoke-static {p0, v5, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 165
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 166
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 167
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v3, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;

    const v5, 0x7f040056

    .line 169
    invoke-virtual {v1, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;-><init>(Landroid/view/View;)V

    .line 171
    .local v3, "item":Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 172
    .local v0, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v0, :cond_0

    .line 173
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 174
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->setOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 177
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->setIngredient(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V

    .line 179
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getTypeLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getQuantity()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v10

    invoke-direct {p0, v2, v9, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->quantityLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getCost()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->costLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;ILjava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    if-le v5, v6, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 186
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    const-string v9, "ChangeQuantityButtonPressed"

    invoke-static {v5, v9}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v5

    const-string v9, "ChangeQuantityButtonPressed"

    invoke-static {v5, v9}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 193
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v10

    if-le v5, v10, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 195
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v9

    const/16 v10, 0x32

    invoke-static {v9, v10}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move v5, v7

    .line 185
    goto :goto_1

    :cond_2
    move v5, v7

    .line 192
    goto :goto_2

    :cond_3
    move v5, v7

    .line 193
    goto :goto_3

    .line 200
    .end local v0    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v3    # "item":Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    :cond_4
    return-void
.end method

.method private trackChanges(Lcom/mcdonalds/app/ordering/ProductCustomizationItem;Z)V
    .locals 9
    .param p1, "item"    # Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    .param p2, "increment"    # Z

    .prologue
    const-string v3, "trackChanges"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 397
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x25

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    const/16 v3, 0x26

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    const/16 v6, 0x27

    if-eqz p2, :cond_1

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    .line 402
    .local v2, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 403
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    .line 404
    .local v4, "price":D
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 405
    const/16 v3, 0x36

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_2

    const-string v3, "Increment"

    :goto_1
    invoke-static {v6, v3, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 409
    return-void

    .line 399
    .end local v1    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v2    # "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .end local v4    # "price":D
    :cond_1
    const-string v3, "-1"

    goto :goto_0

    .line 407
    .restart local v1    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .restart local v2    # "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .restart local v4    # "price":D
    :cond_2
    const-string v3, "Decrement"

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mParentName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const v0, 0x7f09086c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f090894

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v10, "onClick"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;

    .line 273
    .local v5, "item":Lcom/mcdonalds/app/ordering/ProductCustomizationItem;
    iget-object v10, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;

    .line 274
    .local v2, "customizedQuantity":Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    if-nez v2, :cond_0

    .line 275
    new-instance v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;

    .end local v2    # "customizedQuantity":Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;-><init>(Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$1;)V

    .line 276
    .restart local v2    # "customizedQuantity":Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->isLight:Z

    .line 277
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v10

    iput v10, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->quantity:I

    .line 278
    iget-object v10, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    :cond_0
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getAcceptsLight()Z

    move-result v4

    .line 283
    .local v4, "hasAcceptsLight":Z
    iget-boolean v0, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->isLight:Z

    .line 284
    .local v0, "currentIsLight":Z
    iget v1, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->quantity:I

    .line 285
    .local v1, "currentQuantity":I
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v8

    .line 286
    .local v8, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v10

    int-to-double v12, v1

    mul-double v6, v10, v12

    .line 287
    .local v6, "previousCost":D
    const/4 v9, 0x0

    .line 288
    .local v9, "standardMapping":Z
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v10

    if-nez v10, :cond_2

    .line 289
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 290
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 291
    :cond_1
    const/4 v9, 0x1

    .line 293
    :cond_2
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v3

    .line 296
    .local v3, "defaultQuantity":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f110164

    if-ne v10, v11, :cond_c

    .line 297
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v10

    if-le v10, v1, :cond_c

    .line 300
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->trackChanges(Lcom/mcdonalds/app/ordering/ProductCustomizationItem;Z)V

    .line 302
    if-nez v9, :cond_6

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 383
    :cond_3
    :goto_0
    iput v1, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->quantity:I

    .line 384
    iput-boolean v0, v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment$Quantity;->isLight:Z

    .line 386
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getQuantity()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v11

    invoke-direct {p0, v11, v1, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->quantityLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getCost()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-direct {p0, v11, v1, v12}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->costLabelText(Lcom/mcdonalds/sdk/modules/models/Ingredient;ILjava/lang/Double;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIncreaseButton()Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v10

    if-lt v1, v10, :cond_4

    if-eqz v0, :cond_16

    :cond_4
    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 391
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getDecreaseButton()Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v10

    if-gt v1, v10, :cond_5

    if-eqz v0, :cond_17

    :cond_5
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 392
    return-void

    .line 308
    :cond_6
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    const/4 v10, 0x1

    if-ne v3, v10, :cond_7

    if-nez v0, :cond_7

    .line 310
    const/4 v1, 0x2

    goto :goto_0

    .line 312
    :cond_7
    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_8
    if-nez v1, :cond_9

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    .line 318
    const/4 v1, 0x1

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :cond_9
    if-nez v1, :cond_a

    if-nez v3, :cond_a

    if-nez v0, :cond_a

    if-eqz v4, :cond_a

    .line 323
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :cond_a
    if-nez v1, :cond_b

    if-nez v3, :cond_b

    .line 327
    const/4 v0, 0x0

    .line 328
    const/4 v1, 0x1

    goto :goto_0

    .line 330
    :cond_b
    const/4 v10, 0x1

    if-ne v1, v10, :cond_3

    if-nez v0, :cond_3

    .line 332
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 335
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f110166

    if-ne v10, v11, :cond_3

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/ProductCustomizationItem;->getIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v10

    if-lt v10, v1, :cond_d

    if-eqz v0, :cond_3

    .line 339
    :cond_d
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->trackChanges(Lcom/mcdonalds/app/ordering/ProductCustomizationItem;Z)V

    .line 341
    if-nez v9, :cond_e

    .line 342
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 345
    :cond_e
    const/4 v10, 0x1

    if-ne v1, v10, :cond_f

    const/4 v10, 0x1

    if-ne v3, v10, :cond_f

    if-nez v0, :cond_f

    if-eqz v4, :cond_f

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 349
    :cond_f
    const/4 v10, 0x1

    if-ne v1, v10, :cond_10

    const/4 v10, 0x1

    if-ne v3, v10, :cond_10

    .line 351
    const/4 v1, 0x0

    .line 352
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 354
    :cond_10
    const/4 v10, 0x2

    if-ne v1, v10, :cond_11

    const/4 v10, 0x1

    if-ne v3, v10, :cond_11

    if-nez v0, :cond_11

    .line 356
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 358
    :cond_11
    const/4 v10, 0x1

    if-ne v1, v10, :cond_12

    if-nez v0, :cond_12

    if-eqz v4, :cond_12

    .line 360
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 362
    :cond_12
    const/4 v10, 0x2

    if-ne v1, v10, :cond_13

    if-nez v3, :cond_13

    if-nez v0, :cond_13

    .line 364
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 366
    :cond_13
    const/4 v10, 0x1

    if-ne v1, v10, :cond_14

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    if-eqz v4, :cond_14

    .line 368
    const/4 v0, 0x0

    .line 369
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 371
    :cond_14
    const/4 v10, 0x1

    if-ne v1, v10, :cond_15

    if-nez v3, :cond_15

    if-nez v4, :cond_15

    .line 373
    const/4 v0, 0x0

    .line 374
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 376
    :cond_15
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 377
    const/4 v0, 0x0

    .line 378
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 390
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 391
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mProductIndex:I

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 102
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->setHasOptionsMenu(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_DAY_PART_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mDayPartIndex:I

    .line 105
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_CATEGORY_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCategoryName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_ANALYTICS_PARENT_NAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mParentName:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizedQuantities:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mCustomizationsMap:Ljava/util/Map;

    .line 110
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 129
    const v0, 0x7f120012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    const v0, 0x7f110545

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const v1, 0x7f0400f9

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    .local v0, "group":Landroid/view/ViewGroup;
    const v1, 0x7f110369

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mIngredientsContainer:Landroid/widget/LinearLayout;

    .line 118
    const v1, 0x7f11036a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mExtrasContainer:Landroid/widget/LinearLayout;

    .line 120
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->setupIngredients()V

    .line 121
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->setupExtras()V

    .line 123
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const-string v3, "onOptionsItemSelected"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Product Customized"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->finalizeCustomizations()V

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    sget-object v3, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    iget v4, p0, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->mProductIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
