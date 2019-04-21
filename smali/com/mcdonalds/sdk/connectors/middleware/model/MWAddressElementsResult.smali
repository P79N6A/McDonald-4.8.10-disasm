.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;
.super Ljava/lang/Object;
.source "MWAddressElementsResult.java"


# instance fields
.field public addressElementDependencies:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementDependencies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;",
            ">;"
        }
    .end annotation
.end field

.field public addressElementTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public addressElementValidationRules:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementValidationRules"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAddressElementsResult(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;)Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;
    .locals 17
    .param p0, "result"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;

    .prologue
    .line 26
    new-instance v5, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;-><init>()V

    .line 28
    .local v5, "ret":Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;->addressElementDependencies:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;

    .line 30
    .local v2, "dependency":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->toAddressElementDependency(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;)Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v2    # "dependency":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;
    :cond_0
    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->setAddressElementDependencies(Ljava/util/List;)V

    .line 34
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v7, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .local v8, "rulesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;->addressElementValidationRules:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;

    .line 38
    .local v6, "rule":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;
    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->toValidationRule(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;)Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    move-result-object v12

    .line 39
    .local v12, "validationRule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget v14, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;->addressElementTypeCode:I

    invoke-virtual {v8, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 42
    .end local v6    # "rule":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementValidationRule;
    .end local v12    # "validationRule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    :cond_1
    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->setAddressElementValidationRules(Ljava/util/List;)V

    .line 46
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v11, "types":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementsResult;->addressElementTypes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 48
    .local v3, "elementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 49
    .local v10, "typeCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v9, v15, v16

    .line 50
    .local v9, "type":Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 51
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    .line 52
    .local v6, "rule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->getDisplayOrder()I

    move-result v15

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 53
    .local v4, "insertIndex":I
    invoke-interface {v11, v4, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 57
    .end local v3    # "elementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "insertIndex":I
    .end local v6    # "rule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    .end local v9    # "type":Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .end local v10    # "typeCode":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5, v11}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->setAddressElementTypes(Ljava/util/List;)V

    .line 59
    return-object v5
.end method
