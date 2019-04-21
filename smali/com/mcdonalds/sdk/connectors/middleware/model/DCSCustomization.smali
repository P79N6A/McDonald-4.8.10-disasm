.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;
.source "DCSCustomization.java"


# instance fields
.field public isLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsLight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;-><init>()V

    return-void
.end method

.method public static fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    .locals 2
    .param p0, "customerOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;-><init>()V

    .line 14
    .local v0, "dcsCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->populate(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V

    .line 15
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getIsLight()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    .line 16
    return-object v0
.end method

.method public static fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    .locals 2
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;-><init>()V

    .line 28
    .local v0, "dcsCustomization":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->populate(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 29
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    .line 30
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 43
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

    .line 44
    :cond_3
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;

    .line 48
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    iget-boolean v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->hashCode()I

    move-result v0

    .line 55
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 56
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    .line 22
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setIsLight(Ljava/lang/Boolean;)V

    .line 23
    return-object v0
.end method

.method public toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProductBase;->toOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 36
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSCustomization;->isLight:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 37
    return-object v0
.end method
