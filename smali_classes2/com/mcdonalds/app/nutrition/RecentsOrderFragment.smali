.class public Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecentsOrderFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.RecentsOrderFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->startSingleReceiptActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.RecentsOrderFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method private startSingleReceiptActivity()V
    .locals 5

    .prologue
    const-string v2, "startSingleReceiptActivity"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 98
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "order_data_passer_key"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-class v2, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;

    sget-object v3, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method


# virtual methods
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
    .locals 3

    const-string v0, "RecentsOrderFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RecentsOrderFragment#onCreate"

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

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RecentsOrderFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v6, "RecentsOrderFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v5, "onCreateView"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const v5, 0x7f040101

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 53
    .local v3, "rootView":Landroid/view/View;
    const v5, 0x7f110352

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 55
    .local v2, "orderReceiptContainer":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v5, :cond_1

    .line 57
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 57
    invoke-static {v5, v6, v2, p1}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 68
    :goto_1
    new-instance v0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$1;-><init>(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;)V

    .line 74
    .local v0, "listener":Landroid/view/View$OnClickListener;
    new-instance v5, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;

    invoke-direct {v5, v0}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v5, "OrderPressed"

    invoke-static {v2, v5}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 79
    const v5, 0x7f110355

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    .local v1, "orderAgainBtn":Landroid/widget/Button;
    new-instance v5, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$2;-><init>(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.orderingDisclaimerInfo"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const v5, 0x7f1100e6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 90
    .local v4, "warningsContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "menuGridView"

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->addDisclaimerTextView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .end local v4    # "warningsContainer":Landroid/view/ViewGroup;
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    .end local v1    # "orderAgainBtn":Landroid/widget/Button;
    .end local v2    # "orderReceiptContainer":Landroid/widget/LinearLayout;
    .end local v3    # "rootView":Landroid/view/View;
    :catch_0
    move-exception v5

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "RecentsOrderFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .restart local v2    # "orderReceiptContainer":Landroid/widget/LinearLayout;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
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

.method public orderAgainTapped(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 8
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "orderAgainTapped"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "/order-detail"

    .line 115
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "On click"

    .line 116
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "Order Again"

    .line 117
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v4

    .line 114
    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 121
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 124
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 126
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getItemsCount()I

    move-result v3

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getMaxBasketQuantity()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 129
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0905d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$3;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$3;-><init>(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 138
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Too many products in the basket"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/OrderUtils;->orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090a51

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4, v6}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 144
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Must have items in basket before checking out"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 148
    .local v2, "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_1

    .line 151
    .end local v2    # "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->updateBasketBadge()V

    .line 154
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    const-class v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0

    .line 159
    :cond_4
    new-instance v1, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;-><init>(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 182
    .local v1, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f09010f

    .line 183
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090156

    .line 184
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090182

    .line 185
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f09011a

    .line 186
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 192
    .end local v1    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public setOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 3
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v0, "setOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 111
    return-void
.end method
