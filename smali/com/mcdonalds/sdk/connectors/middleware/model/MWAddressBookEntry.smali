.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
.super Ljava/lang/Object;
.source "MWAddressBookEntry.java"


# instance fields
.field public address:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Address"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;",
            ">;"
        }
    .end annotation
.end field

.field public addressTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressTypeID"
    .end annotation
.end field

.field public allowPromotionsToAddress:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AllowPromotionsToAddress"
    .end annotation
.end field

.field public customerAddressPreference:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerAddressPreference"
    .end annotation
.end field

.field public isDefaultAddress:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDefaultAddress"
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

.method public static createListFromCustomerAddressList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 64
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "mwAddressBookEntries":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 66
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public static fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
    .locals 3
    .param p0, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    .line 50
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;-><init>()V

    .line 52
    .local v0, "entry":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getCustomerAddressPreference()I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->customerAddressPreference:I

    .line 53
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->addressTypeID:I

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->isDefaultAddress:Z

    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isAllowPromotionsToAddress()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->allowPromotionsToAddress:Z

    .line 56
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->createListFromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->address:Ljava/util/List;

    .line 58
    return-object v0
.end method

.method public static toCustomerAddress(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 3
    .param p0, "addressBookEntry"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    .prologue
    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;-><init>()V

    .line 29
    .local v0, "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->customerAddressPreference:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setCustomerAddressPreference(I)V

    .line 30
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->addressTypeID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V

    .line 31
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->isDefaultAddress:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 32
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->toAddressElementList(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressElements(Ljava/util/List;)V

    .line 33
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->allowPromotionsToAddress:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAllowPromotionsToAddress(Z)V

    .line 35
    return-object v0
.end method

.method public static toCustomerAddressList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "mwAddressBookEntries":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 41
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v0, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;->toCustomerAddress(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressBookEntry;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method
