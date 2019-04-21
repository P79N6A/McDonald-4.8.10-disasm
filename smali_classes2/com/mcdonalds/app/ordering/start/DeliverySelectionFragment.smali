.class public Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "DeliverySelectionFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;-><init>(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->mListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.DeliverySelectionFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.DeliverySelectionFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->onSelectDeliveryTimeAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.DeliverySelectionFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->onSelectDeliveryAddressAction()V

    return-void
.end method

.method private onSelectDeliveryAddressAction()V
    .locals 2

    .prologue
    const-string v0, "onSelectDeliveryAddressAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/start/OnActionListener;->onDisplayDeliveryAddresses()V

    .line 44
    return-void
.end method

.method private onSelectDeliveryTimeAction()V
    .locals 2

    .prologue
    const-string v0, "onSelectDeliveryTimeAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->mListener:Lcom/mcdonalds/app/ordering/start/OnActionListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/start/OnActionListener;->onDisplayDeliveryDateTime()V

    .line 40
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

    const-string v0, "DeliverySelectionFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DeliverySelectionFragment#onCreate"

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
    const-string v1, "DeliverySelectionFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v3, "DeliverySelectionFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "onCreateView"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const v2, 0x7f0400b1

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f11029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 28
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "DeliverySelectionFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
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
