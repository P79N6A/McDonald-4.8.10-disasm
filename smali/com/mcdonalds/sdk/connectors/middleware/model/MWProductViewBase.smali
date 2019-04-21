.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
.super Ljava/lang/Object;
.source "MWProductViewBase.java"


# instance fields
.field public changeStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChangeStatus"
    .end annotation
.end field

.field public isLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsLight"
    .end annotation
.end field

.field public isPromotional:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPromotional"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public promoQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromoQuantity"
    .end annotation
.end field

.field public promotion:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Promotion"
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field public totalEnergy:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalEnergy"
    .end annotation
.end field

.field public totalValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalValue"
    .end annotation
.end field

.field public unitPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnitPrice"
    .end annotation
.end field

.field public validationErrorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationErrorCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->changeStatus:I

    return v0
.end method

.method public getProductCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->productCode:I

    return v0
.end method

.method public getPromoQuantity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->promoQuantity:I

    return v0
.end method

.method public getPromotion()Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->promotion:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->quantity:I

    return v0
.end method

.method public getTotalEnergy()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->totalEnergy:D

    return-wide v0
.end method

.method public getTotalValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->totalValue:D

    return-wide v0
.end method

.method public getUnitPrice()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->unitPrice:D

    return-wide v0
.end method

.method public getValidationErrorCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->validationErrorCode:I

    return v0
.end method

.method public isLight()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->isLight:Z

    return v0
.end method

.method public isPromotional()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->isPromotional:Z

    return v0
.end method

.method public populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 35
    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 40
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->productCode:I

    .line 38
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->quantity:I

    goto :goto_0
.end method

.method public setChangeStatus(I)V
    .locals 0
    .param p1, "changeStatus"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->changeStatus:I

    .line 140
    return-void
.end method

.method public setIsLight(Z)V
    .locals 0
    .param p1, "isLight"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->isLight:Z

    .line 80
    return-void
.end method

.method public setIsPromotional(Z)V
    .locals 0
    .param p1, "isPromotional"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->isPromotional:Z

    .line 150
    return-void
.end method

.method public setProductCode(I)V
    .locals 0
    .param p1, "productCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->productCode:I

    .line 60
    return-void
.end method

.method public setPromoQuantity(I)V
    .locals 0
    .param p1, "promoQuantity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->promoQuantity:I

    .line 130
    return-void
.end method

.method public setPromotion(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;)V
    .locals 0
    .param p1, "promotion"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->promotion:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;

    .line 160
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->quantity:I

    .line 70
    return-void
.end method

.method public setTotalEnergy(D)V
    .locals 1
    .param p1, "totalEnergy"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->totalEnergy:D

    .line 110
    return-void
.end method

.method public setTotalValue(D)V
    .locals 1
    .param p1, "totalValue"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->totalValue:D

    .line 100
    return-void
.end method

.method public setUnitPrice(D)V
    .locals 1
    .param p1, "unitPrice"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->unitPrice:D

    .line 90
    return-void
.end method

.method public setValidationErrorCode(I)V
    .locals 0
    .param p1, "validationErrorCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->validationErrorCode:I

    .line 120
    return-void
.end method

.method public toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;-><init>()V

    .line 45
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 46
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->promoQuantity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setPromoQuantity(Ljava/lang/Integer;)V

    .line 47
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;->productCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->setProductCode(Ljava/lang/Integer;)V

    .line 49
    return-object v0
.end method
