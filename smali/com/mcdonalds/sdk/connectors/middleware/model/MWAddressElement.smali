.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;
.super Ljava/lang/Object;
.source "MWAddressElement.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;


# instance fields
.field public addressElementType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressElementTypeCode"
    .end annotation
.end field

.field public value:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;",
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

.method public static createListFromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Ljava/util/List;
    .locals 5
    .param p0, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 56
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v2, "mwAddressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->fromAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v2
.end method

.method public static fromAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;
    .locals 3
    .param p0, "addressElement"    # Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .prologue
    .line 42
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;-><init>()V

    .line 44
    .local v0, "mwAddressElement":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->addressElementType:I

    .line 47
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->createListFromAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->value:Ljava/util/List;

    .line 49
    return-object v0
.end method

.method public static toAddressElement(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;)Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .locals 3
    .param p0, "mwAddressElement"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;

    .prologue
    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;-><init>()V

    .line 24
    .local v0, "addressElement":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->addressElementType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 25
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->toAddressAliasValueList(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setValue(Ljava/util/List;)V

    .line 27
    return-object v0
.end method

.method public static toAddressElementList(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)Ljava/util/List;
    .locals 4
    .param p0, "mwAddressBookEntry"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->address:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 33
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v0, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 35
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->address:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->toAddressElement(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getQueryProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "AddressElementTypeCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->addressElementType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v0, "Value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->value:Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryPropertyNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AddressElementTypeCode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Value"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
