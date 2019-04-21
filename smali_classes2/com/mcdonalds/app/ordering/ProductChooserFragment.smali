.class public Lcom/mcdonalds/app/ordering/ProductChooserFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ProductChooserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;


# instance fields
.field private mBasePrice:D

.field private mChoice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mDoneMenuItem:Landroid/view/MenuItem;

.field private mIndex:I

.field private mIngredientPosition:I

.field private mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

.field private mListView:Landroid/widget/ListView;

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

.field private mParentName:Ljava/lang/String;

.field private mProductPosition:I

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mBasePrice:D

    .line 76
    return-void
.end method

.method private getBasePrice()D
    .locals 6

    .prologue
    const-string v1, "getBasePrice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v0

    .line 397
    .local v0, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    iget-wide v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mBasePrice:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/utils/SDKUtils;->doubleEquals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    .line 400
    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mBasePrice:D

    goto :goto_0
.end method

.method private getLastChild()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "getLastChild"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 268
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 276
    .restart local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method private getOrderProductCopy(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "getOrderProductCopy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 340
    .local v0, "newOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 344
    :cond_0
    return-object v0
.end method

.method private haveProductSelected()Z
    .locals 2

    .prologue
    const-string v0, "haveProductSelected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getLastChild()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveAction()V
    .locals 6

    .prologue
    const-string v3, "saveAction"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->haveProductSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 210
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    return-void

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    if-nez v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->setSingleChoiceItemIfAvailable()Z

    .line 198
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v3, "RESULT_INDEX"

    iget v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIndex:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v3, "RESULT_POSITION"

    iget v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mProductPosition:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSingleChoiceItemIfAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-string v6, "setSingleChoiceItemIfAvailable"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v6

    if-nez v6, :cond_0

    .line 218
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 221
    :cond_0
    const/4 v5, 0x0

    .line 222
    .local v5, "showAdditionalChoices":Z
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 224
    const/4 v1, 0x0

    .local v1, "choiceIndex":I
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 227
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v3

    .line 228
    .local v3, "hideSingleChoice":Z
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    const-string v6, "ordering"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 231
    .local v4, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {v0, v4}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 234
    .end local v4    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 235
    .local v2, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 236
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6, v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoiceSolution(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 224
    .end local v2    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choiceIndex":I
    .end local v3    # "hideSingleChoice":Z
    :cond_3
    return v5
.end method


# virtual methods
.method public doneAction()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "doneAction"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 148
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->haveProductSelected()Z

    move-result v8

    if-nez v8, :cond_0

    .line 149
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    .line 184
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    return-void

    .line 150
    :cond_0
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mOutageCode:Ljava/util/List;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 151
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v8

    if-nez v8, :cond_2

    .line 154
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 158
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 159
    const/4 v3, 0x0

    .local v3, "choiceIndex":I
    :goto_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 160
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 162
    .local v2, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v5

    .line 164
    .local v5, "hideSingleChoice":Z
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    .line 165
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 166
    .local v4, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 167
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoiceSolution(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 159
    .end local v4    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "choiceIndex":I
    .end local v5    # "hideSingleChoice":Z
    .end local v6    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v8

    const-string v9, "RESULT_PRODUCT"

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v8, "RESULT_INDEX"

    iget v9, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIndex:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v8, "RESULT_POSITION"

    iget v9, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mProductPosition:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    const/4 v8, -0x1

    invoke-virtual {v0, v8, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mParentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090899

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->setHasOptionsMenu(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "ARG_CHOICE_KEY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "dataPasserKey":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 104
    const-string v5, "ARG_INDEX"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIndex:I

    .line 105
    const-string v5, "ARG_PRODUCT_POSITION"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mProductPosition:I

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 108
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mOutageCode:Ljava/util/List;

    .line 111
    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, "productCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mOutageCode:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v2    # "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "productCode":Ljava/lang/String;
    :cond_0
    const-string v5, "ARG_BASE_PRICE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const-string v5, "ARG_BASE_PRICE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mBasePrice:D

    .line 121
    :cond_1
    return-void
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

    .line 125
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    const v2, 0x7f120007

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const v2, 0x7f11054c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 281
    const v1, 0x7f0400c4

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    .line 284
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 286
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getBasePrice()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/OrderProduct;D)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    .line 288
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->saveAction()V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->setListener(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$OnProductChooserListener;)V

    .line 295
    const v1, 0x7f1102ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    .line 296
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 299
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 302
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 88
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "onItemClick"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v3, p3}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 310
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getOrderProductCopy(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 315
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 317
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mOutageCode:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 324
    :goto_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isChoice()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isSingleChoice()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v3

    if-nez v3, :cond_2

    .line 327
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/mcdonalds/app/ordering/ProductChooserActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ARG_CHOICE_KEY"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string v3, "ARG_BASE_PRICE"

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getBasePrice()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 331
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0xfba4

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 320
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v3, p3}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->setSelectedPosition(I)V

    .line 321
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :sswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->saveAction()V

    goto :goto_0

    .line 138
    :sswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->doneAction()V

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f11054c -> :sswitch_1
    .end sparse-switch
.end method

.method public onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
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

    .line 356
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDP - Customization"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput p2, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIngredientPosition:I

    .line 360
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "ARG_PRODUCT"

    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-class v1, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;

    const-string v2, "product_customization"

    const v3, 0xb128

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 369
    return-void
.end method

.method public onProductInfoButtonClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "foodId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onProductInfoButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDP - Nutrition info"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 352
    return-void
.end method

.method public updateChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v2, 0x0

    const-string v0, "updateChoice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 248
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->setSelectedPosition(I)V

    .line 249
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mDoneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoiceSolutions(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)V

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoices(Ljava/util/List;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    goto :goto_0
.end method

.method public updateCustomizationText(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 9
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "updateCustomizationText"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v3

    .line 374
    .local v3, "orderProductList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIngredientPosition:I

    invoke-interface {v3, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->clearAndAddAll(Ljava/util/List;)V

    .line 378
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 379
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    iget v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIngredientPosition:I

    invoke-virtual {v4, v5, v8, v8}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, "itemView":Landroid/view/View;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListAdapter:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    iget v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIngredientPosition:I

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 381
    .local v0, "itemId":J
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mIngredientPosition:I

    invoke-virtual {v4, v2, v5, v0, v1}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 382
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 384
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->mChoiceSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f090373

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 389
    return-void
.end method
