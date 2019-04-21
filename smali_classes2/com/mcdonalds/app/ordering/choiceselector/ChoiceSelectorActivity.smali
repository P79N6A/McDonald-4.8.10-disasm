.class public Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ChoiceSelectorActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;
.implements Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;
.implements Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;
.implements Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

.field private mDoneButton:Landroid/view/MenuItem;

.field private mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->finish()V

    .line 119
    return-void
.end method

.method public finalize(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V
    .locals 6
    .param p1, "selection"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "index"    # I
    .param p3, "position"    # I

    .prologue
    const-string v2, "finalize"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "RESULT_PRODUCT"

    invoke-virtual {v2, v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v2, "RESULT_INDEX"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "RESULT_POSITION"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    const v1, 0xb128

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 176
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 183
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->productCustomized(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 185
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->back()V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040023

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;

    .line 49
    .local v0, "binding":Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    const-string v6, "ARG_CHOICE_KEY"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 54
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const-string v5, "ARG_INDEX"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 55
    .local v2, "index":I
    const-string v5, "ARG_PRODUCT_POSITION"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 57
    .local v4, "productPosition":I
    new-instance v5, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    .line 59
    new-instance v5, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-direct {v5, p0, v3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;-><init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    .line 60
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setIndex(I)V

    .line 61
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setProductPosition(I)V

    .line 62
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->getBasePrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setBasePrice(D)V

    .line 63
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v5, p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setOnProductClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;)V

    .line 64
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v5, p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setOnProductCustomizeClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;)V

    .line 65
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v5, p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setOnProductInfoClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;)V

    .line 67
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->choiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->choiceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 69
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->choiceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    const-string v5, "ARG_TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 72
    const-string v5, "ARG_TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onCreateOptionsMenu"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 79
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    const v0, 0x7f11054c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mDoneButton:Landroid/view/MenuItem;

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mDoneButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 82
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :sswitch_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->back()V

    goto :goto_0

    .line 92
    :sswitch_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->done()V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f11054c -> :sswitch_1
    .end sparse-switch
.end method

.method public onProductClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "onProductClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorPresenter;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 140
    return-void
.end method

.method public onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "onProductCustomizeClicked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "ARG_PRODUCT"

    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-class v1, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;

    const-string v2, "product_customization"

    const v3, 0xb128

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 153
    return-void
.end method

.method public onProductInfoClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "recipeId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onProductInfoClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 163
    return-void
.end method

.method public setDoneEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-string v0, "setDoneEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mDoneButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    return-void
.end method

.method public setSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "setSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setSelected(I)V

    .line 108
    return-void
.end method

.method public showOptions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p2, "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "showOptions"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->setOptions(Ljava/util/List;Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public updateCustomization(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "updateCustomization"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;->mAdapter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->notifyItemChanged(I)V

    .line 158
    return-void
.end method
