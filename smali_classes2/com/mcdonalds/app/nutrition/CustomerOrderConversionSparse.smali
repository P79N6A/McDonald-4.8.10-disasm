.class public Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;
.super Ljava/lang/Object;
.source "CustomerOrderConversionSparse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$RecipeIndex;,
        Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;,
        Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field mGridListener:Lcom/mcdonalds/app/nutrition/GridListener;

.field mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field private recipeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.CustomerOrderConversionSparse"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.CustomerOrderConversionSparse"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->recipeLookup:Landroid/util/SparseArray;

    return-object v0
.end method

.method private customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 12
    .param p1, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    const-string v9, "customerOrderProductToOrderProduct"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>()V

    .line 71
    .local v7, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProductCode(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 77
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getIsLight()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 80
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getPromoQuantity()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setPromoQuantity(I)V

    .line 83
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 84
    .local v8, "productCode":I
    iget-object v9, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->recipeLookup:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_0

    .line 85
    iget-object v9, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->recipeLookup:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    :cond_0
    const/4 v6, 0x0

    .line 90
    .local v6, "i":I
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "customerChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    if-nez v3, :cond_4

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v9}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setChoices(Ljava/util/List;)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    if-nez v1, :cond_6

    .line 112
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v9}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setComponents(Ljava/util/List;)V

    .line 121
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v5

    .line 122
    .local v5, "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    if-nez v5, :cond_7

    .line 123
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v9}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setCustomizations(Ljava/util/List;)V

    .line 130
    :cond_3
    return-object v7

    .line 95
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .end local v5    # "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 97
    .local v2, "customerChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 100
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 101
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->append(ILjava/lang/Object;)V

    .line 104
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_0

    .line 114
    .end local v2    # "customerChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 115
    .local v0, "component":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_1

    .line 125
    .end local v0    # "component":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .restart local v5    # "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 126
    .local v4, "customization":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->customerOrderProductToOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addCustomization(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_2
.end method
