.class public Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "StoreLocatorFiltersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

.field private mFiltersChanged:Z

.field private mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mSearchText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mFiltersChanged:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->filters:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorFiltersFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorFiltersFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Landroid/widget/ListView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorFiltersFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorFiltersFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const v0, 0x7f0908a8

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "CONTROLLER_PASSER_KEY"

    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 69
    const-string v1, "search_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mSearchText:Ljava/lang/String;

    .line 71
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 98
    const v0, 0x7f120004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const v0, 0x7f11054a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 75
    const v1, 0x7f04011d

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    .local v0, "vg":Landroid/view/ViewGroup;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListView:Landroid/widget/ListView;

    .line 78
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 92
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const-string v2, "onItemClick"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    invoke-virtual {v2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "filter":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mFiltersChanged:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .local v0, "activeFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setActiveFilters(Ljava/util/List;)V

    .line 175
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "onOptionsItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f11054a
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStoreLocatorModule()Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getAvailableStoreFeatures(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 163
    :cond_0
    return-void
.end method

.method public performNewLocationSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "performNewLocationSearch"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mFiltersChanged:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLocation(Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->requestUpdateStoresByAddress(Ljava/lang/String;Z)V

    goto :goto_0
.end method
