.class public Lcom/mcdonalds/app/account/ModifyAddressesFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ModifyAddressesFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private emptyPrompt:Z

.field private mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

.field mAddressList:Landroid/support/v7/widget/RecyclerView;

.field private mConfigAddressTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

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

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mFabClickListener:Landroid/view/View$OnClickListener;

.field private mFullAddress:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private final mOnNoAddressDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field private mUpdateDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->emptyPrompt:Z

    .line 196
    new-instance v0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$1;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mFabClickListener:Landroid/view/View$OnClickListener;

    .line 470
    new-instance v0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$9;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mOnNoAddressDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->addNewAddress()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->removeDefaultAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$300"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->refreshAddresses()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mFullAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/AddressType;)Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/AddressType;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->emptyPrompt:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->emptyPrompt:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mOnNoAddressDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyAddressesFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->manageEditOption()V

    return-void
.end method

.method private addNewAddress()V
    .locals 5

    .prologue
    const-string v3, "addNewAddress"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getEditFragmentName()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "fragmentName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getAvailableAddressTypes()Ljava/util/List;

    move-result-object v0

    .line 483
    .local v0, "availableTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressType;>;"
    new-instance v1, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    invoke-direct {v1}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;-><init>()V

    .line 484
    .local v1, "data":Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->setAvailableTypes(Ljava/util/List;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .line 487
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Add new address"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, v2, v1}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->startEditAddressActivity(Ljava/lang/String;Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;)V

    .line 490
    return-void
.end method

.method private getAvailableAddressTypes()Ljava/util/List;
    .locals 8
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
    const-string v3, "getAvailableAddressTypes"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 514
    .local v1, "availableTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressType;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mConfigAddressTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 515
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 516
    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mConfigAddressTypes:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "a":I
    :cond_1
    sget-object v3, Lcom/mcdonalds/sdk/modules/models/AddressType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 526
    .local v2, "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 529
    .end local v2    # "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_3
    return-object v1
.end method

.method private getEditFragmentName()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "getEditFragmentName"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    sget-object v1, Lcom/mcdonalds/app/account/EditAddressFragment;->NAME:Ljava/lang/String;

    .line 535
    .local v1, "fragmentName":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.delivery.externalAddressProvider"

    .line 536
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    .local v0, "externalAddressProvider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 538
    move-object v1, v0

    .line 540
    :cond_0
    return-object v1
.end method

.method private manageEditOption()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "manageEditOption"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/AddressesAdapter;->isEditing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f110549

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f11054c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private refreshAddresses()V
    .locals 3

    .prologue
    const-string v0, "refreshAddresses"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 412
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getAddressBook(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 468
    return-void
.end method

.method private removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 4
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "position"    # I

    .prologue
    const-string v0, "removeAddress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 293
    return-void
.end method

.method private removeDefaultAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 8
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "removeDefaultAddress"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    .local v1, "size":I
    if-lez v1, :cond_3

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    check-cast v2, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 241
    .restart local v2    # "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 243
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 244
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 245
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/account/AddressesAdapter;->setSelected(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 250
    :cond_0
    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090660

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 253
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/account/ModifyAddressesFragment$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$4;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 252
    invoke-virtual {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 278
    .end local v0    # "i":I
    .end local v2    # "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    :goto_1
    return-void

    .line 239
    .restart local v0    # "i":I
    .restart local v2    # "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "i":I
    .end local v2    # "tempAddr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 271
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0905d4

    const/4 v5, 0x0

    .line 272
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 275
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/mcdonalds/app/account/AddressesAdapter;->restoreAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    goto :goto_1
.end method

.method private save()V
    .locals 14

    .prologue
    const v13, 0x7f090660

    const/4 v12, 0x0

    const-string v10, "save"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/4 v7, 0x0

    .line 322
    .local v7, "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    if-eqz v10, :cond_1

    .line 323
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 324
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 325
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v11

    if-ne v10, v11, :cond_0

    .line 326
    move-object v7, v0

    .line 327
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 323
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v0, v12}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    goto :goto_1

    .line 333
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .end local v4    # "i":I
    .end local v8    # "size":I
    :cond_1
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v10}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyDataSetChanged()V

    .line 336
    if-eqz v7, :cond_5

    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, "updateDefaultFromMenu":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 340
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 341
    const-string v10, "ADDRESS_BUNDLE"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 342
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 343
    const-string v10, "update_default_from_menu"

    invoke-virtual {v2, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 346
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_2
    if-eqz v9, :cond_3

    .line 347
    move-object v6, v7

    .line 348
    .local v6, "retSelectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {p0, v13}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v11, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    iget-object v12, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 350
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;

    invoke-direct {v13, p0, v6}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 349
    invoke-virtual {v10, v11, v12, v13}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 407
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v6    # "retSelectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .end local v9    # "updateDefaultFromMenu":Z
    :goto_2
    return-void

    .line 371
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v9    # "updateDefaultFromMenu":Z
    :cond_3
    iget-boolean v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mUpdateDefault:Z

    if-eqz v10, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {p0, v13}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    iget-object v10, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v11, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    iget-object v12, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 374
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/app/account/ModifyAddressesFragment$7;

    invoke-direct {v13, p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$7;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    .line 373
    invoke-virtual {v10, v11, v12, v13}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_2

    .line 394
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v10, "ADDRESS_RETURN_KEY"

    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 397
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v5}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2

    .line 404
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "updateDefaultFromMenu":Z
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 405
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2
.end method

.method private showUndoMessage(ILcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v1, "showUndoMessage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "deletionConfirmationString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAddressList:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    const v2, 0x7f090808

    new-instance v3, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 221
    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 233
    return-void
.end method

.method private startEditAddressActivity(Ljava/lang/String;Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;)V
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "startEditAddressActivity"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    if-nez v3, :cond_0

    .line 570
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mConfigAddressTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 548
    .local v1, "hasAvailableAddressTypes":Z
    :goto_1
    invoke-virtual {p2}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 549
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 550
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/account/ModifyAddressesFragment$10;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$10;-><init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    .line 549
    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 559
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Maximum number of addresses"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "hasAvailableAddressTypes":Z
    :cond_1
    move v1, v2

    .line 546
    goto :goto_1

    .line 564
    .restart local v1    # "hasAvailableAddressTypes":Z
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "addressData"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 567
    const-class v2, Lcom/mcdonalds/app/account/EditAddressActivity;

    const/16 v3, 0x4795

    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const v0, 0x7f09085b

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->refreshAddresses()V

    .line 194
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 574
    const/16 v0, 0x4795

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->refreshAddresses()V

    .line 578
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->setHasOptionsMenu(Z)V

    .line 83
    iput-boolean v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mUpdateDefault:Z

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 86
    const-string v3, "ADDRESS_BUNDLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 88
    const-string v3, "update_default"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mUpdateDefault:Z

    .line 89
    const-string v3, "full_address"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mFullAddress:Ljava/lang/String;

    .line 92
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    iget-boolean v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mUpdateDefault:Z

    if-nez v3, :cond_1

    .line 94
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 95
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 99
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mUpdateDefault:Z

    if-nez v3, :cond_2

    .line 101
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 102
    .restart local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 103
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 106
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "delivery.addressTypes"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mConfigAddressTypes:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "onCreateOptionsMenu"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 112
    const v3, 0x7f120009

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    const v4, 0x7f110549

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    return-void

    :cond_0
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const v2, 0x7f0400d8

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f1102f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAddressList:Landroid/support/v7/widget/RecyclerView;

    .line 174
    new-instance v2, Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-direct {v2}, Lcom/mcdonalds/app/account/AddressesAdapter;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    .line 175
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/account/AddressesAdapter;->setClickListener(Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAddressList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 177
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAddressList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 184
    const v2, 0x7f1102f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "addAddressButton":Landroid/view/View;
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mFabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-object v1
.end method

.method public onItemClicked(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 6
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v3, "onItemClicked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getAvailableAddressTypes()Ljava/util/List;

    move-result-object v0

    .line 496
    .local v0, "availableTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressType;>;"
    new-instance v1, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    invoke-direct {v1}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;-><init>()V

    .line 497
    .local v1, "data":Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->setAvailableTypes(Ljava/util/List;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .line 498
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->setCustomerAddresses(Ljava/util/List;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .line 500
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getEditFragmentName()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "fragmentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/AddressesAdapter;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->setCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->startEditAddressActivity(Ljava/lang/String;Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;)V

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 508
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->save()V

    goto :goto_0
.end method

.method public onItemDismissed(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "onItemDismissed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/AddressesAdapter;->getItemCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/account/AddressesAdapter;->getAddressForPosition(I)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v0

    .line 208
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->showUndoMessage(ILcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 211
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :sswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->selectSingleAddress()V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->setEditing(Z)V

    .line 127
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f11054c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 133
    :sswitch_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mAdapter:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/account/AddressesAdapter;->setEditing(Z)V

    .line 134
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f110549

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f110549 -> :sswitch_1
        0x7f11054c -> :sswitch_2
    .end sparse-switch
.end method

.method public selectSingleAddress()V
    .locals 7

    .prologue
    const-string v4, "selectSingleAddress"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 297
    const/4 v3, 0x0

    .line 298
    .local v3, "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mCustomerAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 299
    .local v1, "c":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->mSelectedAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    if-ne v5, v6, :cond_0

    .line 300
    move-object v3, v1

    .line 305
    .end local v1    # "c":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "ADDRESS_RETURN_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 317
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :goto_0
    return-void

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 315
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
