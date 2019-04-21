.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;
.source "DCSChoice.java"


# instance fields
.field public choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChoiceSolution"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;-><init>()V

    return-void
.end method

.method public static fromChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    .locals 3
    .param p0, "choice"    # Lcom/mcdonalds/sdk/modules/models/Choice;

    .prologue
    .line 44
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;-><init>()V

    .line 45
    .local v1, "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->populate(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 48
    .local v0, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 51
    :cond_0
    return-object v1
.end method

.method public static fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    .locals 3
    .param p0, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 14
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;-><init>()V

    .line 15
    .local v1, "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->populate(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V

    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 18
    .local v0, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 21
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 58
    :cond_3
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;

    .line 62
    .local v0, "dcsChoice":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->hashCode()I

    move-result v0

    .line 69
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 70
    return v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toChoice()Lcom/mcdonalds/sdk/modules/models/Choice;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;-><init>()V

    .line 35
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->productCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setProductCode(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->quantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setQuantity(I)V

    .line 37
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 40
    :cond_0
    return-object v0
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 27
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSChoice;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setChoiceSolution(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V

    .line 30
    :cond_0
    return-object v0
.end method
