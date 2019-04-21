.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;
.super Ljava/lang/Object;
.source "MWIngredient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chargeTreshold:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChargeTreshold"
    .end annotation
.end field

.field public defaultQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultQuantity"
    .end annotation
.end field

.field public defaultSolution:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultSolution"
    .end annotation
.end field

.field public isCostInclusive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostInclusive"
    .end annotation
.end field

.field public isCustomerFriendly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCustomerFriendly"
    .end annotation
.end field

.field public maxQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxQuantity"
    .end annotation
.end field

.field public minQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinQuantity"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public referencePriceProductCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReferencePriceProductCode"
    .end annotation
.end field

.field public refundTreshold:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RefundTreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    .line 38
    .local v0, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->isCustomerFriendly:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setIsCustomerFriendly(Z)V

    .line 39
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->minQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setMinQuantity(I)V

    .line 40
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->defaultQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setDefaultQuantity(I)V

    .line 41
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->maxQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setMaxQuantity(I)V

    .line 42
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->refundTreshold:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setRefundThreshold(I)V

    .line 43
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->chargeTreshold:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setChargeThreshold(I)V

    .line 44
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->isCostInclusive:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setCostInclusive(Z)V

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->defaultSolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setDefaultSolution(Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->referencePriceProductCode:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setReferencePriceProductCode(I)V

    .line 48
    return-object v0
.end method
