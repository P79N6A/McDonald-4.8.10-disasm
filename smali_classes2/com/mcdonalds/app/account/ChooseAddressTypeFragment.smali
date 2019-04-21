.class public Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChooseAddressTypeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mAddressAdapter:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

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

.field private mCurrentTypeIndex:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mCurrentTypeIndex:I

    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const v0, 0x7f090799

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CURRENT_ADDRESS_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mCurrentTypeIndex:I

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "availableTypes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAvailableTypes:Ljava/util/List;

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mCurrentTypeIndex:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAvailableTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const v1, 0x7f0400a5

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAvailableTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;-><init>(Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;)V

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAddressAdapter:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    .line 72
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAddressAdapter:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAvailableTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->addAll(Ljava/util/Collection;)V

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAddressAdapter:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mCurrentTypeIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 78
    :cond_0
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "onItemClick"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->mAddressAdapter:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    invoke-virtual {v2, p3}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 86
    .local v1, "type":Lcom/mcdonalds/sdk/modules/models/AddressType;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "selected_address_type"

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 91
    return-void
.end method
