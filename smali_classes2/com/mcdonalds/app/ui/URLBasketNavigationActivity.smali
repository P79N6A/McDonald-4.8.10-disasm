.class public abstract Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "URLBasketNavigationActivity.java"


# instance fields
.field protected mBasketBadgeContainer:Landroid/view/View;

.field private mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

.field private mBasketBadgeLabel:Landroid/widget/TextView;

.field mCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    return-void
.end method

.method private adjustBasketBadgePosition(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v1, "adjustBasketBadgePosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->updateHiddenState()V

    .line 81
    iget v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mCount:I

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_0
    const/4 v0, 0x0

    .line 89
    .local v0, "translationY":I
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v0, v1

    .line 93
    :cond_0
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 100
    :goto_1
    return-void

    .line 84
    .end local v0    # "translationY":I
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    .restart local v0    # "translationY":I
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private setupBasketBadgeView()V
    .locals 2

    .prologue
    const-string v0, "setupBasketBadgeView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const v0, 0x7f1100d2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    const v1, 0x7f11025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    new-instance v1, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity$1;-><init>(Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->adjustBasketBadgePosition(Z)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->updateHiddenState()V

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    const-string v1, "ShowBasketButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 61
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

    .line 104
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 105
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-nez v0, :cond_1

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    .line 113
    :goto_0
    iget v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mCount:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 124
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalOrderCount()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mCount:I

    .line 109
    iget v3, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mCount:I

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bringBasketToFront()V
    .locals 2

    .prologue
    const-string v0, "bringBasketToFront"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 76
    return-void
.end method

.method protected navigateToBasket()V
    .locals 2

    .prologue
    const-string v0, "navigateToBasket"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "/home"

    const-string v1, "Basket"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->setupBasketBadgeView()V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->adjustBasketBadgePosition(Z)V

    .line 38
    return-void
.end method

.method public updateBasketBadge()V
    .locals 2

    .prologue
    const-string v0, "updateBasketBadge"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->adjustBasketBadgePosition(Z)V

    .line 72
    return-void
.end method
