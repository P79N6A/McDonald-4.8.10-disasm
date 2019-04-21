.class public Lcom/mcdonalds/app/ui/dateTime/DateFragment;
.super Landroid/support/v4/app/Fragment;
.source "DateFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mCallback:Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;

.field private mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/dateTime/DateFragment;)Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/DateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.DateFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mCallback:Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;

    return-object v0
.end method

.method public static final newInstance(IIIILjava/util/Date;Ljava/util/Date;)Lcom/mcdonalds/app/ui/dateTime/DateFragment;
    .locals 8
    .param p0, "theme"    # I
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "minDate"    # Ljava/util/Date;
    .param p5, "maxDate"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.dateTime.DateFragment"

    const-string v4, "newInstance"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object p5, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/DateFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;-><init>()V

    .line 82
    .local v1, "f":Lcom/mcdonalds/app/ui/dateTime/DateFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v2, "year"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v2, "month"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "day"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "minDate"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    const-string v2, "maxDate"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
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
    .locals 4

    .prologue
    const-string v1, "DateFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "DateFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mCallback:Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "DateFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement DateFragment.DateChangedListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    :try_start_0
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v10, "DateFragment#onCreateView"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v9, "onCreateView"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    invoke-static {p0, v9, v10}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "theme"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 102
    .local v7, "theme":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "year"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "initialYear":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "month"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "initialMonth":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "day"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "initialDay":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "minDate"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 106
    .local v6, "minDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "maxDate"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    .line 114
    .local v5, "maxDate":Ljava/util/Date;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 115
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    const v9, 0x103006b

    :goto_1
    invoke-direct {v0, v10, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 120
    .local v0, "contextThemeWrapper":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 122
    .local v4, "localInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0400ac

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 124
    .local v8, "v":Landroid/view/View;
    const v9, 0x7f110298

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    iput-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    .line 126
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    const/high16 v10, 0x60000

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;->setDescendantFocusability(I)V

    .line 127
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    new-instance v10, Lcom/mcdonalds/app/ui/dateTime/DateFragment$1;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ui/dateTime/DateFragment$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/DateFragment;)V

    invoke-virtual {v9, v3, v2, v1, v10}, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 141
    if-eqz v6, :cond_0

    .line 142
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;->setMinDate(J)V

    .line 144
    :cond_0
    if-eqz v5, :cond_1

    .line 145
    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->mDatePicker:Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;->setMaxDate(J)V

    .line 147
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v8

    .line 4294967295
    .end local v0    # "contextThemeWrapper":Landroid/content/Context;
    .end local v1    # "initialDay":I
    .end local v2    # "initialMonth":I
    .end local v3    # "initialYear":I
    .end local v4    # "localInflater":Landroid/view/LayoutInflater;
    .end local v5    # "maxDate":Ljava/util/Date;
    .end local v6    # "minDate":Ljava/util/Date;
    .end local v7    # "theme":I
    .end local v8    # "v":Landroid/view/View;
    :catch_0
    move-exception v9

    const/4 v9, 0x0

    :try_start_1
    const-string v10, "DateFragment#onCreateView"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 115
    .restart local v1    # "initialDay":I
    .restart local v2    # "initialMonth":I
    .restart local v3    # "initialYear":I
    .restart local v5    # "maxDate":Ljava/util/Date;
    .restart local v6    # "minDate":Ljava/util/Date;
    .restart local v7    # "theme":I
    :cond_2
    const v9, 0x103006e

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
