.class public Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "StoreSelectionFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/StoreLocationListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mFindStoreButton:Landroid/widget/Button;

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

.field private mPagerItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mStoreSelectionController:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;)Lcom/mcdonalds/app/ordering/start/OnActionListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

    return-object v0
.end method

.method private filterCurrentLocation(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)Ljava/util/List;
    .locals 7
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "filterCurrentLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    .line 163
    .local v0, "currentId":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 166
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    .end local v0    # "currentId":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-object v1
.end method

.method private updateCurrentStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "oldId"    # Ljava/lang/Integer;
    .param p2, "currentId"    # Ljava/lang/Integer;

    .prologue
    const-string v6, "updateCurrentStatus"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    const/4 v3, 0x0

    .line 97
    .local v3, "old":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const/4 v0, 0x0

    .line 98
    .local v0, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getStores()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 99
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    move-object v3, v5

    .line 102
    :cond_1
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    move-object v0, v5

    goto :goto_0

    .line 106
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    if-eqz v3, :cond_3

    .line 107
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getStores()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 108
    .local v4, "oldIndex":I
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v6, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->reset()V

    .line 112
    .end local v4    # "oldIndex":I
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getStores()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 114
    .local v2, "newIndex":I
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->reset()V

    .line 116
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 120
    .end local v2    # "newIndex":I
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

    invoke-interface {v6}, Lcom/mcdonalds/app/ordering/start/OnActionListener;->onSelectedStoreChanged()V

    .line 121
    return-void
.end method


# virtual methods
.method public clearZoomFlag()V
    .locals 2

    .prologue
    const-string v0, "clearZoomFlag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "onAttach"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V
    .locals 7
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, "onChange"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :goto_0
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 132
    .local v1, "includesCurrent":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 133
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->filterCurrentLocation(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    :goto_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v5, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->setIncludesCurrent(Z)V

    .line 140
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->setStores(Ljava/util/List;)V

    .line 141
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->notifyDataSetChanged()V

    .line 143
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-nez v5, :cond_4

    .line 144
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 146
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v4, v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 151
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    :goto_3
    return-void

    .line 127
    .end local v0    # "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v1    # "includesCurrent":Z
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .restart local v0    # "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_2
    move v1, v4

    .line 131
    goto :goto_1

    .line 136
    .restart local v1    # "includesCurrent":Z
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 149
    :cond_4
    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->updateCurrentStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "StoreSelectionFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "StoreSelectionFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mStoreSelectionController:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mStoreSelectionController:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mStoreSelectionController:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mStoreSelectionController:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mPagerItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 75
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "StoreSelectionFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "StoreSelectionFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onCreateView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const v1, 0x7f0400f2

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 83
    const v1, 0x7f110358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mFindStoreButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->mFindStoreButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment$1;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "StoreSelectionFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCurrentStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousCurrentStoreId"    # Ljava/lang/String;

    .prologue
    const-string v0, "onCurrentStoreChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionFragment;->updateCurrentStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V
    .locals 4
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousSelectionId"    # Ljava/lang/String;
    .param p3, "previousSection"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p4, "shouldExpand"    # Z

    .prologue
    const-string v0, "onSelectedStoreChange"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public refreshSelectedStore()V
    .locals 2

    .prologue
    const-string v0, "refreshSelectedStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return-void
.end method
