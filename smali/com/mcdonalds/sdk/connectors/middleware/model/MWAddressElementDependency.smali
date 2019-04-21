.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;
.super Ljava/lang/Object;
.source "MWAddressElementDependency.java"


# instance fields
.field public addressElementCanFilteredBy:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementCanFilteredBy"
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

.field public addressElementToBeCleared:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementToBeCleared"
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

.field public addressElementTypeCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementTypeCode"
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

.method public static toAddressElementDependency(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;)Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;
    .locals 8
    .param p0, "dependency"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;

    .prologue
    .line 22
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;-><init>()V

    .line 24
    .local v4, "ret":Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v5

    iget v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->addressElementTypeCode:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->addressElementCanFilteredBy:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 28
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->addressElementCanFilteredBy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 29
    .local v2, "filterCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v2    # "filterCode":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->setAddressElementCanFilteredBy(Ljava/util/List;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "cleared":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->addressElementToBeCleared:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 36
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElementDependency;->addressElementToBeCleared:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    .local v0, "clearCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    .end local v0    # "clearCode":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->setAddressToBeCleared(Ljava/util/List;)V

    .line 42
    return-object v4
.end method
