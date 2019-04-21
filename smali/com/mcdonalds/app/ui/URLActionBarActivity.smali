.class public abstract Lcom/mcdonalds/app/ui/URLActionBarActivity;
.super Lcom/mcdonalds/app/ui/URLNavigationActivity;
.source "URLActionBarActivity.java"


# instance fields
.field private mNavigationDrawerFragment:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainerResource()I
    .locals 2

    .prologue
    const-string v0, "getContainerResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const v0, 0x7f1100bd

    return v0
.end method

.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->shouldShowHamburgerMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const v0, 0x7f040026

    .line 42
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040029

    goto :goto_0
.end method

.method public getNavigationDrawerFragment()Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    .locals 2

    .prologue
    const-string v0, "getNavigationDrawerFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLActionBarActivity;->mNavigationDrawerFragment:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    return-object v0
.end method

.method protected navigationItemClicked(Lcom/mcdonalds/app/ui/models/DrawerItem;)V
    .locals 5
    .param p1, "item"    # Lcom/mcdonalds/app/ui/models/DrawerItem;

    .prologue
    const-string v2, "navigationItemClicked"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->navigationItemClicked(Lcom/mcdonalds/app/ui/models/DrawerItem;)V

    .line 64
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "label":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 74
    .restart local v1    # "label":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 76
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    const-string v2, "/side-menu"

    invoke-static {v2, v1, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 80
    .end local v0    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f1100d3

    .line 24
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLActionBarActivity;->mNavigationDrawerFragment:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->shouldShowHamburgerMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLActionBarActivity;->mNavigationDrawerFragment:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    const v0, 0x7f1100d1

    .line 32
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const-string v1, "onCreateOptionsMenu"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getNavigationDrawerFragment()Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getNavigationDrawerFragment()Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->shouldShowHamburgerMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f12000d

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
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

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 106
    .local v0, "id":I
    const v2, 0x7f11054f

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getNavigationDrawerFragment()Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackHamburgerMenu()V

    .line 109
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "SideMenuPressed"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logButtonClick(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getNavigationDrawerFragment()Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->toggleDrawerState()V

    .line 116
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method
