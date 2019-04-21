.class public Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ProductCustomizationFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;


# static fields
.field public static RESULT_PRODUCT:Ljava/lang/String;

.field public static RESULT_PRODUCT_INDEX:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

.field private mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mProductIndex:I

.field private mProducts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private resetButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "RESULT_PRODUCT"

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 38
    const-string v0, "RESULT_PRODUCT_INDEX"

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.customization.ProductCustomizationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetAction()V

    return-void
.end method

.method private getItem(Lcom/mcdonalds/sdk/modules/models/Ingredient;ZIZ)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    .locals 6
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "header"    # Z
    .param p3, "type"    # I
        .annotation build Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem$ProductCustomizationType;
        .end annotation
    .end param
    .param p4, "reset"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v2, "getItem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 186
    .local v0, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_0
    if-nez p3, :cond_1

    .line 197
    new-instance v1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;

    invoke-direct {v1, p1, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationIngredient;-><init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 202
    .local v1, "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    :goto_1
    invoke-virtual {v1, p2}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->setHeader(Z)V

    .line 204
    return-object v1

    .line 192
    .end local v1    # "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v3

    invoke-direct {p0, v2, v3, p4}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getOrderProduct(Lcom/mcdonalds/sdk/modules/models/Product;IZ)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationExtra;

    invoke-direct {v1, p1, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationExtra;-><init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .restart local v1    # "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    goto :goto_1
.end method

.method private getOrderProduct(Lcom/mcdonalds/sdk/modules/models/Product;IZ)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "defaultQuantity"    # I
    .param p3, "reset"    # Z

    .prologue
    const-string v2, "getOrderProduct"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 210
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    move-object v1, v0

    .line 219
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .local v1, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    return-object v1

    .line 214
    .end local v1    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 219
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v1    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method private isCustomizationNotDefault()Z
    .locals 4

    .prologue
    const-string v1, "isCustomizationNotDefault"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    .line 100
    .local v0, "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    iget-object v2, v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v2

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 104
    .end local v0    # "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putDataToAdapter(Z)V
    .locals 10
    .param p1, "reset"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "putDataToAdapter"

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    .line 157
    .local v4, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v4, :cond_3

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;>;"
    const/4 v1, 0x1

    .line 162
    .local v1, "header":Z
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 163
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-direct {p0, v2, v1, v8, p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getItem(Lcom/mcdonalds/sdk/modules/models/Ingredient;ZIZ)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v1, 0x0

    .line 165
    goto :goto_0

    .line 167
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_0
    const/4 v1, 0x1

    .line 168
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 171
    .restart local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getIsCustomerFriendly()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    invoke-direct {p0, v2, v1, v9, p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getItem(Lcom/mcdonalds/sdk/modules/models/Ingredient;ZIZ)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v1, 0x0

    goto :goto_1

    .line 177
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->setItems(Ljava/util/List;)V

    .line 179
    .end local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v1    # "header":Z
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;>;"
    :cond_3
    return-void
.end method

.method private resetAction()V
    .locals 2

    .prologue
    const-string v0, "resetAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->putDataToAdapter(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->onChangeDataInAdapter()V

    .line 153
    return-void
.end method

.method private save()V
    .locals 6

    .prologue
    const-string v3, "save"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    .line 226
    .local v2, "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    iget-object v4, v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    iget-object v5, v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 227
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->ingredient:Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v2    # "item":Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 235
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    iget v4, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProductIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 245
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->putDataToAdapter(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->onChangeDataInAdapter()V

    .line 124
    return-void
.end method

.method public onChangeDataInAdapter()V
    .locals 3

    .prologue
    const-string v0, "onChangeDataInAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->isCustomizationNotDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PRODUCT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProductIndex:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProducts:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->setOnUpdateDataListener(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->setHasOptionsMenu(Z)V

    .line 61
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "ARG_PRODUCT"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 129
    const v0, 0x7f120007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0901ae

    const/4 v8, 0x0

    .line 66
    const v6, 0x7f0400e3

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1102ba

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 69
    .local v2, "list":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->mAdapter:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 73
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    const v6, 0x7f04001d

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 76
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 77
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "actionBarView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 82
    .local v3, "parent":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v3, v8, v8}, Landroid/support/v7/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 83
    const v6, 0x7f110091

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v6, 0x7f110092

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    .line 86
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->resetButton:Landroid/widget/TextView;

    new-instance v7, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment$1;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment$1;-><init>(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .end local v1    # "actionBarView":Landroid/view/View;
    .end local v3    # "parent":Landroid/support/v7/widget/Toolbar;
    .end local v4    # "title":Landroid/widget/TextView;
    :cond_0
    return-object v5
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

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 139
    :sswitch_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->save()V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f11054c -> :sswitch_1
    .end sparse-switch
.end method
