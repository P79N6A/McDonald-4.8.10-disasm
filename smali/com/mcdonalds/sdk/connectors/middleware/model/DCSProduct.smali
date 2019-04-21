.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;
.source "DCSProduct.java"


# instance fields
.field public choices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Choices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;",
            ">;"
        }
    .end annotation
.end field

.field public components:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Components"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;",
            ">;"
        }
    .end annotation
.end field

.field public customizations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Customizations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;",
            ">;"
        }
    .end annotation
.end field

.field public promoQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromoQuantity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;-><init>()V

    return-void
.end method

.method public static fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    .locals 10
    .param p0, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 28
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;-><init>()V

    .line 29
    .local v6, "dcsProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    invoke-virtual {v6, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->populate(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getPromoQuantity()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->promoQuantity:I

    .line 33
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    .line 35
    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 37
    .local v2, "component":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v2    # "component":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    .line 43
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 45
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v5

    .line 50
    .local v5, "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    .line 51
    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 53
    .local v4, "customization":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    .end local v4    # "customization":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_2
    return-object v6
.end method

.method public static fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    .locals 1
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 94
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;-><init>()V

    .line 95
    .local v0, "dcsProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->populate(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 98
    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->processMealIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 103
    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->processChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 107
    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->processCustomizations(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 109
    return-object v0
.end method

.method private processChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    .line 156
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "orderProductChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 166
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->fromChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    move-result-object v1

    .line 168
    .local v1, "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processCustomizations(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    .line 175
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    .line 176
    .local v2, "orderProductCustomizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-nez v2, :cond_1

    .line 184
    :cond_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 181
    .local v1, "customizationProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    move-result-object v0

    .line 182
    .local v0, "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processMealIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    .line 135
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 147
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v0

    .line 149
    .local v0, "component":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 190
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 194
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->promoQuantity:I

    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->promoQuantity:I

    if-ne v3, v4, :cond_0

    .line 195
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    .line 195
    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 196
    :cond_6
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 198
    :cond_7
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->hashCode()I

    move-result v0

    .line 205
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 206
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->promoQuantity:I

    add-int v0, v1, v2

    .line 209
    return v0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_0

    :cond_2
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 9

    .prologue
    .line 62
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 64
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "customerOrderProductChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 66
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    .line 67
    .local v4, "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v4    # "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setChoices(Ljava/util/List;)V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "customerOrderProductComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 74
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 75
    .local v5, "dcsComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v5    # "dcsComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setComponents(Ljava/util/List;)V

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, "customerOrderProductCustomizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 82
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    .line 83
    .local v6, "dcsCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    .end local v6    # "dcsCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    :cond_2
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setCustomizations(Ljava/util/List;)V

    .line 88
    iget v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->promoQuantity:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setPromoQuantity(Ljava/lang/Integer;)V

    .line 90
    return-object v0
.end method

.method public toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 7

    .prologue
    .line 113
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 114
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 116
    .local v1, "component":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 119
    .end local v1    # "component":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->choices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    .line 121
    .local v0, "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->toChoice()Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)V

    goto :goto_1

    .line 124
    .end local v0    # "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->customizations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    .line 126
    .local v2, "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    iget v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->productCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addCustomization(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_2

    .line 129
    .end local v2    # "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    :cond_2
    return-object v3
.end method
