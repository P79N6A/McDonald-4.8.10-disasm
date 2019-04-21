.class public Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;
.super Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.source "StoreLocatorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesStartIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mNearByStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mNearbyStartIndex:I

.field private mOffersOnlyMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const v2, 0x7f04011b

    const v3, 0x7f1103f2

    const v4, 0x7f1103f3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;-><init>(Landroid/content/Context;IIILjava/util/List;)V

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mOffersOnlyMode:Ljava/lang/Boolean;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method private configureSectionHeader(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v2, "configureSectionHeader"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "text":Ljava/lang/String;
    const/4 v0, -0x1

    .line 526
    .local v0, "iconId":I
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$2;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorSection:[I

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 546
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 548
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionHeaderLabel()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 553
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    :goto_1
    return-void

    .line 529
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090700

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    goto :goto_0

    .line 533
    :pswitch_1
    iget v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoritesStartIndex:I

    if-ne p1, v2, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090701

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    const v0, 0x7f020168

    goto :goto_0

    .line 540
    :pswitch_2
    iget v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearbyStartIndex:I

    if-ne p1, v2, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090702

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 562
    :cond_2
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldHideOrderingWarning(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v1, 0x0

    const-string v2, "shouldHideOrderingWarning"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "shouldHide":Z
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 574
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 572
    goto :goto_0
.end method

.method private updateSections()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "updateSections"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v4, :cond_0

    move v0, v1

    .line 492
    .local v0, "hasCurrent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 494
    .local v1, "offset":I
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoritesStartIndex:I

    .line 495
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    iput v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearbyStartIndex:I

    .line 496
    return-void

    .end local v0    # "hasCurrent":Z
    .end local v1    # "offset":I
    :cond_0
    move v0, v2

    .line 491
    goto :goto_0

    .restart local v0    # "hasCurrent":Z
    :cond_1
    move v1, v2

    .line 492
    goto :goto_1

    .restart local v1    # "offset":I
    :cond_2
    move v2, v1

    .line 494
    goto :goto_2

    .line 495
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, v2, v1

    goto :goto_3
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const-string v0, "areAllItemsEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method protected createViewHolder(Landroid/view/View;)Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "createViewHolder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;-><init>(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    return-object v0
.end method

.method public expand(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const-string v0, "expand"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    .line 94
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 97
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 99
    .local v1, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 100
    .local v7, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    move-result-object v2

    .line 101
    .local v2, "expandedState":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->shouldHideOrderingWarning(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v3

    .line 104
    .local v3, "hideOrderingWarning":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 108
    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsFavoritingWithoutMobileOrdering()Z

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 109
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsSelectionWithoutMobileOrdering()Z

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 110
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v6

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper;->configureStoreItem(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/app/storelocator/StoreItemViewState;ZZZLcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;)V

    .line 114
    .end local v1    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    .end local v2    # "expandedState":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .end local v3    # "hideOrderingWarning":Z
    .end local v7    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->expand(I)V

    .line 115
    return-void
.end method

.method public getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const-string v0, "getContentView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04011a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_0
    return-object p2
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "getItemViewType"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isSectionHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v3, "getPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 373
    const/4 v1, -0x1

    .line 375
    .local v1, "ret":I
    if-eqz p2, :cond_0

    .line 377
    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$2;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorSection:[I

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 379
    :pswitch_0
    const/4 v1, 0x0

    .line 380
    goto :goto_0

    .line 384
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 387
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 389
    iget v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoritesStartIndex:I

    add-int v1, v0, v3

    .line 390
    goto :goto_0

    .line 384
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 400
    .restart local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 402
    iget v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearbyStartIndex:I

    add-int v1, v0, v3

    .line 403
    goto :goto_0

    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 7
    .param p1, "i"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "getSection"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v3, :cond_0

    move v0, v1

    .line 472
    .local v0, "hasCurrent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 474
    .local v1, "offset":I
    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 475
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 483
    :goto_2
    return-object v2

    .end local v0    # "hasCurrent":Z
    .end local v1    # "offset":I
    :cond_0
    move v0, v2

    .line 471
    goto :goto_0

    .restart local v0    # "hasCurrent":Z
    :cond_1
    move v1, v2

    .line 472
    goto :goto_1

    .line 478
    .restart local v1    # "offset":I
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoritesStartIndex:I

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_3

    .line 479
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_2

    .line 482
    :cond_3
    iget v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearbyStartIndex:I

    if-eq v2, v6, :cond_4

    .line 483
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_2

    .line 486
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid section"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const-string v0, "getTitleView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04011c

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 211
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 213
    .local v2, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    if-nez v2, :cond_0

    .line 215
    const-string v4, "ViewHolder missing in StoreLocator List getView"

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    move-object v1, v3

    .line 251
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    invoke-static {v1, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v4, "getView"

    invoke-static {p0, v4}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v1

    .line 220
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 222
    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->hasBeenPopulated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 224
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->populateFromView(Landroid/view/View;)V

    .line 225
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 228
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mOffersOnlyMode:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    :cond_1
    const-class v4, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    invoke-static {p2, v4, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 249
    invoke-virtual {p0, p1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "isEnabled"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    return v4
.end method

.method protected isSectionHeader(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isSectionHeader"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "ret":Z
    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$2;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorSection:[I

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 504
    :pswitch_0
    const/4 v0, 0x1

    .line 505
    goto :goto_0

    .line 508
    :pswitch_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 509
    iget v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoritesStartIndex:I

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 513
    :pswitch_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 514
    iget v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearbyStartIndex:I

    if-ne p1, v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .prologue
    const-string v0, "refreshContent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 257
    .local v7, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    move-result-object v2

    .line 259
    .local v2, "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->shouldHideOrderingWarning(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v3

    .line 262
    .local v3, "hideOrderingWarning":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 266
    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsFavoritingWithoutMobileOrdering()Z

    move-result v4

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 267
    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsSelectionWithoutMobileOrdering()Z

    move-result v5

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 268
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v6

    move-object v1, p2

    .line 261
    invoke-static/range {v0 .. v6}, Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper;->configureStoreItem(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/app/storelocator/StoreItemViewState;ZZZLcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;)V

    .line 271
    invoke-virtual {p0, p1, p2, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->updateStoreItemData(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 272
    return-void
.end method

.method public setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setCurrentStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 167
    return-void
.end method

.method public setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V
    .locals 3
    .param p1, "dataProvider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .prologue
    const-string v0, "setDataProvider"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 428
    return-void
.end method

.method public setFavoriteStores(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v1, "setFavoriteStores"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    if-eqz p1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 184
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;Landroid/location/Location;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 420
    return-void
.end method

.method public setNearByStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nearByStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v0, "setNearByStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public setOffersOnly(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "offersOnlyMode"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setOffersOnly"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mOffersOnlyMode:Ljava/lang/Boolean;

    .line 171
    return-void
.end method

.method public storesUpdated()V
    .locals 7

    .prologue
    const-string v4, "storesUpdated"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->updateSections()V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mNearByStores:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->clear()V

    .line 133
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->addAll(Ljava/util/Collection;)V

    .line 135
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 138
    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 139
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v5

    .line 137
    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I

    move-result v1

    .line 142
    .local v1, "position":I
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 143
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 144
    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v6

    .line 142
    invoke-interface {v4, v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    move-result-object v2

    .line 147
    .local v2, "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->isExpandedState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isExpanded(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->expand(I)V

    .line 163
    .end local v1    # "position":I
    .end local v2    # "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    :cond_1
    :goto_0
    return-void

    .line 150
    .restart local v1    # "position":I
    .restart local v2    # "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->collapse(I)V

    goto :goto_0

    .line 157
    .end local v1    # "position":I
    .end local v2    # "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->collapse(I)V

    .line 157
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateStoreItemData(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    .param p3, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "updateStoreItemData"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-eq v3, v4, :cond_0

    .line 282
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOffersStatusIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 284
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOffersStatusIcon()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectMapPinResID(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    :cond_0
    :goto_0
    invoke-virtual {p2, p3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getSection(I)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->configureSectionHeader(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    .line 303
    :goto_1
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 305
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v3

    .line 306
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e005e

    .line 308
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 305
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreSubtitleLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreNickName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 327
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :goto_3
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_8

    .line 343
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreDistanceLabel()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :goto_4
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsIcon()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020190

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "dailyStoreHoursString":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->getCloseStatus(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "closeSting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 360
    move-object v1, v0

    .line 364
    .end local v0    # "closeSting":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 365
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_5
    return-void

    .line 286
    .end local v1    # "dailyStoreHoursString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOffersStatusIcon()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getMapPinResID(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 296
    :cond_4
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionHeader()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 316
    :cond_5
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreSubtitleLabel()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 320
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreSubtitleLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 331
    :cond_6
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 332
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 334
    :cond_7
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 347
    :cond_8
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "distance":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreDistanceLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreDistanceLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 367
    .end local v2    # "distance":Ljava/lang/String;
    .restart local v1    # "dailyStoreHoursString":Ljava/lang/String;
    :cond_9
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method
