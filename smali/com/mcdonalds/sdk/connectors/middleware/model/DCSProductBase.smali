.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;
.super Ljava/lang/Object;
.source "DCSProductBase.java"


# instance fields
.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 42
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

    :cond_3
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;

    .line 46
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 47
    :cond_4
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    .line 54
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    add-int v0, v1, v2

    .line 55
    return v0
.end method

.method public populate(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V
    .locals 1
    .param p1, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    .line 17
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    .line 18
    return-void
.end method

.method public populate(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    .line 22
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    .line 23
    return-void
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;-><init>()V

    .line 27
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setProductCode(Ljava/lang/Integer;)V

    .line 28
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 29
    return-object v0
.end method

.method public toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>()V

    .line 34
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->productCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProductCode(Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->quantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 36
    return-object v0
.end method
