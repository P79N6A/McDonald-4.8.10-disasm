.class public Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;
.super Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
.source "DriveThruConfirmationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;


# instance fields
.field private currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

.field private pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.instorepickup.DriveThruConfirmationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->onConfirmClick()V

    return-void
.end method

.method private onConfirmClick()V
    .locals 3

    .prologue
    const-string v1, "onConfirmClick"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0901f7

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 124
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    .line 125
    .local v0, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    if-eqz v0, :cond_0

    .line 126
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setLatestOrderIsDriveThru(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->preparePaymentAndCheckin()V

    .line 130
    return-void
.end method

.method private updateStore()V
    .locals 4

    .prologue
    const-string v2, "updateStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 154
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "distance":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "distance":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 155
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    .restart local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected continueToOrderSummary()V
    .locals 8

    .prologue
    const-string v4, "continueToOrderSummary"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    .line 169
    .local v3, "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "currencyCode":Ljava/lang/String;
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "payment_confirm"

    .line 172
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "order_id"

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 173
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "fop_type"

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 174
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "curr_cd"

    .line 175
    invoke-virtual {v4, v5, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "order_amt"

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 176
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "local_timestamp"

    .line 177
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v4

    .line 171
    invoke-static {v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 180
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "latestOrderNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->deleteCurrentOrder()V

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v4, "EXTRA_ORDER_NUMBER"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "EXTRA_IS_DRIVE_THRU"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-class v4, Lcom/mcdonalds/app/ordering/LatestOrderActivity;

    const-string v5, "latest_order"

    invoke-virtual {p0, v4, v5, v0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const v0, 0x7f090a71

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "onClick"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 90
    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_store_detail"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string v1, "extra_store_section"

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 97
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "CHECKIN_TIMER"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinAllowOrdering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment$1;-><init>(Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;)V

    invoke-static {v1, v5, v3, v2}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v3, v3}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->onConfirmClick()V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11029e -> :sswitch_1
        0x7f1104fb -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 61
    const v2, 0x7f0400b2

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mShouldLaunchQRCodeScanner:Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mMainViewVisible:Z

    .line 66
    new-instance v2, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v3, 0x7f11028c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 67
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getExtraView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->pickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getInfoIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v2, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 73
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f11028d

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 74
    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    const-string v5, "MAP"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    const v2, 0x7f11029e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "confirmButton":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 81
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->updateStore()V

    .line 83
    return-object v1
.end method

.method public onMapAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "onMapAvailable"

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    .line 140
    .local v0, "map":Lcom/mcdonalds/app/storelocator/maps/McdMap;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->mapManager:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/DriveThruConfirmationFragment;->currentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v1, v0, v2}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 144
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

    .line 148
    return-void
.end method
