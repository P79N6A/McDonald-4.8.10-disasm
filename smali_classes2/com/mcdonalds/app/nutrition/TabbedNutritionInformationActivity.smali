.class public Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TabbedNutritionInformationActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/nutrition/NutritionInformationView;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

.field private mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayRecipeInformation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p1, "recipeName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p8, "recipeComponentsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    .local p4, "allergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    .local p5, "componentAllergens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    .local p7, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "displayRecipeInformation"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f110063

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 61
    .local v10, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->loadProductImage(Landroid/widget/ImageView;)V

    .line 63
    const v0, 0x7f1100e8

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 64
    .local v9, "descriptionView":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 65
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    .line 70
    const v0, 0x7f1100ea

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager;

    .line 71
    .local v11, "pager":Landroid/support/v4/view/ViewPager;
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    invoke-virtual {v11, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 72
    const v0, 0x7f1100e9

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/TabLayout;

    .line 73
    .local v12, "tabs":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v12, v11}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 74
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->finishAfterTransition()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "TabbedNutritionInformationActivity"

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v4, "TabbedNutritionInformationActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "onCreate"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v3, 0x7f04002d

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 38
    const v3, 0x7f04001b

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 39
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0907aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 40
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 41
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 47
    const-string v3, "recipe_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "recipeId":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-direct {v3, p0, p0, v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 50
    .end local v2    # "recipeId":Ljava/lang/String;
    :cond_1
    const-string v3, "onCreate"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "TabbedNutritionInformationActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v0, "onCreateDialog"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onOptionsItemSelected"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 84
    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;->onBackPressed()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method
