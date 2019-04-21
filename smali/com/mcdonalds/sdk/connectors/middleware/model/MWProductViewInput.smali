.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
.source "MWProductViewInput.java"


# instance fields
.field public choices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Choices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;",
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;",
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;-><init>()V

    return-void
.end method


# virtual methods
.method public populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
    .locals 11
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    move-result-object v9

    if-nez v9, :cond_1

    .line 23
    const/4 p0, 0x0

    .line 69
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    :cond_0
    return-object p0

    .line 26
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->components:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->components:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 33
    .local v4, "componentProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;-><init>()V

    .line 34
    .local v3, "component":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    .line 35
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->components:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v3    # "component":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    .end local v4    # "componentProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->choices:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 46
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v1

    .line 49
    .local v1, "choiceIdx":I
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 50
    .local v2, "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 52
    .local v8, "solutionProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;-><init>()V

    .line 53
    .local v0, "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;
    invoke-virtual {v0, v2, v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;->populateWithChoiceAndSolution(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;

    .line 54
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->choices:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "choice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;
    .end local v1    # "choiceIdx":I
    .end local v2    # "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v7    # "i":I
    .end local v8    # "solutionProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->customizations:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 64
    .local v6, "customizationProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;-><init>()V

    .line 65
    .local v5, "customization":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    .line 66
    iget-object v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->customizations:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
