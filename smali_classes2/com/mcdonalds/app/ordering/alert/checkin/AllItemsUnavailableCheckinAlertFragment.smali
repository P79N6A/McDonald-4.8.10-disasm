.class public Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;
.source "AllItemsUnavailableCheckinAlertFragment.java"


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

.field protected mProductErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const v0, 0x7f040097

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0907a6

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->getOutOfStockAndUnavailableProducts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicProducts:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOffers(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicOffers:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProductErrorCode:I

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/EditBasketAlertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f1100eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    .line 54
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicProductsInfo:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProblematicOffersCodes:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->getProblematicOffersNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProductErrorCode:I

    const/16 v5, -0x40c

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mProductErrorCode:I

    const/16 v5, -0x1f41

    if-ne v4, v5, :cond_1

    .line 63
    :cond_0
    const v4, 0x7f110277

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "tv":Landroid/widget/TextView;
    const v4, 0x7f0900ce

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v4, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    .line 68
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mAdapter:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    return-object v3
.end method

.method public onPositiveButtonClicked()V
    .locals 4

    .prologue
    const-string v0, "onPositiveButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->mBundle:Landroid/os/Bundle;

    const/16 v3, 0x13

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 87
    return-void
.end method
