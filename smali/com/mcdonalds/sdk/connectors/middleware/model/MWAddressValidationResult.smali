.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;
.super Ljava/lang/Object;
.source "MWAddressValidationResult.java"


# instance fields
.field public invalidAddressElements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InvalidAddressElements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;",
            ">;"
        }
    .end annotation
.end field

.field public isAddressValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsAddressValid"
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResultCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toValidateResult(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;)Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
    .locals 5
    .param p0, "result"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;

    .prologue
    .line 22
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;-><init>()V

    .line 24
    .local v1, "ret":Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;->resultCode:I

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->setResultCode(I)V

    .line 25
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;->isAddressValid:Z

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->setAddressValid(Z)V

    .line 27
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;->invalidAddressElements:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "invalidElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;->invalidAddressElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;

    .line 30
    .local v2, "rule":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->toValidationRule(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;)Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v2    # "rule":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->setInvalidAddressElements(Ljava/util/List;)V

    .line 35
    .end local v0    # "invalidElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    :cond_1
    return-object v1
.end method
