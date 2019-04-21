.class public Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;
.super Ljava/lang/Object;
.source "ChoiceSelectorPresenter.java"


# instance fields
.field private mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

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

.field private mProductPosition:I

.field private mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "view"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    .line 43
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    .line 45
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 46
    return-void
.end method

.method private filterOptions()V
    .locals 11

    .prologue
    const-string v8, "filterOptions"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    instance-of v8, v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v8, :cond_3

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 64
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getCategories()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v3

    .line 73
    .local v3, "hideSingleChoice":Z
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    .line 74
    .local v6, "isDelivery":Z
    if-eqz v6, :cond_9

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 77
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v9

    const-string v10, "Delivery"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v3, :cond_1

    .line 80
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .end local v3    # "hideSingleChoice":Z
    .end local v6    # "isDelivery":Z
    :cond_3
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v8, :cond_0

    .line 68
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 83
    .restart local v2    # "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .restart local v3    # "hideSingleChoice":Z
    .restart local v6    # "isDelivery":Z
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v5, "ingredientsFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 85
    .local v7, "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v9

    const-string v10, "Delivery"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 86
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v7    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_6
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v8, :cond_7

    .line 90
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 91
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 93
    :cond_7
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :goto_3
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupOutageProducts()V

    .line 119
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.hideOutagedItemsInMenu"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 120
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOutageCode:Ljava/util/List;

    invoke-direct {p0, v8, v9}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->filterOutageProducts(Ljava/util/List;Ljava/util/List;)V

    .line 123
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOutageCode:Ljava/util/List;

    invoke-interface {v8, v9, v10}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->showOptions(Ljava/util/List;Ljava/util/List;)V

    .line 124
    return-void

    .line 96
    .end local v2    # "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .end local v5    # "ingredientsFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v2    # "choicesFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 98
    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    if-nez v3, :cond_a

    .line 99
    :cond_c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 102
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v5    # "ingredientsFiltered":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 104
    .restart local v7    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v9

    const-string v10, "Pickup"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 105
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 108
    .end local v7    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_f
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v8, :cond_10

    .line 109
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 110
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 112
    :cond_10
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3
.end method

.method private filterOutageProducts(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p2, "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v2, "filterOutageProducts"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "outageProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 267
    .local v1, "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v1    # "p":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 272
    return-void
.end method

.method private setSingleChoiceItemIfAvailableAndCheckChoiceSelections()Z
    .locals 7

    .prologue
    const-string v5, "setSingleChoiceItemIfAvailableAndCheckChoiceSelections"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    .line 219
    .local v0, "allChoicesMade":Z
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-nez v5, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 240
    :cond_0
    return v0

    .line 222
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    const/4 v2, 0x0

    .local v2, "choiceIndex":I
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 227
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v4

    .line 228
    .local v4, "hideSingleChoice":Z
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 231
    .local v3, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 232
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 234
    .end local v3    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    if-nez v5, :cond_3

    .line 235
    const/4 v0, 0x0

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setupOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "setupOrderProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->filterOptions()V

    .line 51
    return-void
.end method

.method private setupOutageProducts()V
    .locals 6

    .prologue
    const-string v3, "setupOutageProducts"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 246
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v0

    .line 250
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOutageCode:Ljava/util/List;

    .line 251
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, "productCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOutageCode:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v1    # "productCode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setupSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "selection"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "setupSelection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 150
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 151
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 152
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->setSelected(I)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public back()V
    .locals 4

    .prologue
    const-string v2, "back"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setSingleChoiceItemIfAvailableAndCheckChoiceSelections()Z

    move-result v0

    .line 175
    .local v0, "allChoicesMade":Z
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    instance-of v2, v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 181
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 182
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 186
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->done()V

    goto :goto_0
.end method

.method public done()V
    .locals 6

    .prologue
    const-string v2, "done"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setSingleChoiceItemIfAvailableAndCheckChoiceSelections()Z

    move-result v0

    .line 190
    .local v0, "allChoicesMade":Z
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    invoke-interface {v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->cancel()V

    .line 213
    :goto_0
    return-void

    .line 193
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 194
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    instance-of v2, v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 198
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 199
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 200
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setSingleChoiceItemIfAvailableAndCheckChoiceSelections()Z

    move-result v0

    .line 201
    goto :goto_1

    .line 202
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 203
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 204
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOutageCode:Ljava/util/List;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    invoke-interface {v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->cancel()V

    goto :goto_0

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v4, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mIndex:I

    iget v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mProductPosition:I

    invoke-interface {v2, v3, v4, v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->finalize(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V

    goto :goto_0
.end method

.method public getBasePrice()D
    .locals 5

    .prologue
    const-string v1, "getBasePrice"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    .line 129
    .local v0, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    .line 134
    .local v2, "retValue":D
    :goto_0
    return-wide v2

    .line 132
    .end local v2    # "retValue":D
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "retValue":D
    goto :goto_0
.end method

.method public productCustomized(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v2, "productCustomized"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "position":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 168
    .local v0, "option":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 169
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    invoke-interface {v2, v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->updateCustomization(I)V

    .line 171
    .end local v0    # "option":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 4
    .param p1, "mIndex"    # I

    .prologue
    const-string v0, "setIndex"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iput p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mIndex:I

    .line 158
    return-void
.end method

.method public setProductPosition(I)V
    .locals 4
    .param p1, "mProductPosition"    # I

    .prologue
    const-string v0, "setProductPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iput p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mProductPosition:I

    .line 162
    return-void
.end method

.method public setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "selection"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "setSelection"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 139
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->hasSubChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mBackStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setupOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_1

    .line 145
    .local v0, "doneEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->mView:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;->setDoneEnabled(Z)V

    .line 146
    return-void

    .end local v0    # "doneEnabled":Z
    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method
