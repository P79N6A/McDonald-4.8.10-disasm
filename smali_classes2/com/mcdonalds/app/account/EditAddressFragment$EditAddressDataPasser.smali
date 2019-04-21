.class public Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/EditAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditAddressDataPasser"
.end annotation


# instance fields
.field private mAvailableTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressType;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mCustomerAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressType;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getAvailableTypes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mAvailableTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 2

    .prologue
    const-string v0, "getCustomerAddress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method public getCustomerAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getCustomerAddresses"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mCustomerAddresses:Ljava/util/List;

    return-object v0
.end method

.method public setAvailableTypes(Ljava/util/List;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressType;",
            ">;)",
            "Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;"
        }
    .end annotation

    .prologue
    .local p1, "availableTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressType;>;"
    const-string v0, "setAvailableTypes"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mAvailableTypes:Ljava/util/List;

    .line 428
    return-object p0
.end method

.method public setCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    .locals 3
    .param p1, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "setCustomerAddress"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 418
    return-object p0
.end method

.method public setCustomerAddresses(Ljava/util/List;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;"
        }
    .end annotation

    .prologue
    .local p1, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const-string v0, "setCustomerAddresses"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->mCustomerAddresses:Ljava/util/List;

    .line 438
    return-object p0
.end method
