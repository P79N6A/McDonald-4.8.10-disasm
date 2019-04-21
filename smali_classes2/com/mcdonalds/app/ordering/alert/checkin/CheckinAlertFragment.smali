.class public abstract Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;
.source "CheckinAlertFragment.java"


# instance fields
.field protected mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

.field protected mItemList:Landroid/support/v7/widget/RecyclerView;

.field protected mProblematicOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblematicOffersCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblematicProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getOutOfStockAndUnavailableProducts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicProducts:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOffers(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicOffers:Ljava/util/List;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f1100eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    .line 51
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getProblematicOffersNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    new-instance v3, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    .line 59
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 61
    return-object v2
.end method

.method public onPositiveButtonClicked()V
    .locals 8

    .prologue
    const-string v6, "onPositiveButtonClicked"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getOutOfStockAndUnavailableProducts()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 78
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 80
    .local v4, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v6, v7}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOffers(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, "orderOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_3

    .line 88
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 90
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 87
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 99
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 102
    return-void
.end method
