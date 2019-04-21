.class public Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "StoreLocatorPagerFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mIsExpanded:Z

.field private mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

.field private mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

.field private mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    return-void
.end method

.method private refreshAdapter()V
    .locals 2

    .prologue
    const-string v0, "refreshAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->storesUpdated()V

    .line 95
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->forceLayout()V

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public getStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const-string v0, "getStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    const-string v0, "isExpanded"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mIsExpanded:Z

    return v0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "StoreLocatorPagerFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v3, "StoreLocatorPagerFragment#onCreate"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setLimit(I)V

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 58
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setOffersOnly(Ljava/lang/Boolean;)V

    .line 60
    const-string v0, "PagerAdapter"

    const-string v3, "StoreLocatorPagerList Adapter = %s for Parent %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v3, "StoreLocatorPagerFragment#onCreate"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 58
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "StoreLocatorPagerFragment#onCreateView"

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

    .line 66
    const v1, 0x7f040121

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, "vg":Landroid/view/ViewGroup;
    const v1, 0x7f1102ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->setVerticalScrollBarEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListView:Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->updateStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 75
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "StoreLocatorPagerFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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

    .prologue
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 81
    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public reset()V
    .locals 2

    .prologue
    const-string v0, "reset"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->refreshAdapter()V

    .line 102
    return-void
.end method

.method public setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V
    .locals 3
    .param p1, "dataProvider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .prologue
    const-string v0, "setDataProvider"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 115
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "setExpanded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    if-eqz v0, :cond_0

    .line 38
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mIsExpanded:Z

    .line 40
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->expand(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->collapse(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "setSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "mStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->updateStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 125
    return-void
.end method

.method public updateStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "updateStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 106
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->refreshAdapter()V

    .line 107
    return-void
.end method
