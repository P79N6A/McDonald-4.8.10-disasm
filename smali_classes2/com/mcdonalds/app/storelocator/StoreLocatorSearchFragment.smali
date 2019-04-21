.class public Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "StoreLocatorSearchFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedImageView:Landroid/widget/ImageView;

.field private mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

.field private mListView:Landroid/widget/ListView;

.field private mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mSearchList:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorSearchFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "updateList"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "PREF_LOCATION_SEARCH_TITLE"

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "tempTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mSearchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mSearchList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDataLayerPage()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerPage"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->updateList()V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v2, 0x7f040122

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, "vg":Landroid/view/ViewGroup;
    const v2, 0x7f110406

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "filtersView":Landroid/view/View;
    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f1102ba

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mListView:Landroid/widget/ListView;

    .line 73
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090003

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mSearchList:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 74
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const v2, 0x7f110408

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mCheckedImageView:Landroid/widget/ImageView;

    .line 86
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 93
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 94
    .local v0, "checked":Z
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mCheckedImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    return-void

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 93
    goto :goto_0

    .line 94
    .restart local v0    # "checked":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 3
    .param p1, "controller"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const-string v0, "setController"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 104
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 105
    return-void
.end method

.method public updateViewItems()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "updateViewItems"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, "checked":Z
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mCheckedImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->updateList()V

    .line 114
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 115
    return-void

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    .restart local v0    # "checked":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method
