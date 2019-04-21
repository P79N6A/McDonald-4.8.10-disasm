.class public Lcom/mcdonalds/app/account/AddressesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddressesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;,
        Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

.field private mEditing:Z

.field private mSelected:I

.field private mSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mSelected:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/AddressesAdapter;)Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/AddressesAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.AddressesAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mClickListener:Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/AddressesAdapter;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/AddressesAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.AddressesAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/AddressesAdapter;->onItemClicked(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    return-void
.end method

.method private getAddressString(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "getAddressString"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onItemClicked(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "onItemClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mClickListener:Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mClickListener:Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;->onItemClicked(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddressForPosition(I)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getAddressForPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Z
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "hasAddress"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditing()Z
    .locals 2

    .prologue
    const-string v0, "isEditing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mEditing:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    check-cast p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/account/AddressesAdapter;->onBindViewHolder(Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "onBindViewHolder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 79
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iget-object v4, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressLabel(Lcom/mcdonalds/sdk/modules/models/AddressType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "label":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.shouldHideAddressTypes"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->getAddressString(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "addressString":Ljava/lang/String;
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 94
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AddressesAdapter;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->deleteBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 96
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v8}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 97
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 98
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->deleteBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/mcdonalds/app/account/AddressesAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/mcdonalds/app/account/AddressesAdapter$1;-><init>(Lcom/mcdonalds/app/account/AddressesAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :goto_1
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    new-instance v4, Lcom/mcdonalds/app/account/AddressesAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/account/AddressesAdapter$2;-><init>(Lcom/mcdonalds/app/account/AddressesAdapter;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    const-class v4, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    invoke-static {v3, v4, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 132
    return-void

    .line 86
    .end local v1    # "addressString":Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 107
    .restart local v1    # "addressString":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 108
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->deleteBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 109
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-ne v0, v3, :cond_2

    .line 112
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v7}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v7}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 120
    :cond_4
    iget-object v3, p1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/app/widget/InertCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/account/AddressesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d9

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/account/AddressesAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 4
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v1, "removeAddress"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyItemRemoved(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public restoreAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 5
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "position"    # I

    .prologue
    const-string v1, "restoreAddress"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    .local v0, "size":I
    if-ge p2, v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyItemInserted(I)V

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    move p2, v0

    goto :goto_0
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const-string v0, "setAddresses"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public setClickListener(Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;)V
    .locals 3
    .param p1, "clickListener"    # Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    .prologue
    const-string v0, "setClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mClickListener:Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    .line 59
    return-void
.end method

.method public setEditing(Z)V
    .locals 4
    .param p1, "editing"    # Z

    .prologue
    const-string v0, "setEditing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mEditing:Z

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public setSelected(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "setSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mSelected:I

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AddressesAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public setSelectedAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 3
    .param p1, "selectedAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "setSelectedAddress"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter;->mSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 42
    return-void
.end method
