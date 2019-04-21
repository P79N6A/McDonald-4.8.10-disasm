.class public Lcom/mcdonalds/app/offers/PunchcardPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PunchcardPageFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mCurrentPunch:I

.field private mPosition:I

.field private mTitle:Ljava/lang/String;

.field private mTotalPunch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIILjava/lang/String;)Lcom/mcdonalds/app/offers/PunchcardPageFragment;
    .locals 8
    .param p0, "currentPunchCount"    # I
    .param p1, "totalPunchCount"    # I
    .param p2, "position"    # I
    .param p3, "offerTitle"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.offers.PunchcardPageFragment"

    const-string v4, "newInstance"

    const/4 v5, 0x4

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

    aput-object p3, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "CURRENT_PUNCH"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v2, "TOTAL_PUNCH"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "POSITION"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "TITLE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/mcdonalds/app/offers/PunchcardPageFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;-><init>()V

    .line 43
    .local v1, "punchcardPageFragment":Lcom/mcdonalds/app/offers/PunchcardPageFragment;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
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
    .locals 3

    .prologue
    const-string v0, "PunchcardPageFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "PunchcardPageFragment#onCreate"

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

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CURRENT_PUNCH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mCurrentPunch:I

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TOTAL_PUNCH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mTotalPunch:I

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mPosition:I

    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mTitle:Ljava/lang/String;

    .line 57
    :cond_0
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "PunchcardPageFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    move-object/from16 v18, v0

    const-string v19, "PunchcardPageFragment#onCreateView"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v18, "onCreateView"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    aput-object p2, v19, v20

    const/16 v20, 0x2

    aput-object p3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const v18, 0x7f0400fa

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 62
    .local v14, "rootView":Landroid/view/View;
    const v18, 0x7f11036b

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 63
    .local v15, "tableLayout":Landroid/widget/LinearLayout;
    const v18, 0x7f11036d

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 64
    .local v16, "topRow":Landroid/widget/LinearLayout;
    const v18, 0x7f110174

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 65
    .local v4, "bottomRow":Landroid/widget/LinearLayout;
    const v18, 0x7f11036c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 66
    .local v13, "punchcardTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v12, "punchcardPunchViewsTop":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v11, "punchcardPunchViewsBottom":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 73
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mCurrentPunch:I

    .line 74
    .local v5, "currentPunchCounter":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mTotalPunch:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 75
    const v18, 0x7f040185

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 76
    .local v10, "punchcardPunch":Landroid/widget/TextView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const/16 v19, 0x2a

    invoke-static/range {v18 .. v19}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/16 v20, 0x2a

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v9

    .line 78
    .local v9, "margins":I
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->mPosition:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    if-lez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    if-lez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02022d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    add-int/lit8 v5, v5, -0x1

    .line 86
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 87
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 4294967295
    .end local v4    # "bottomRow":Landroid/widget/LinearLayout;
    .end local v5    # "currentPunchCounter":I
    .end local v6    # "i":I
    .end local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "margins":I
    .end local v10    # "punchcardPunch":Landroid/widget/TextView;
    .end local v11    # "punchcardPunchViewsBottom":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v12    # "punchcardPunchViewsTop":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v13    # "punchcardTitle":Landroid/widget/TextView;
    .end local v14    # "rootView":Landroid/view/View;
    .end local v15    # "tableLayout":Landroid/widget/LinearLayout;
    .end local v16    # "topRow":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v18

    const/16 v18, 0x0

    :try_start_1
    const-string v19, "PunchcardPageFragment#onCreateView"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 82
    .restart local v4    # "bottomRow":Landroid/widget/LinearLayout;
    .restart local v5    # "currentPunchCounter":I
    .restart local v6    # "i":I
    .restart local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "margins":I
    .restart local v10    # "punchcardPunch":Landroid/widget/TextView;
    .restart local v11    # "punchcardPunchViewsBottom":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v12    # "punchcardPunchViewsTop":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v13    # "punchcardTitle":Landroid/widget/TextView;
    .restart local v14    # "rootView":Landroid/view/View;
    .restart local v15    # "tableLayout":Landroid/widget/LinearLayout;
    .restart local v16    # "topRow":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0032

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    goto :goto_2

    .line 84
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020229

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto :goto_3

    .line 89
    :cond_2
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 93
    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "margins":I
    .end local v10    # "punchcardPunch":Landroid/widget/TextView;
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 94
    .local v17, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 96
    .end local v17    # "view":Landroid/view/View;
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 97
    .restart local v17    # "view":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 99
    .end local v17    # "view":Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v14
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

    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 105
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
