.class public Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProductChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field private mBasePrice:D

.field private final mContext:Landroid/content/Context;

.field private mHideCustomizationButton:Z

.field private mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mOutageCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/OrderProduct;D)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "basePrice"    # D

    .prologue
    .line 54
    const v0, 0x7f04017f

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mSelectedPosition:I

    .line 56
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.hideProductCustomizationButton"

    .line 59
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mHideCustomizationButton:Z

    .line 60
    iput-wide p3, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mBasePrice:D

    .line 62
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->reset(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductChooserListAdapter"

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

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductChooserListAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->onProductInfoButtonClicked(Ljava/lang/String;)V

    return-void
.end method

.method private checkForSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 7
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "checkForSingleChoiceItems"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {p1, v5}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 271
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 272
    const/4 v1, 0x0

    .local v1, "choiceIndex":I
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 273
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 274
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v2

    .line 275
    .local v2, "hideSingleChoice":Z
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 280
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choiceIndex":I
    .end local v2    # "hideSingleChoice":Z
    :cond_0
    :goto_1
    return v3

    .line 272
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v1    # "choiceIndex":I
    .restart local v2    # "hideSingleChoice":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choiceIndex":I
    .end local v2    # "hideSingleChoice":Z
    :cond_2
    move v3, v4

    .line 280
    goto :goto_1
.end method

.method private getSpecialInstructionsNames(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 6
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v3, "getSpecialInstructionsNames"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, "productNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    .line 287
    .local v0, "customization":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 288
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 292
    const-string v3, ""

    .line 295
    :goto_1
    return-object v3

    :cond_1
    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "position"    # I

    .prologue
    const-string v0, "onProductCustomizeClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    goto :goto_0
.end method

.method private onProductInfoButtonClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "foodId"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProductInfoButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;->onProductInfoButtonClicked(Ljava/lang/String;)V

    goto :goto_0
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

    .line 299
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 300
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductIngredients(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 304
    .end local v1    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductExtras(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 308
    .end local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v3, v4

    .line 308
    :cond_3
    return v3
.end method


# virtual methods
.method public clearAndAddAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orderProductList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const-string v0, "clearAndAddAll"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->clear()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->addAll(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public clearAndAddAll(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "choiceList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p2, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const-string v0, "clearAndAddAll"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->clear()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->addAll(Ljava/util/Collection;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->addAll(Ljava/util/Collection;)V

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    invoke-virtual/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 162
    .local v7, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez p2, :cond_3

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 164
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f04017f

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 165
    new-instance v4, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 166
    .local v4, "holder":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    const-class v14, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOutageCode:Ljava/util/List;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 173
    const-string v14, "%s %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f09060b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setNameText(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getSpecialInstructionsNames(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setSpecialInstructionsText(Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mHideCustomizationButton:Z

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->productHasIngredientsOrExtras(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v10, 0x1

    .line 213
    .local v10, "showHatButton":Z
    :goto_2
    if-eqz v10, :cond_b

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonVisibility(I)V

    .line 217
    if-eqz v10, :cond_c

    .line 218
    invoke-static {v7}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v14

    .line 217
    :goto_4
    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonHighlighted(Ljava/lang/String;)V

    .line 221
    if-eqz v10, :cond_d

    .line 222
    new-instance v14, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v7, v1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :goto_5
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v6

    .line 235
    .local v6, "infoButton":Landroid/widget/ImageButton;
    const/4 v14, 0x4

    invoke-virtual {v6, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v14

    if-nez v14, :cond_1

    .line 237
    const-string v14, "nutritionInfo"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Landroid/widget/ImageButton;)V

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 256
    :cond_1
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v14

    .line 259
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v14

    sget-object v15, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 260
    invoke-virtual {v14, v15}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v14

    .line 261
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 264
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v14, "getView"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 168
    .end local v4    # "holder":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    .end local v6    # "infoButton":Landroid/widget/ImageButton;
    .end local v10    # "showHatButton":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    .restart local v4    # "holder":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    goto/16 :goto_0

    .line 176
    :cond_4
    const/4 v3, 0x0

    .line 177
    .local v3, "hasSubSelection":Z
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 178
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v14

    if-nez v14, :cond_7

    :cond_5
    const/4 v3, 0x1

    .line 183
    :cond_6
    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setViewChecked(Landroid/view/ViewGroup;I)V

    .line 184
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setSubSelection(Z)V

    .line 185
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setNameText(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getSpecialInstructionsNames(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setSpecialInstructionsText(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mSelectedPosition:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_9

    .line 189
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    .line 194
    :goto_7
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v11

    .line 195
    .local v11, "showUplift":Z
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftTextVisible(Z)V

    .line 197
    if-eqz v11, :cond_0

    .line 198
    invoke-static {v7}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v8

    .line 199
    .local v8, "productPrice":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mBasePrice:D

    sub-double v12, v8, v14

    .line 201
    .local v12, "uplift":D
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v14, v12, v14

    if-ltz v14, :cond_0

    .line 202
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftTextVisible(Z)V

    .line 203
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    .line 204
    .local v2, "formatter":Ljava/text/NumberFormat;
    const-string v14, "+ %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    .end local v2    # "formatter":Ljava/text/NumberFormat;
    .end local v8    # "productPrice":D
    .end local v11    # "showUplift":Z
    .end local v12    # "uplift":D
    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    .line 179
    :cond_8
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->checkForSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v3

    goto :goto_6

    .line 191
    :cond_9
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    goto :goto_7

    .line 211
    .end local v3    # "hasSubSelection":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 213
    .restart local v10    # "showHatButton":Z
    :cond_b
    const/4 v14, 0x4

    goto/16 :goto_3

    .line 218
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 229
    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5
.end method

.method public reset(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 16
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v13, "reset"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    .line 71
    .local v4, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v5, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    .line 80
    .local v10, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    sget-object v13, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    .line 86
    .local v7, "isDelivery":Z
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v12

    .line 87
    .local v12, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v12, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v3

    .line 90
    .local v3, "currentDayPart":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v6, "ingredientsFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 96
    .local v9, "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v14

    const-string v15, "Delivery"

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->checkDayPart(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 97
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 103
    .restart local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v14

    const-string v15, "Delivery"

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->checkDayPart(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 104
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 111
    .restart local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->checkDayPart(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 112
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    .end local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 117
    .restart local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->checkDayPart(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 118
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 123
    .end local v9    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoices(Ljava/util/List;)V

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->clearAndAddAll(Ljava/util/List;Ljava/util/List;)V

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v8, "mOutageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_9

    .line 129
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v8

    .line 131
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOutageCode:Ljava/util/List;

    .line 132
    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 133
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 134
    .local v11, "productCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mOutageCode:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 137
    .end local v11    # "productCode":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public setListener(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mListener:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;

    .line 67
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 4
    .param p1, "selectedPosition"    # I

    .prologue
    const-string v0, "setSelectedPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iput p1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->mSelectedPosition:I

    .line 154
    return-void
.end method
