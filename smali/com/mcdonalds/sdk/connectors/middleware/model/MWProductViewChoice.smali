.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
.source "MWProductViewChoice.java"


# instance fields
.field public choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChoiceSolution"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;-><init>()V

    return-void
.end method

.method private static getChoiceWithinChoice(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .locals 2
    .param p0, "choice"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    .line 82
    .local v0, "zeroedOrderProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->setProductCode(I)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->setQuantity(I)V

    .line 85
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->setChoices(Ljava/util/List;)V

    .line 87
    return-object v0
.end method


# virtual methods
.method public getChoiceSolution()Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    return-object v0
.end method

.method public populateWithChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    .locals 5
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/Choice;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 35
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 36
    .local v2, "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    instance-of v4, v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 37
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 38
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Choice;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;-><init>()V

    .line 39
    .local v1, "mwProductViewChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->populateWithChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;

    .line 40
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->getChoiceWithinChoice(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 47
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "mwProductViewChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    :goto_0
    return-object p0

    .line 42
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    .line 43
    .local v3, "solutionView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 44
    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    goto :goto_0
.end method

.method public populateWithChoiceAndSolution(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;
    .locals 1
    .param p1, "choiceProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceSolutionProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 54
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    .line 55
    .local v0, "solutionView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 56
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 58
    return-object p0
.end method

.method public setChoiceSolution(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)V
    .locals 0
    .param p1, "choiceSolution"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 69
    return-void
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 22
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 23
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v1

    .line 25
    .local v1, "solution":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setChoiceSolution(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V

    .line 29
    .end local v1    # "solution":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_0
    return-object v0
.end method
