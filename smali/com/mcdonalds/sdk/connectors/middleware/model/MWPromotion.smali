.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
.super Ljava/lang/Object;
.source "MWPromotion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ActionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ActionName"
    .end annotation
.end field

.field public discountAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DiscountAmount"
    .end annotation
.end field

.field public displayImageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImageName"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public originalPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OriginalPrice"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public promotionID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionID"
    .end annotation
.end field

.field public staticData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->ActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmount()Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->discountAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDisplayImageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->displayImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->originalPrice:D

    return-wide v0
.end method

.method public getProductCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->productCode:I

    return v0
.end method

.method public getPromotionID()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->promotionID:I

    return v0
.end method

.method public getStaticData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->staticData:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->isValid:Z

    return v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->ActionName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setDiscountAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "discountAmount"    # Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->discountAmount:Ljava/lang/Double;

    .line 97
    return-void
.end method

.method public setDisplayImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayImageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->displayImageName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setIsValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->isValid:Z

    .line 107
    return-void
.end method

.method public setOriginalPrice(D)V
    .locals 1
    .param p1, "originalPrice"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->originalPrice:D

    .line 87
    return-void
.end method

.method public setProductCode(I)V
    .locals 0
    .param p1, "productCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->productCode:I

    .line 77
    return-void
.end method

.method public setPromotionID(I)V
    .locals 0
    .param p1, "promotionID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->promotionID:I

    .line 67
    return-void
.end method

.method public setStaticData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    .local p1, "staticData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->staticData:Ljava/util/List;

    .line 127
    return-void
.end method

.method public toPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Promotion;-><init>()V

    .line 36
    .local v0, "promotion":Lcom/mcdonalds/sdk/modules/models/Promotion;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->promotionID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setPromotionID(Ljava/lang/Integer;)V

    .line 37
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->productCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setProductCode(Ljava/lang/Integer;)V

    .line 38
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->originalPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setOriginalPrice(Ljava/lang/Double;)V

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->discountAmount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setDiscountAmount(Ljava/lang/Double;)V

    .line 40
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->isValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setIsValid(Ljava/lang/Boolean;)V

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->displayImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setDisplayImageName(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->staticData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setStaticData(Ljava/util/List;)V

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->ActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;->setActionName(Ljava/lang/String;)V

    .line 46
    return-object v0
.end method
