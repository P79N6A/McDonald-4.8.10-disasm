.class public Lcom/mcdonalds/app/ordering/LatestOrderFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LatestOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;


# instance fields
.field private currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

.field private pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private updateStore()V
    .locals 4

    .prologue
    const-string v2, "updateStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 123
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "distance":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0    # "distance":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 124
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

    .line 104
    const v0, 0x7f0905f0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_store_detail"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    const-string v1, "extra_store_section"

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "EXTRA_ORDER_NUMBER"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "orderNumber":Ljava/lang/String;
    const-string v5, "EXTRA_IS_DRIVE_THRU"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    const v5, 0x7f0400c3

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    new-instance v5, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v6, 0x7f11028c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 59
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getExtraView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v5, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 65
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f11028d

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 66
    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    const-string v8, "MAP"

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->updateStore()V

    .line 75
    :goto_0
    if-eqz v2, :cond_0

    .line 76
    const v5, 0x7f1102ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "orderNumberTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .end local v3    # "orderNumberTextView":Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f1100d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, "doneButton":Landroid/widget/Button;
    new-instance v5, Lcom/mcdonalds/app/ordering/LatestOrderFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment$1;-><init>(Lcom/mcdonalds/app/ordering/LatestOrderFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object v4

    .line 72
    .end local v0    # "doneButton":Landroid/widget/Button;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    const v5, 0x7f0400c2

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public onMapAvailable()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v0, "onMapAvailable"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 114
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

    .line 117
    return-void
.end method
