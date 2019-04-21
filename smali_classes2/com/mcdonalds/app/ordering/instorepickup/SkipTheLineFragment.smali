.class public Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "SkipTheLineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;


# instance fields
.field private currentLocation:Landroid/location/Location;

.field private currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private locationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

.field private map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

.field private pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

.field private skipTheLineButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 191
    new-instance v0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$2;-><init>(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->locationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Landroid/location/Location;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.SkipTheLineFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.SkipTheLineFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.SkipTheLineFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->updateStore()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.SkipTheLineFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.SkipTheLineFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method private displayLocationServicesError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "displayLocationServicesError"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0906e7

    .line 179
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0906e5

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0906e9

    new-instance v2, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment$1;-><init>(Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;)V

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 189
    return-void
.end method

.method private isUserCloseEnough()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "isUserCloseEnough"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->metersFromLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 170
    .local v0, "distance":F
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "checkinDistance"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v2

    .line 171
    .local v2, "doubleMinThreshold":D
    double-to-float v1, v2

    .line 172
    .local v1, "minThreshold":F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_0

    const/4 v4, 0x1

    .line 174
    .end local v0    # "distance":F
    .end local v1    # "minThreshold":F
    .end local v2    # "doubleMinThreshold":D
    :cond_0
    return v4
.end method

.method private skipTheLine()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "skipTheLine"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->displayLocationServicesError()V

    .line 132
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->isUserCloseEnough()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->FrontCounter:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v2, v3

    .line 119
    .local v0, "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    .line 120
    .local v1, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 123
    :cond_1
    const-class v2, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutActivity;

    const-string v3, "eat_in_take_out"

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    .end local v1    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0906e3

    .line 126
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0906e1

    .line 127
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0906e2

    .line 128
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateStore()V
    .locals 4

    .prologue
    const-string v2, "updateStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 156
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "distance":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v0    # "distance":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 157
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

    .line 149
    const v0, 0x7f0907af

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getString(I)Ljava/lang/String;

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

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_store_detail"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    const-string v1, "extra_store_section"

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->skipTheLineButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->skipTheLine()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 61
    const v1, 0x7f040110

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v2, 0x7f11028c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 64
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getExtraView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f11028d

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 71
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const-string v4, "MAP"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 74
    const v1, 0x7f11029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->skipTheLineButton:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->skipTheLineButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 79
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    .line 81
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->updateStore()V

    .line 83
    return-object v0
.end method

.method public onMapAvailable()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v0, "onMapAvailable"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 137
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->currentLocation:Landroid/location/Location;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)V

    .line 141
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

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->disableUpdates()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 90
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/SkipTheLineFragment;->locationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V

    .line 91
    return-void
.end method
