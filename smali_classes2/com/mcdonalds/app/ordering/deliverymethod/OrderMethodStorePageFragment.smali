.class public Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrderMethodStorePageFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAdreess:Landroid/widget/TextView;

.field private mDistance:Landroid/widget/TextView;

.field private mHours:Landroid/widget/TextView;

.field private mIcon:Landroid/view/View;

.field private mListener:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

.field private mName:Landroid/widget/TextView;

.field private final mOnClickInfo:Landroid/view/View$OnClickListener;

.field private final mOnClickSelect:Landroid/view/View$OnClickListener;

.field private mParentFragment:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field private mSelectButton:Landroid/view/View;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 140
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mOnClickSelect:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mOnClickInfo:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodStorePageFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mListener:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodStorePageFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method public static newInstance(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;)Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;
    .locals 6
    .param p0, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodStorePageFragment"

    const-string v3, "newInstance"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;-><init>()V

    .line 38
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;
    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->setListener(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v3, "onActivityCreated"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 88
    .local v2, "textColor":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mAdreess:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "dailyStoreHoursString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mHours:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    const-string v1, ""

    .line 101
    .local v1, "distance":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mDistance:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_3
    return-void

    .line 85
    .end local v0    # "dailyStoreHoursString":Ljava/lang/String;
    .end local v1    # "distance":Ljava/lang/String;
    .end local v2    # "textColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .restart local v2    # "textColor":I
    goto :goto_0

    .line 96
    .restart local v0    # "dailyStoreHoursString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mHours:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 107
    .restart local v1    # "distance":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mDistance:Landroid/widget/TextView;

    const v4, 0x7f09042c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 102
    :catch_0
    move-exception v3

    goto :goto_2
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

    .prologue
    const-string v0, "OrderMethodStorePageFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderMethodStorePageFragment#onCreate"

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

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mParentFragment:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 52
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderMethodStorePageFragment#onCreate"

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
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "OrderMethodStorePageFragment#onCreateView"

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

    .line 57
    const v1, 0x7f0401aa

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mOnClickInfo:Landroid/view/View$OnClickListener;

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f1103f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mName:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f1103fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mAdreess:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f1103d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mHours:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f1103d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mDistance:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f1103fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mIcon:Landroid/view/View;

    .line 68
    const v1, 0x7f1103dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mSelectButton:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mSelectButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mOnClickSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->onStateChange()V

    .line 73
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "OrderMethodStorePageFragment#onCreateView"

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

.method public onStateChange()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "onStateChange"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "isSelected":Z
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mParentFragment:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mParentFragment:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 116
    .local v1, "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 121
    .end local v1    # "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 123
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mSelectButton:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    return-void

    .restart local v1    # "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    move v0, v2

    .line 117
    goto :goto_0
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

.method public setListener(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mListener:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    .line 138
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 134
    return-void
.end method
