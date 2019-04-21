.class public Lcom/mcdonalds/app/ui/LocationSelectFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LocationSelectFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mLatitudeTextView:Landroid/widget/TextView;

.field private mLongitudeTextView:Landroid/widget/TextView;

.field private mUseDeviceSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/LocationSelectFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/LocationSelectFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.LocationSelectFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;->updateMockLocation()V

    return-void
.end method

.method private getDeviceLocation()Landroid/location/Location;
    .locals 3

    .prologue
    const-string v1, "getDeviceLocation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "location":Landroid/location/Location;
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->areGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getCurrentUserLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateMockLocation()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v4, "updateMockLocation"

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    .line 106
    .local v3, "manager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    invoke-static {v5, v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->setMockLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;->getDeviceLocation()Landroid/location/Location;

    move-result-object v2

    .line 110
    .local v2, "mDeviceLocation":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 111
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/Double;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/Double;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    .end local v2    # "mDeviceLocation":Landroid/location/Location;
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "lat":Ljava/lang/Double;
    const/4 v1, 0x0

    .line 124
    .local v1, "lng":Ljava/lang/Double;
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 125
    iget-object v4, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->setMockLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v4

    .line 129
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->setMockLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->setMockLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    throw v4
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const-string v0, "afterTextChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;->updateMockLocation()V

    .line 102
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "beforeTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const v0, 0x7f090873

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 37
    const v3, 0x7f0400d0

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f1102e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    .line 40
    const v3, 0x7f1102ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    .line 41
    const v3, 0x7f1102eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    .line 47
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMockLocation()Landroid/location/Location;

    move-result-object v1

    .line 49
    .local v1, "mockLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 50
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/mcdonalds/app/ui/LocationSelectFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ui/LocationSelectFragment$1;-><init>(Lcom/mcdonalds/app/ui/LocationSelectFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    return-object v2

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mUseDeviceSwitch:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 55
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    .line 56
    .local v0, "mDeviceLocation":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 57
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    iget-object v3, p0, Lcom/mcdonalds/app/ui/LocationSelectFragment;->mLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method
