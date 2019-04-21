.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
.source "MWProductView.java"


# instance fields
.field public choices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Choices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;",
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;",
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;-><init>()V

    return-void
.end method

.method public static fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .locals 2
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 67
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    .line 68
    .local v0, "ecpProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    return-object v1
.end method

.method private processChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    .line 195
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "orderProductChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :cond_0
    return-void

    .line 203
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

    .line 205
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;-><init>()V

    .line 207
    .local v1, "mwProductViewChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->populateWithChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    .line 209
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processCustomizations(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    .line 216
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    .line 217
    .local v2, "orderProductCustomizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-nez v2, :cond_1

    .line 228
    :cond_0
    return-void

    .line 221
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

    .line 222
    .local v1, "customizationProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;-><init>()V

    .line 224
    .local v0, "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 226
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processMealIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 6
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    .line 171
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v3

    .line 178
    .local v3, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz v3, :cond_0

    .line 182
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 183
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 185
    .local v1, "componentProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;-><init>()V

    .line 186
    .local v0, "component":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 188
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;
    .locals 14
    .param p0, "mwProductView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .prologue
    .line 93
    new-instance v8, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;-><init>()V

    .line 95
    .local v8, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    iget v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->productCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setProductCode(Ljava/lang/Integer;)V

    .line 96
    iget v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->validationErrorCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setValidationErrorCode(Ljava/lang/Integer;)V

    .line 97
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->totalValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setTotalValue(Ljava/lang/Double;)V

    .line 98
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->unitPrice:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setUnitPrice(Ljava/lang/Double;)V

    .line 100
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 101
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v10, "tempComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;

    .line 103
    .local v5, "mwProductViewComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v1

    .line 104
    .local v1, "componentView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v1    # "componentView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v5    # "mwProductViewComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    :cond_0
    invoke-virtual {v8, v10}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setComponents(Ljava/util/ArrayList;)V

    .line 109
    .end local v10    # "tempComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_1
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v9, "tempChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    .line 112
    .local v4, "mwProductViewChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->quantity:I

    if-ge v3, v13, :cond_2

    .line 113
    iget-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-static {v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v0

    .line 114
    .local v0, "choiceView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "choiceView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v3    # "i":I
    .end local v4    # "mwProductViewChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    :cond_3
    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setChoices(Ljava/util/ArrayList;)V

    .line 120
    .end local v9    # "tempChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_4
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 121
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v11, "tempCustomizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;

    .line 123
    .local v6, "mwProductViewCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v2

    .line 124
    .local v2, "customizationView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    .end local v2    # "customizationView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v6    # "mwProductViewCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    :cond_5
    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setCustomizations(Ljava/util/ArrayList;)V

    .line 129
    .end local v11    # "tempCustomizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->promotion:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;

    .line 130
    .local v7, "mwPromotion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    if-eqz v7, :cond_7

    .line 131
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->toPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setPromotion(Lcom/mcdonalds/sdk/modules/models/Promotion;)V

    .line 134
    :cond_7
    iget v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->quantity:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setQuantity(Ljava/lang/Integer;)V

    .line 135
    return-object v8
.end method


# virtual methods
.method public getChoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    return-object v0
.end method

.method public getCustomizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    return-object v0
.end method

.method public populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    const/4 p0, 0x0

    .line 89
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    :goto_0
    return-object p0

    .line 78
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->processMealIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->processChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->processCustomizations(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    .line 156
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    .line 146
    return-void
.end method

.method public setCustomizations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    .local p1, "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    .line 166
    return-void
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 12

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v8

    .line 30
    .local v8, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 32
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 33
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->components:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;

    .line 35
    .local v3, "component":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "component":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    .end local v7    # "i":I
    .end local v9    # "size":I
    :cond_0
    invoke-virtual {v8, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setComponents(Ljava/util/List;)V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v1, "appChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    if-eqz v10, :cond_2

    .line 42
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->choices:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    .line 44
    .local v2, "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget v11, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->quantity:I

    if-ge v7, v11, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 46
    .local v0, "appChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "appChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v2    # "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v8, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setChoices(Ljava/util/List;)V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v6, "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    if-eqz v10, :cond_3

    .line 54
    const/4 v7, 0x0

    .restart local v7    # "i":I
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .restart local v9    # "size":I
    :goto_2
    if-ge v7, v9, :cond_3

    .line 55
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->customizations:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;

    .line 57
    .local v5, "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 60
    .end local v5    # "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomization;
    .end local v7    # "i":I
    .end local v9    # "size":I
    :cond_3
    invoke-virtual {v8, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setCustomizations(Ljava/util/List;)V

    .line 61
    iget v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->quantity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 63
    return-object v8
.end method
