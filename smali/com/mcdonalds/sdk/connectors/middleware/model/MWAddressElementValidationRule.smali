.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;
.super Ljava/lang/Object;
.source "MWAddressElementValidationRule.java"


# instance fields
.field public addressElementTypeCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementTypeCode"
    .end annotation
.end field

.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayOrder"
    .end annotation
.end field

.field public validationLength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationLength"
    .end annotation
.end field

.field public validationRegex:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationRegex"
    .end annotation
.end field

.field public validationType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationType"
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

.method public static toValidationRule(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;)Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    .locals 3
    .param p0, "rule"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;

    .prologue
    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;-><init>()V

    .line 25
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->addressElementTypeCode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 26
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->displayOrder:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->setDisplayOrder(I)V

    .line 27
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->validationType:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->setValidationType(I)V

    .line 28
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->validationLength:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->setValidationLength(I)V

    .line 29
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->validationRegex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->setValidationRegex(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
