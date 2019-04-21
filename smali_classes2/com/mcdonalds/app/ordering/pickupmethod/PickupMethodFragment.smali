.class public Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "PickupMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field hasCarbsideSCANNER:Z

.field hasDriveThruSCANNER:Z

.field hasKioskSCANNER:Z

.field hasLobbySCANNER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasKioskSCANNER:Z

    .line 44
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasLobbySCANNER:Z

    .line 45
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasDriveThruSCANNER:Z

    .line 46
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasCarbsideSCANNER:Z

    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const v0, 0x7f090870

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasDriveThruSCANNER:Z

    if-eqz v0, :cond_0

    .line 143
    const-class v0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodActivity;

    sget-object v1, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    const-class v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasCarbsideSCANNER:Z

    if-eqz v0, :cond_1

    .line 150
    const-class v0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodActivity;

    sget-object v1, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    const-class v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 156
    :sswitch_2
    const-string v0, "/checkout"

    const-string v1, "Checkin at Lobby"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-class v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 160
    :sswitch_3
    const-class v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 164
    :sswitch_4
    const-string v0, "/checkout"

    const-string v1, "Checkin at Kiosk"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-class v0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodActivity;

    sget-object v1, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11028e -> :sswitch_0
        0x7f110363 -> :sswitch_2
        0x7f110364 -> :sswitch_4
        0x7f110365 -> :sswitch_1
        0x7f110367 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const v0, 0x7f12000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const/4 v10, 0x0

    .line 56
    .local v10, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.checkin.checkinSeclectionDisplayNameMappings"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 57
    .local v4, "displayPODsNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    if-eqz v4, :cond_6

    .line 58
    const v14, 0x7f0400f8

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 63
    :goto_0
    const v14, 0x7f11017b

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 64
    .local v13, "storeName":Landroid/widget/TextView;
    const v14, 0x7f110363

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 65
    .local v8, "lobbyButton":Landroid/view/View;
    const v14, 0x7f110364

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 66
    .local v7, "kioskButton":Landroid/view/View;
    const v14, 0x7f11028e

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 67
    .local v5, "driveThruButton":Landroid/view/View;
    const v14, 0x7f110365

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "curbsideButton":Landroid/view/View;
    const v14, 0x7f110367

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, "imageButtonWithInstructions":Landroid/view/View;
    const v14, 0x7f110366

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 71
    .local v9, "pickupOrderTextView":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 72
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    if-eqz v7, :cond_1

    .line 75
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_1
    if-eqz v5, :cond_2

    .line 78
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_2
    if-eqz v3, :cond_3

    .line 81
    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_3
    const-string v14, "customer"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v11

    .line 85
    .local v11, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 86
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v13}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_4
    new-instance v12, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;-><init>(Ljava/util/List;)V

    .line 91
    .local v12, "storeCapabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->filterAvailableCapabilities()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;

    .line 95
    .local v2, "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->getCapabilityId()I

    move-result v15

    sget-object v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->FrontCounter:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 96
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 99
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasLobbySCANNER:Z

    goto :goto_1

    .line 60
    .end local v1    # "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    .end local v2    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    .end local v3    # "curbsideButton":Landroid/view/View;
    .end local v5    # "driveThruButton":Landroid/view/View;
    .end local v6    # "imageButtonWithInstructions":Landroid/view/View;
    .end local v7    # "kioskButton":Landroid/view/View;
    .end local v8    # "lobbyButton":Landroid/view/View;
    .end local v9    # "pickupOrderTextView":Landroid/widget/TextView;
    .end local v11    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v12    # "storeCapabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    .end local v13    # "storeName":Landroid/widget/TextView;
    :cond_6
    const v14, 0x7f0400f7

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0

    .line 101
    .restart local v1    # "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    .restart local v2    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    .restart local v3    # "curbsideButton":Landroid/view/View;
    .restart local v5    # "driveThruButton":Landroid/view/View;
    .restart local v6    # "imageButtonWithInstructions":Landroid/view/View;
    .restart local v7    # "kioskButton":Landroid/view/View;
    .restart local v8    # "lobbyButton":Landroid/view/View;
    .restart local v9    # "pickupOrderTextView":Landroid/widget/TextView;
    .restart local v11    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v12    # "storeCapabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    .restart local v13    # "storeName":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->getCapabilityId()I

    move-result v15

    sget-object v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 102
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 105
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasDriveThruSCANNER:Z

    goto :goto_1

    .line 107
    :cond_8
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->getCapabilityId()I

    move-result v15

    sget-object v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->ColdKiosk:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 108
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 111
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasCarbsideSCANNER:Z

    goto/16 :goto_1

    .line 113
    :cond_9
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->getCapabilityId()I

    move-result v15

    sget-object v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->CSO:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 114
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 117
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->hasKioskSCANNER:Z

    goto/16 :goto_1

    .line 124
    .end local v2    # "capability":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    :cond_a
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 125
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 127
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 128
    if-eqz v6, :cond_b

    .line 129
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->setHasOptionsMenu(Z)V

    .line 135
    return-object v10
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v2, "onOptionsItemSelected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f110550

    if-ne v2, v3, :cond_0

    .line 181
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 182
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_1

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_store_section"

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string v2, "extra_store_detail"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-class v2, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 190
    .restart local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f090200

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method
