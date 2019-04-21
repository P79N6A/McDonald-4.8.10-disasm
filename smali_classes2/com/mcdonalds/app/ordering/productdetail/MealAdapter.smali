.class public Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
.super Ljava/lang/Object;
.source "MealAdapter.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;,
        Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;,
        Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;,
        Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;,
        Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;
    }
.end annotation


# instance fields
.field private final baseProductMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mAllChoiceSelected:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field mHideCustomizationButton:Z

.field private mMealItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mNutritionRecipes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMealChangedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;

.field private mOnProductChoiceClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;

.field private mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;

.field private mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;

.field private mOrderProducts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "showDimension"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    .line 86
    const-string v6, "ordering"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 87
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    .line 88
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->baseProductMenuTypes:Ljava/util/List;

    .line 89
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.hideProductCustomizationButton"

    .line 90
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mHideCustomizationButton:Z

    .line 92
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 94
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->sortDimensionBySizeCode(Ljava/util/List;)V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    const-string v4, "Delivery"

    .line 103
    .local v4, "pod":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.ordering.filterDimenPod"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 106
    .local v2, "filterDimenPod":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    .line 110
    .local v0, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    if-eqz v2, :cond_0

    .line 111
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getShowSizeToCustomer()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    .end local v2    # "filterDimenPod":Z
    .end local v3    # "i":I
    .end local v4    # "pod":Ljava/lang/String;
    :cond_3
    const-string v4, "Pickup"

    .restart local v4    # "pod":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v4    # "pod":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.hideOutagedItemsInMenu"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->filterOutageProducts(Ljava/util/List;)V

    .line 126
    :cond_5
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez p4, :cond_7

    .line 127
    :cond_6
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    .line 130
    :cond_7
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    .line 131
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mNutritionRecipes:Landroid/util/SparseArray;

    .line 132
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    .line 134
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProductPosition(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    .line 135
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    iget v7, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    invoke-virtual {v6, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    iget v6, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    invoke-direct {p0, v6}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->showView(I)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.MealAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->productChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.MealAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->productCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.MealAdapter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mNutritionRecipes:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "x2"    # Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.MealAdapter"

    const-string v2, "access$300"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setupInfoButton(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.MealAdapter"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->productInfoClicked(Ljava/lang/String;)V

    return-void
.end method

.method private checkNutritionInformation(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 6
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "item"    # Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    .prologue
    const-string v3, "checkNutritionInformation"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 595
    .local v1, "productCode":I
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mNutritionRecipes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 596
    .local v2, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    if-eqz v2, :cond_1

    .line 597
    invoke-direct {p0, v2, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setupInfoButton(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v3, "nutritionInfo"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 600
    .local v0, "nutritionModule":Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;-><init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    invoke-virtual {v0, v3, v4}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method private clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "clearAll"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 485
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 486
    return-void
.end method

.method private createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "createProductView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;IZLcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;IZLcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;
    .locals 24
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "index"    # I
    .param p4, "isChoice"    # Z
    .param p5, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v20, "createProductView"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const/16 v22, 0x1

    aput-object p2, v21, v22

    const/16 v22, 0x2

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v23, v21, v22

    const/16 v22, 0x3

    new-instance v23, Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v23, v21, v22

    const/16 v22, 0x4

    aput-object p5, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 495
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v20, 0x7f04017f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 497
    .local v6, "detailsView":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getTagForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 499
    new-instance v12, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-direct {v12, v6}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 501
    .local v12, "item":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 506
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 508
    if-eqz p4, :cond_5

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v20

    if-nez v20, :cond_0

    .line 510
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v16

    .line 511
    .local v16, "showUplift":Z
    if-eqz v16, :cond_3

    .line 512
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v14

    .line 513
    .local v14, "productPrice":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v4

    .line 514
    .local v4, "basePrice":D
    sub-double v18, v14, v4

    .line 515
    .local v18, "uplift":D
    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v20, v18, v20

    if-ltz v20, :cond_0

    .line 516
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v8

    .line 518
    .local v8, "formatter":Ljava/text/NumberFormat;
    const-string v20, "+ %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "formattedPrice":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    .end local v4    # "basePrice":D
    .end local v7    # "formattedPrice":Ljava/lang/String;
    .end local v8    # "formatter":Ljava/text/NumberFormat;
    .end local v14    # "productPrice":D
    .end local v16    # "showUplift":Z
    .end local v18    # "uplift":D
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getDisclosureArrow()Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 528
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0e008c

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    :goto_1
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v20

    new-instance v21, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v20

    if-nez v20, :cond_2

    .line 547
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v13

    .line 548
    .local v13, "nameDetails":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 549
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getNameDetails()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getNameDetails()Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v17

    .line 553
    .local v17, "specialInstructions":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 554
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .end local v13    # "nameDetails":Ljava/lang/String;
    .end local v17    # "specialInstructions":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v9

    .line 561
    .local v9, "imageInfo":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v10

    .line 563
    .local v10, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v20

    .line 564
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    sget-object v21, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 565
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    const v21, 0x7f020194

    .line 566
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    .line 567
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 569
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v20

    const-string v21, "ProductMealChoiceItemPressed"

    invoke-static/range {v20 .. v21}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v20

    const-string v21, "CustomizeButtonAction"

    invoke-static/range {v20 .. v21}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 572
    return-object v6

    .line 522
    .end local v9    # "imageInfo":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .restart local v16    # "showUplift":Z
    :cond_3
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 532
    .end local v16    # "showUplift":Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v12}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setCustomizationButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    goto/16 :goto_1

    .line 542
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v12}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setCustomizationButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->checkNutritionInformation(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    goto/16 :goto_2

    .line 557
    .restart local v13    # "nameDetails":Ljava/lang/String;
    .restart local v17    # "specialInstructions":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private filterOutageProducts(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v5, "filterOutageProducts"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 678
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 679
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v1

    .line 680
    .local v1, "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v0, "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 682
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 683
    .local v4, "productCode":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 687
    .end local v4    # "productCode":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v2, "outageProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 690
    .local v3, "p":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 691
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 694
    .end local v3    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 697
    .end local v0    # "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "outageProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_3
    return-void
.end method

.method private getActualProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 5
    .param p1, "baseProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v2, "getActualProduct"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    move-object v1, p1

    .line 471
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 480
    :cond_0
    :goto_0
    return-object v1

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 475
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 477
    .local v0, "index":I
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method private getProductPosition(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v2, "getProductPosition"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    .line 202
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 202
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-string v0, "getProductView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;
    .locals 7
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-string v4, "getProductView"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "productView":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getTagForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/Object;

    move-result-object v2

    .line 447
    .local v2, "tag":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 448
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 449
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    move-object v1, v3

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private getTagForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/Object;
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-string v1, "getTagForProduct"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 463
    .end local p1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    :goto_0
    return-object p1

    .line 462
    .restart local p1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 463
    .local v0, "choiceIdx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private hasCustomization(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "hasCustomization"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private initProductInstance(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const-string v2, "initProductInstance"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 301
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 303
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 304
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_0
    return-object v0
.end method

.method private isCustomizable(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isCustomizable"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 633
    :cond_1
    return v0
.end method

.method private mealChanged()V
    .locals 3

    .prologue
    const-string v1, "mealChanged"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 639
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnMealChangedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnMealChangedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;->onChange(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V

    .line 642
    :cond_0
    return-void
.end method

.method private populateChoicesForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/ArrayList;I)I
    .locals 15
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, "viewsToKeep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v1, "populateChoicesForProduct"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    new-instance v14, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v3, v5

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const/4 v9, 0x0

    .line 386
    .local v9, "choicesSize":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    .line 388
    const/4 v7, 0x0

    .local v7, "choiceIndex":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 391
    .local v6, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v10

    .line 392
    .local v10, "hideSingleChoice":Z
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v10, :cond_1

    .line 393
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v13

    .line 394
    .local v13, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v13}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 396
    .local v8, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 397
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->isUnavailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v6, v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 401
    .end local v8    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 388
    .end local v13    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 406
    .local v2, "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->isUnavailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    .line 408
    move-object v2, v6

    .line 411
    :cond_3
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v12

    .line 412
    .local v12, "productView":Landroid/view/View;
    if-nez v12, :cond_4

    .line 413
    add-int v4, p3, v7

    .line 414
    .local v4, "index":I
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;IZLcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v12

    .line 415
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 417
    .end local v4    # "index":I
    :cond_4
    new-instance v11, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v6, v7, v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V

    .line 418
    .local v11, "mealItemData":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 423
    .end local v2    # "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v10    # "hideSingleChoice":Z
    .end local v11    # "mealItemData":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    .end local v12    # "productView":Landroid/view/View;
    :cond_5
    return v9
.end method

.method private populateMealList(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 14
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v13, 0x0

    const-string v11, "populateMealList"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object p1, v12, v13

    invoke-static {p0, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 312
    const/4 v0, 0x1

    .line 314
    .local v0, "allChoicesSelected":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v10, "viewsToKeep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 316
    .local v2, "index":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v8, "productIngredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 318
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 319
    .local v4, "ingredientSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v11}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getActualProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 323
    .local v3, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v5

    .line 326
    .local v5, "ingredientView":Landroid/view/View;
    if-nez v5, :cond_0

    .line 327
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v11, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v5

    .line 328
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 330
    :cond_0
    new-instance v6, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    invoke-direct {v6, v3}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 331
    .local v6, "mealItem":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v2, v2, 0x1

    .line 337
    invoke-direct {p0, v3, v10, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->populateChoicesForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/ArrayList;I)I

    move-result v11

    add-int/2addr v2, v11

    .line 343
    iget-boolean v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    if-nez v11, :cond_1

    .line 344
    const/4 v0, 0x0

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v5    # "ingredientView":Landroid/view/View;
    .end local v6    # "mealItem":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    :cond_2
    invoke-virtual {p1, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 369
    .end local v1    # "i":I
    .end local v4    # "ingredientSize":I
    :goto_1
    invoke-direct {p0, p1, v10, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->populateChoicesForProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/ArrayList;I)I

    .line 374
    iget-boolean v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    and-int/2addr v11, v0

    iput-boolean v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    .line 376
    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->removeAllViews(Ljava/util/List;)V

    .line 377
    return-void

    .line 349
    :cond_3
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 350
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getActualProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 351
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_5

    .line 352
    :cond_4
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 353
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 355
    :cond_5
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 357
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;

    move-result-object v9

    .line 359
    .local v9, "productView":Landroid/view/View;
    if-nez v9, :cond_6

    .line 360
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v11, v13}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v9

    .line 361
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    :cond_6
    new-instance v6, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    invoke-direct {v6, v7}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 364
    .restart local v6    # "mealItem":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private productChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 4
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceIndex"    # I

    .prologue
    const-string v0, "productChoiceClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductChoiceClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductChoiceClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;->onProductChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 664
    :cond_0
    return-void
.end method

.method private productCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "index"    # I

    .prologue
    const-string v0, "productCustomizeClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 652
    :cond_0
    return-void
.end method

.method private productInfoClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "recipeId"    # Ljava/lang/String;

    .prologue
    const-string v0, "productInfoClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;->onProductInfoClicked(Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method private removeAllViews(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "viewsToKeep":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const-string v2, "removeAllViews"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 430
    .local v1, "v":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setCustomizationButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "index"    # I
    .param p3, "item"    # Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "setCustomizationButton"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mHideCustomizationButton:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->isCustomizable(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p3}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->hasCustomization(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p3, v4}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonHighlighted(Z)V

    .line 582
    :cond_0
    invoke-virtual {p3}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p3}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupInfoButton(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 4
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "item"    # Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    .prologue
    const/4 v3, 0x0

    const-string v0, "setupInfoButton"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 617
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;-><init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showView(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const-string v2, "showView"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iput p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    .line 273
    const/4 v1, -0x1

    .line 279
    .local v1, "quantity":I
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 285
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v0, :cond_1

    .line 286
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->initProductInstance(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 289
    :cond_1
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->populateMealList(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 290
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 291
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 294
    :cond_2
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 295
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mealChanged()V

    .line 296
    return-void
.end method

.method private sortDimensionBySizeCode(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    const-string v3, "sortDimensionBySizeCode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 151
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 143
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getSizeCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getSizeCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 145
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    .line 146
    .local v2, "temp":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v2    # "temp":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBaseProductMenuTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getBaseProductMenuTypes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->baseProductMenuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2

    .prologue
    const-string v0, "getCurrentOrderProduct"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    return-object v0
.end method

.method public getMealItemAt(I)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-string v0, "getMealItemAt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mMealItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getProducts"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public isAllChoiceSelected()Z
    .locals 2

    .prologue
    const-string v0, "isAllChoiceSelected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mAllChoiceSelected:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabReselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v1, "onTabSelected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 253
    .local v0, "position":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOrderProducts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->initProductInstance(I)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 257
    :cond_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->showView(I)V

    .line 258
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabUnselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public setOnMealChangedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;

    .prologue
    const-string v0, "setOnMealChangedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnMealChangedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;

    .line 225
    return-void
.end method

.method public setOnProductChoiceClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;)V
    .locals 3
    .param p1, "onProductChoiceClickedListener"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;

    .prologue
    const-string v0, "setOnProductChoiceClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductChoiceClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;

    .line 229
    return-void
.end method

.method public setOnProductCustomizeClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;)V
    .locals 3
    .param p1, "onProductCustomizeClickedListener"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;

    .prologue
    const-string v0, "setOnProductCustomizeClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;

    .line 237
    return-void
.end method

.method public setOnProductInfoClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;)V
    .locals 3
    .param p1, "onProductInfoClickedListener"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;

    .prologue
    const-string v0, "setOnProductInfoClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;

    .line 233
    return-void
.end method

.method public setupWithTabLayout(Landroid/support/design/widget/TabLayout;)V
    .locals 14
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;

    .prologue
    const-string v9, "setupWithTabLayout"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    .line 155
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "mOutageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "mOutageCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "productCode":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v4    # "productCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 166
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 168
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 170
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 171
    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f09060b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getShortName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    .line 173
    .local v6, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {p1, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 174
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 175
    .local v8, "v":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 177
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 184
    .end local v5    # "str":Ljava/lang/String;
    .end local v8    # "v":Landroid/view/View;
    :goto_2
    iget v9, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    if-ne v0, v9, :cond_1

    .line 185
    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v6    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v9

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getShortName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    .line 181
    .restart local v6    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {p1, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_2

    .line 189
    .end local v0    # "i":I
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v6    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 190
    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    .line 191
    .restart local v6    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v6, :cond_4

    .line 192
    const v9, 0x7f040199

    invoke-virtual {v6, v9}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 193
    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020014

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 194
    .local v7, "textView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 197
    .end local v6    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_5
    invoke-virtual {p1, p0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 198
    return-void
.end method

.method public updateCurrentView()V
    .locals 2

    .prologue
    const-string v0, "updateCurrentView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->clearAll()V

    .line 241
    iget v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->showView(I)V

    .line 242
    return-void
.end method
