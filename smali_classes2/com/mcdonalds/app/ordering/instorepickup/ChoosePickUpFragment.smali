.class public Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChoosePickUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;


# instance fields
.field private cashNotSupported:Landroid/widget/TextView;

.field private currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private driveThruButton:Landroid/view/View;

.field private insideButton:Landroid/view/View;

.field private isUsingCash:Z

.field private map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

.field private pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private setDriveThruButton()V
    .locals 3

    .prologue
    const-string v1, "setDriveThruButton"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;-><init>(Ljava/util/List;)V

    .line 171
    .local v0, "capabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->isDriveThruAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->driveThruButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->driveThruButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->driveThruButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStore()V
    .locals 4

    .prologue
    const-string v2, "updateStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 158
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "distance":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v0    # "distance":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 159
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0906e5

    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_store_detail"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    const-string v1, "extra_store_section"

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->driveThruButton:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 110
    const-class v1, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationActivity;

    const-string v2, "drive_thru_confirmation"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->insideButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0906e7

    .line 114
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0906e9

    new-instance v3, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment$1;-><init>(Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;)V

    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 124
    :cond_3
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->isUsingCash:Z

    if-eqz v1, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0906e4

    .line 126
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 131
    :cond_4
    const-class v1, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineActivity;

    const-string v2, "order_check_in"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 58
    const v2, 0x7f0400a7

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v5, 0x7f11028c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getExtraView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v2, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 67
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v5, 0x7f11028d

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 68
    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    const-string v7, "MAP"

    invoke-virtual {v2, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    const v2, 0x7f11028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->driveThruButton:Landroid/view/View;

    .line 72
    const v2, 0x7f11028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->insideButton:Landroid/view/View;

    .line 73
    const v2, 0x7f110290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->insideButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 78
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->updateStore()V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->setDriveThruButton()V

    .line 81
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 82
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->isUsingCash:Z

    .line 83
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->isUsingCash:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    const v3, 0x7f0906e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    return-object v1

    :cond_0
    move v2, v3

    .line 82
    goto :goto_0

    :cond_1
    move v3, v4

    .line 83
    goto :goto_1
.end method

.method public onMapAvailable()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v0, "onMapAvailable"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 139
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 143
    return-void
.end method

.method public onMapError(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const-string v0, "onMapError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    const v1, 0x7f0906ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->isUsingCash:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->cashNotSupported:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
