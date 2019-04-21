.class public Lcom/mcdonalds/app/ordering/ProductUtils;
.super Ljava/lang/Object;
.source "ProductUtils.java"


# static fields
.field private static INGREDIENT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductUtils$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/ProductUtils$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/ordering/ProductUtils;->INGREDIENT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {p0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->setOptionsToNewProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method private static addAllComponentProductsToSparseArray(Landroid/util/SparseArray;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
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
    .local p0, "ingredientSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p1, "ingredientList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v3, "addAllComponentProductsToSparseArray"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    if-nez p1, :cond_1

    .line 196
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 194
    .local v0, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected static addChoiceToOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;ILcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V
    .locals 17
    .param p0, "parentProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "parentChoiceProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choice"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .param p3, "idx"    # I
    .param p4, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-string v12, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v13, "addChoiceToOrderProduct"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    const/4 v15, 0x2

    aput-object p2, v14, v15

    const/4 v15, 0x3

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object p4, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    if-nez v11, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v8, p1

    .line 301
    check-cast v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 307
    .local v8, "parentChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 311
    .local v6, "customerChoiceWithinChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->setQuantity(I)V

    .line 313
    const/4 v5, 0x0

    .line 314
    .local v5, "choiceWithinChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    .line 315
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v11

    move/from16 v0, p3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    .line 316
    .local v9, "parentChoiceIngredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 317
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 318
    .local v7, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 320
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v12

    .line 319
    invoke-static {v7, v12}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v5

    goto :goto_1

    .line 326
    .end local v7    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_3
    if-eqz v5, :cond_0

    .line 331
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    .line 330
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 334
    .local v4, "choiceSolutionProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v5, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 335
    move-object v3, v5

    .line 337
    .local v3, "choiceSolutionOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object v10, v4

    .line 338
    .local v10, "productToCustomize":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v2

    .line 348
    .end local v4    # "choiceSolutionProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v5    # "choiceWithinChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v6    # "customerChoiceWithinChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v9    # "parentChoiceIngredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .local v2, "choiceSolutionCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :goto_2
    move-object/from16 v0, p4

    invoke-static {v10, v2, v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->applyCustomizationsAndChoicesToProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 350
    invoke-virtual {v8, v3}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto/16 :goto_0

    .line 343
    .end local v2    # "choiceSolutionCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v3    # "choiceSolutionOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v10    # "productToCustomize":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v11}, Lcom/mcdonalds/app/ordering/ProductUtils;->getIngredientOrderProductForProductId(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 344
    .restart local v3    # "choiceSolutionOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object v10, v3

    .line 345
    .restart local v10    # "productToCustomize":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v2

    .restart local v2    # "choiceSolutionCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    goto :goto_2
.end method

.method protected static addChoicesToOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V
    .locals 10
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v7, "addChoicesToOrderProduct"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "orderProductChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 278
    const/4 v1, 0x0

    .local v1, "ii":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 279
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 280
    .local v3, "parentChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 282
    .local v0, "customerChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-static {p0, v3, v0, v1, p2}, Lcom/mcdonalds/app/ordering/ProductUtils;->addChoiceToOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;ILcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static applyCustomizationsAndChoicesToProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V
    .locals 10
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v7, "applyCustomizationsAndChoicesToProduct"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    if-nez p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 214
    .local v2, "componentsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mcdonalds/app/ordering/ProductUtils;->addAllComponentProductsToSparseArray(Landroid/util/SparseArray;Ljava/util/List;)V

    .line 217
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 218
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 219
    .local v0, "componentCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 220
    .local v1, "componentOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_2

    .line 224
    invoke-static {v1, v0, p2}, Lcom/mcdonalds/app/ordering/ProductUtils;->applyCustomizationsAndChoicesToProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    goto :goto_1

    .line 229
    .end local v0    # "componentCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v1    # "componentOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 230
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 231
    .local v3, "customizationCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 232
    .local v4, "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v4, :cond_4

    .line 236
    invoke-static {v4, v3, p2}, Lcom/mcdonalds/app/ordering/ProductUtils;->applyCustomizationsAndChoicesToProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 239
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 244
    .end local v3    # "customizationCustomerProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v4    # "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 245
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lcom/mcdonalds/app/ordering/ProductUtils;->addChoicesToOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 249
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 253
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getIsLight()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 254
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getIsLight()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 257
    :cond_8
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getPromoQuantity()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getPromoQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setPromoQuantity(I)V

    goto/16 :goto_0
.end method

.method public static checkForSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 6
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v4, "checkForSingleChoiceItems"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->hasNonSingleChoiceChoice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 7
    .param p0, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v3, "createOrderProduct"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 172
    .local v0, "mainProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    .line 178
    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 182
    .local v1, "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v1, p0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->applyCustomizationsAndChoicesToProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    goto :goto_0
.end method

.method public static createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p0, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v2, "createOrderProduct"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/app/ordering/ProductUtils$2;-><init>(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 163
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/ProductUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 6
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v3, "getActualChoice"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    if-nez p0, :cond_1

    move-object p0, v1

    .line 598
    .end local p0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_0
    :goto_0
    return-object p0

    .line 590
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .restart local p0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    instance-of v2, p0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 591
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 592
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 593
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    .line 595
    goto :goto_0
.end method

.method public static getBaseOrderProductFromAdvertisable(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v8, 0x0

    const-string v4, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v5, "getBaseOrderProductFromAdvertisable"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v8, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-nez p0, :cond_0

    .line 462
    invoke-interface {p1, p0, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 499
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 468
    .local v1, "productCode":I
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 469
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "userName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 472
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_2

    .line 473
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    new-instance v6, Lcom/mcdonalds/app/ordering/ProductUtils$4;

    invoke-direct {v6, v1, p0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils$4;-><init>(ILcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 469
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v3    # "userName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 497
    .restart local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v3    # "userName":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, p0, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method private static getChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Choice;
    .locals 6
    .param p0, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v2, "getChoice"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v0

    return-object v0
.end method

.method private static getIngredientOrderProductForProductId(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 8
    .param p0, "parent"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "idx"    # I
    .param p2, "productCode"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v4, "getIngredientOrderProductForProductId"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 356
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 357
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public static getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 9
    .param p0, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v6, "getNameDetailsString"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, "productNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mcdonalds/app/ordering/ProductUtils;->hasSubChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    const-string v4, ""

    .line 553
    :goto_0
    return-object v4

    .line 535
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v1

    .line 536
    .local v1, "hideSingleChoice":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 538
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_1

    .line 542
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 543
    .local v3, "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v3, :cond_1

    .line 544
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 549
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v3    # "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 550
    const-string v4, ""

    goto :goto_0

    .line 553
    :cond_4
    const-string v4, ", "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getOrderProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 6
    .param p0, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v2, "getOrderProduct"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    return-object v0
.end method

.method private static getOrderProducts(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Ljava/util/List;
    .locals 8
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v5, "getOrderProducts"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "orderProductsIngredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 122
    .local v0, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getOrderProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 123
    .local v1, "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v1    # "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-object v2
.end method

.method public static getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D
    .locals 8
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v5, "getProductTotalPrice"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    .line 112
    .local v1, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v2

    .line 113
    .local v2, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge()Z

    move-result v0

    .line 114
    .local v0, "allowDownCharge":Z
    invoke-virtual {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v4

    return-wide v4
.end method

.method public static hasSubChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 6
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v4, "hasSubChoice"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 519
    :cond_1
    :goto_0
    return v0

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-static {p0}, Lcom/mcdonalds/app/ordering/ProductUtils;->checkForSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hideSingleChoice()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v1, "hideSingleChoice"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.ordering.hideSingleChoiceSolutions"

    .line 146
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 145
    return v0
.end method

.method public static populateProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V
    .locals 11
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v8, "populateProductChoices"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductChoices(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v2

    .line 60
    :cond_2
    if-eqz v2, :cond_0

    .line 61
    sget-object v6, Lcom/mcdonalds/app/ordering/ProductUtils;->INGREDIENT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setChoices(Ljava/util/List;)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "choiceProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 69
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    const/4 v4, 0x0

    .line 70
    .local v4, "qty":I
    :goto_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 71
    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 67
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v4    # "qty":I
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static populateProductIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V
    .locals 6
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v3, "populateProductIngredients"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductIngredients(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    sget-object v1, Lcom/mcdonalds/app/ordering/ProductUtils;->INGREDIENT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getOrderProducts(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 94
    :cond_1
    return-void
.end method

.method public static productHasIngredientsOrExtras(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 10
    .param p0, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v8, "productHasIngredientsOrExtras"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object p0, v9, v4

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    const-string v6, "ordering"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 573
    .local v2, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 574
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductIngredients(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v1

    .line 576
    .local v1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 578
    .end local v1    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 579
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductExtras(Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 580
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 582
    .end local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    .line 582
    :cond_3
    return v4
.end method

.method private static setOptionsToNewProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 8
    .param p0, "baseProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "swapProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ordering.ProductUtils"

    const-string v5, "setOptionsToNewProduct"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 503
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 505
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    .line 506
    .local v0, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 508
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 509
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1, v1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addCustomization(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 511
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
