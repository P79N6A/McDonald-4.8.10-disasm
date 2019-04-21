.class public Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDrawerListAdapter:Lcom/mcdonalds/app/navigation/DrawerListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getActionBarDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;
    .locals 7

    .prologue
    const-string v1, "getActionBarDrawerToggle"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;

    .line 110
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v3

    const v4, 0x7f02024f

    const v5, 0x7f090572

    const v6, 0x7f090571

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;-><init>(Lcom/mcdonalds/app/ui/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 159
    .local v0, "drawerToggle":Landroid/support/v4/app/ActionBarDrawerToggle;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 161
    return-object v0
.end method

.method protected getConfigurationChina()I
    .locals 2

    .prologue
    const-string v0, "getConfigurationChina"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const v0, 0x7f11031a

    return v0
.end method

.method protected getConfigurationENG()I
    .locals 2

    .prologue
    const-string v0, "getConfigurationENG"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const v0, 0x7f11031c

    return v0
.end method

.method protected getDrawerItemLayoutResource()I
    .locals 2

    .prologue
    const-string v0, "getDrawerItemLayoutResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const v0, 0x7f040072

    return v0
.end method

.method protected getDrawerItemList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v14, "getDrawerItemList"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, "drawerItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ui/models/DrawerItem;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.appmenu.sections"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 211
    .local v13, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/internal/LinkedTreeMap;

    .line 213
    .local v9, "linkedHashMap":Lcom/google/gson/internal/LinkedTreeMap;
    const-string v14, "sectionTitle"

    invoke-virtual {v9, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 215
    .local v12, "sectionTitleKey":Ljava/lang/String;
    const-string v14, "DEBUG"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 220
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 222
    new-instance v1, Lcom/mcdonalds/app/ui/models/DrawerItem;

    invoke-direct {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;-><init>()V

    .line 223
    .local v1, "drawerHeader":Lcom/mcdonalds/app/ui/models/DrawerItem;
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setHeading(Z)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setSectionTitle(Ljava/lang/String;)V

    .line 227
    const-string v14, "itemLeftImage"

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setLeftHandImageName(Ljava/lang/String;)V

    .line 228
    const-string v14, "itemRightImage"

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setRightHandImageName(Ljava/lang/String;)V

    .line 229
    const-string v14, "itemAttr"

    invoke-virtual {v9, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setAttributes(Ljava/util/Map;)V

    .line 230
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v1    # "drawerHeader":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_1
    const-string v14, "items"

    invoke-virtual {v9, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 234
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/internal/LinkedTreeMap;

    .line 236
    .local v4, "item":Lcom/google/gson/internal/LinkedTreeMap;
    new-instance v2, Lcom/mcdonalds/app/ui/models/DrawerItem;

    invoke-direct {v2}, Lcom/mcdonalds/app/ui/models/DrawerItem;-><init>()V

    .line 237
    .local v2, "drawerItem":Lcom/mcdonalds/app/ui/models/DrawerItem;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setHeading(Z)V

    .line 239
    const-string v14, "itemName"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 240
    .local v7, "itemTitleKey":Ljava/lang/String;
    const-string v14, "itemLeftImage"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 241
    .local v5, "itemLeftImageKey":Ljava/lang/String;
    const-string v14, "itemRightImage"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 243
    .local v6, "itemRightImageKey":Ljava/lang/String;
    const-string v14, "itemRequiresLoginState"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 244
    .local v10, "requiresLoginState":Ljava/lang/Boolean;
    const-string v14, "itemRequiresLogoutState"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 246
    .local v11, "requiresLogutState":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setSectionTitle(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "analytics_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setAnalyticsTitle(Ljava/lang/String;)V

    .line 248
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "ItemPressed"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setDataLayerTitle(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setLeftHandImageName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setRightHandImageName(Ljava/lang/String;)V

    .line 252
    const-string v14, "itemLink"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setUrl(Ljava/lang/String;)V

    .line 253
    const-string v14, "itemAttr"

    invoke-virtual {v4, v14}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-virtual {v2, v14}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setAttributes(Ljava/util/Map;)V

    .line 254
    invoke-virtual {v2, v10}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setRequiresLoginState(Ljava/lang/Boolean;)V

    .line 255
    invoke-virtual {v2, v11}, Lcom/mcdonalds/app/ui/models/DrawerItem;->setRequiresLogoutState(Ljava/lang/Boolean;)V

    .line 257
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    if-eqz v10, :cond_2

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getLogInStateRequiredItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 265
    .end local v2    # "drawerItem":Lcom/mcdonalds/app/ui/models/DrawerItem;
    .end local v4    # "item":Lcom/google/gson/internal/LinkedTreeMap;
    .end local v5    # "itemLeftImageKey":Ljava/lang/String;
    .end local v6    # "itemRightImageKey":Ljava/lang/String;
    .end local v7    # "itemTitleKey":Ljava/lang/String;
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    .end local v9    # "linkedHashMap":Lcom/google/gson/internal/LinkedTreeMap;
    .end local v10    # "requiresLoginState":Ljava/lang/Boolean;
    .end local v11    # "requiresLogutState":Ljava/lang/Boolean;
    .end local v12    # "sectionTitleKey":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public bridge synthetic getDrawerListAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    const-string v0, "getDrawerListAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerListAdapter()Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDrawerListAdapter()Lcom/mcdonalds/app/navigation/DrawerListAdapter;
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mDrawerListAdapter:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    .line 169
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerItemLayoutResource()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerItemList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mDrawerListAdapter:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mDrawerListAdapter:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    return-object v0
.end method

.method protected getDrawerListViewResource()I
    .locals 2

    .prologue
    const-string v0, "getDrawerListViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const v0, 0x7f11031d

    return v0
.end method

.method protected getMenuResource()I
    .locals 2

    .prologue
    const-string v0, "getMenuResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const v0, 0x7f12000d

    return v0
.end method

.method protected getRootLayoutResource()I
    .locals 2

    .prologue
    const-string v0, "getRootLayoutResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const v0, 0x7f0400e2

    return v0
.end method

.method protected getWelcomeMessageResource()I
    .locals 2

    .prologue
    const-string v0, "getWelcomeMessageResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const v0, 0x7f110319

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->onDestroy()V

    .line 59
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const-string v2, "onOptionsItemSelected"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActionBarDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 195
    .local v0, "id":I
    const v2, 0x7f11054f

    if-ne v0, v2, :cond_1

    .line 197
    invoke-static {}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackHamburgerMenu()V

    .line 198
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->toggleDrawerState()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->onStart()V

    .line 183
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 184
    iget-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 185
    return-void
.end method

.method public setLoggedInDrawerState(Z)V
    .locals 7
    .param p1, "loggedIn"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "setLoggedInDrawerState"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerListAdapter()Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getLogInStateRequiredItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerListAdapter()Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 273
    .local v0, "filter":Landroid/widget/Filter;
    if-eqz p1, :cond_3

    const-string v2, "logged_in_state"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getDrawerListAdapter()Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->notifyDataSetChanged()V

    .line 279
    const-string v1, ""

    .line 280
    .local v1, "welcomeMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 282
    iget-object v2, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09056f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setWelcomeMessageVisibility(I)V

    .line 288
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setWelcomeMessage(Ljava/lang/String;)V

    .line 290
    .end local v0    # "filter":Landroid/widget/Filter;
    .end local v1    # "welcomeMsg":Ljava/lang/String;
    :cond_2
    return-void

    .line 273
    .restart local v0    # "filter":Landroid/widget/Filter;
    :cond_3
    const-string v2, "logged_out_state"

    goto :goto_0
.end method

.method protected styleDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 3
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    const-string v0, "styleDrawerLayout"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const v0, 0x7f020107

    const v1, 0x800003

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 103
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const-string v1, "update"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    .local v0, "code":I
    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_0

    .line 297
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->isLoggedIn()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 299
    :cond_0
    return-void
.end method
