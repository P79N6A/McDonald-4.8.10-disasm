.class public Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "LastOrderActivity.java"


# instance fields
.field private mBasketBadgeContainer:Landroid/view/View;

.field private mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

.field private mBasketBadgeLabel:Landroid/widget/TextView;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    return-void
.end method

.method private adjustBasketBadgePosition(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const-string v1, "adjustBasketBadgePosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->updateHiddenState()V

    .line 87
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "translationY":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v0, v1

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private setupBasketBadgeView()V
    .locals 2

    .prologue
    const-string v0, "setupBasketBadgeView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const v0, 0x7f1100d2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    const v1, 0x7f11025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity$1;-><init>(Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->adjustBasketBadgePosition(Z)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->updateHiddenState()V

    .line 136
    return-void
.end method

.method private updateHiddenState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "updateHiddenState"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 106
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-nez v0, :cond_0

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 120
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalOrderCount()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mCount:I

    .line 110
    iget v3, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mCount:I

    if-nez v3, :cond_1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getContainerResource()I
    .locals 2

    .prologue
    const-string v0, "getContainerResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const v0, 0x7f1100bd

    return v0
.end method

.method protected navigateToBasket()V
    .locals 2

    .prologue
    const-string v0, "navigateToBasket"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "/home"

    const-string v1, "Basket"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 49
    .local v5, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;-><init>()V

    .line 51
    .local v2, "fragment":Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    if-eqz v1, :cond_1

    const-string v6, "order"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 52
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->getContainerResource()I

    move-result v6

    .line 65
    invoke-virtual {v5, v6, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->setupBasketBadgeView()V

    .line 71
    return-void

    .line 55
    :cond_1
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 56
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getRecentOrders()Ljava/util/List;

    move-result-object v4

    .line 57
    .local v4, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .line 59
    .local v3, "lastOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .restart local v1    # "extras":Landroid/os/Bundle;
    const-string v6, "order"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;->adjustBasketBadgePosition(Z)V

    .line 77
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
