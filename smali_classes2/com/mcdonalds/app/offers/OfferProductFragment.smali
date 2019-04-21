.class public Lcom/mcdonalds/app/offers/OfferProductFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OfferProductFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;,
        Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDoneMenuItem:Landroid/view/MenuItem;

.field private mHideCustomizationButton:Z

.field private mIngredientPosition:I

.field private mKey:I

.field private mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

.field private mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

.field private mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mProductListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/offers/OfferProductFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ListView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ProgressBar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/offers/OfferProductFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mHideCustomizationButton:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->productHasIngredientsOrExtras(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$500"

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

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/offers/OfferProductFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferProductFragment"

    const-string v2, "access$700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->onProductInfoButtonClicked(Ljava/lang/String;)V

    return-void
.end method

.method private offerProductSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v2, "offerProductSelected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v1, "returnIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "selected_recipe_key"

    invoke-virtual {v2, v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const-string v2, "offer_key"

    iget v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mKey:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "position"    # I

    .prologue
    const-string v1, "onProductCustomizeClicked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDP - Customization"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iput p2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mIngredientPosition:I

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "ARG_PRODUCT"

    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-class v1, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;

    const-string v2, "product_customization"

    const v3, 0xb128

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/offers/OfferProductFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 403
    return-void
.end method

.method private onProductInfoButtonClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "recipeId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onProductInfoButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    const-string v0, "/order/item"

    const-string v1, "PDP - Nutrition info"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 410
    return-void
.end method

.method private productHasIngredientsOrExtras(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 7
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "productHasIngredientsOrExtras"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 377
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductIngredients(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v1

    .line 379
    .local v1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 381
    .end local v1    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductExtras(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 383
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 385
    .end local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 386
    :cond_2
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    .line 385
    :cond_4
    return v3
.end method

.method private refresh()V
    .locals 6

    .prologue
    const-string v2, "refresh"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 174
    const-string v2, "nutritionInfo"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 175
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferProductFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferProductFragment$1;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment;)V

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 213
    .local v0, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 214
    .local v1, "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/offers/OfferProductFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment$2;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 224
    .end local v1    # "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    :cond_0
    return-void
.end method

.method private saveAction()V
    .locals 2

    .prologue
    const-string v0, "saveAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->offerProductSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 152
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const v0, 0x7f090886

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->setHasOptionsMenu(Z)V

    .line 100
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.hideProductCustomizationButton"

    .line 101
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mHideCustomizationButton:Z

    .line 103
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_product_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_product_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mKey:I

    .line 110
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "offer_product_key"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onCreateOptionsMenu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 131
    const v2, 0x7f120007

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    const v2, 0x7f11054c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    .line 133
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 134
    return-void

    :cond_0
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const v1, 0x7f0400ec

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f110144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 160
    const v1, 0x7f110346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    .line 161
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    new-instance v1, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040164

    invoke-direct {v1, p0, v2, v3}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    .line 164
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mProductListView:Landroid/widget/ListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->refresh()V

    .line 169
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 126
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const-string v0, "onItemClick"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "onOptionsItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 141
    :sswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->saveAction()V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f11054c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public updateCustomizationText(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 7
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v6, 0x1

    const-string v3, "updateCustomizationText"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getCount()I

    move-result v1

    .line 415
    .local v1, "size":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v2, "tempCustomizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 417
    iget v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mIngredientPosition:I

    if-ne v0, v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 416
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    goto :goto_1

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment;->mOfferProductListAdapter:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->notifyDataSetChanged()V

    .line 426
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090373

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 427
    return-void
.end method
