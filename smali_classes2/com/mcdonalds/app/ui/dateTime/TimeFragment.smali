.class public Lcom/mcdonalds/app/ui/dateTime/TimeFragment;
.super Landroid/support/v4/app/Fragment;
.source "TimeFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mCallback:Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;

.field private mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.TimeFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mCallback:Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.TimeFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method private fixTimePickerBug18982()V
    .locals 3

    .prologue
    const-string v1, "fixTimePickerBug18982"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "amPmView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;-><init>(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 189
    :cond_0
    return-void
.end method

.method public static final newInstance(IIIZZ)Lcom/mcdonalds/app/ui/dateTime/TimeFragment;
    .locals 8
    .param p0, "theme"    # I
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "isClientSpecified24HourTime"    # Z
    .param p4, "is24HourTime"    # Z

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.dateTime.TimeFragment"

    const-string v4, "newInstance"

    const/4 v5, 0x5

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

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;-><init>()V

    .line 71
    .local v1, "f":Lcom/mcdonalds/app/ui/dateTime/TimeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v2, "hour"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "minute"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v2, "isClientSpecified24HourTime"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v2, "is24HourTime"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
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
    const-string v1, "TimeFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "TimeFragment#onCreate"

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

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mCallback:Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "TimeFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement TimeFragment.TimeChangedListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    :try_start_0
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v9, "TimeFragment#onCreateView"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v8, "onCreateView"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "theme"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 90
    .local v6, "theme":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "hour"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "initialHour":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "minute"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, "initialMinute":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "isClientSpecified24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 93
    .local v4, "isClientSpecified24HourTime":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "is24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 101
    .local v3, "is24HourTime":Z
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 102
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const v8, 0x103006b

    :goto_1
    invoke-direct {v0, v9, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v0, "contextThemeWrapper":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 109
    .local v5, "localInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040127

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 111
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f11029b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    iput-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 113
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/high16 v9, 0x60000

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 114
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    new-instance v9, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 125
    if-eqz v4, :cond_2

    .line 127
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 137
    :goto_2
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 138
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 142
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-gt v8, v9, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->fixTimePickerBug18982()V

    .line 148
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v7

    .line 4294967295
    .end local v0    # "contextThemeWrapper":Landroid/content/Context;
    .end local v1    # "initialHour":I
    .end local v2    # "initialMinute":I
    .end local v3    # "is24HourTime":Z
    .end local v4    # "isClientSpecified24HourTime":Z
    .end local v5    # "localInflater":Landroid/view/LayoutInflater;
    .end local v6    # "theme":I
    .end local v7    # "v":Landroid/view/View;
    :catch_0
    move-exception v8

    const/4 v8, 0x0

    :try_start_1
    const-string v9, "TimeFragment#onCreateView"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 102
    .restart local v1    # "initialHour":I
    .restart local v2    # "initialMinute":I
    .restart local v3    # "is24HourTime":Z
    .restart local v4    # "isClientSpecified24HourTime":Z
    .restart local v6    # "theme":I
    :cond_1
    const v8, 0x103006e

    goto :goto_1

    .line 133
    .restart local v0    # "contextThemeWrapper":Landroid/content/Context;
    .restart local v5    # "localInflater":Landroid/view/LayoutInflater;
    .restart local v7    # "v":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 133
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_2
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
