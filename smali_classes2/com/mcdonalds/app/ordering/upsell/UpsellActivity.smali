.class public Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UpsellActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;
.implements Lcom/mcdonalds/app/ordering/upsell/UpsellView;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

.field mAddToCartButton:Landroid/widget/Button;

.field mCancelButton:Landroid/widget/Button;

.field private mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const-string v0, "dismiss"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->finish()V

    .line 139
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayItems(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
    .locals 3
    .param p2, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order$PriceType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "displayItems"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->setRecipes(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 110
    return-void
.end method

.method public markItemSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "markItemSelected"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v0, p1, v4}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->updateQuantity(II)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAddToCartButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    return-void
.end method

.method public markItemUnselected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "markItemUnselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v0, p1, v3}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->updateQuantity(II)V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAddToCartButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->hasProductSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
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

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 159
    .local v0, "id":I
    const v1, 0x7f1100ec

    if-ne v0, v1, :cond_1

    .line 160
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setShowUpsell(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->dismiss()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const v1, 0x7f1100ed

    if-ne v0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setShowUpsell(Z)V

    .line 164
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->addItemsToBasket()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "UpsellActivity"

    invoke-static {v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v7, "UpsellActivity#onCreate"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v6, "onCreate"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v6, 0x7f04002e

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 46
    const v6, 0x7f04001e

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 47
    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 48
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    const v6, 0x7f09011b

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 58
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->dismiss()V

    .line 93
    :goto_1
    const-string v6, "onCreate"

    invoke-static {p0, v6}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v2    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    :try_start_1
    const-string v7, "UpsellActivity#onCreate"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .restart local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v6, "param_products"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    const-string v6, "param_products"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 70
    .local v4, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_2
    invoke-static {v4}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->dismiss()V

    goto :goto_1

    .line 67
    .end local v4    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v6

    const-string v7, "param_products"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .restart local v4    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    goto :goto_2

    .line 75
    :cond_3
    new-instance v6, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-direct {v6, p0, p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;)V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    .line 76
    new-instance v6, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    invoke-direct {v6, p0, v4}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;-><init>(Lcom/mcdonalds/app/ordering/upsell/UpsellView;Ljava/util/List;)V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    .line 78
    const v6, 0x7f1100eb

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 79
    .local v3, "itemList":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    .line 83
    .local v1, "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    instance-of v6, v1, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v6, :cond_4

    .line 84
    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    .end local v1    # "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 87
    :cond_4
    const v6, 0x7f1100ec

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mCancelButton:Landroid/widget/Button;

    .line 88
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v6, 0x7f1100ed

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAddToCartButton:Landroid/widget/Button;

    .line 91
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAddToCartButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
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

.method public onItemClicked(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onItemClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->toggleSelection(I)V

    .line 144
    return-void
.end method

.method public onMinusButtonClicked(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onMinusButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->decreaseItemQuantity(I)V

    .line 154
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

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 104
    :goto_0
    return v0

    .line 100
    :pswitch_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->finish()V

    goto :goto_0

    .line 98
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

.method public onPlusButtonClicked(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onPlusButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mPresenter:Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellPresenter;->increaseItemQuantity(I)V

    .line 149
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

.method public showCart()V
    .locals 2

    .prologue
    const-string v0, "showCart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->finish()V

    .line 133
    return-void
.end method

.method public updateItemQuantity(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "quantity"    # I

    .prologue
    const-string v0, "updateItemQuantity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellActivity;->mAdapter:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->updateQuantity(II)V

    .line 127
    return-void
.end method
