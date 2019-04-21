.class public Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;
.super Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.source "StoreLocatorPagerListAdapter.java"


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
.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mExpandRetryCount:I

.field private mIsOffer:Z

.field private mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mOffersOnlyMode:Z

.field private mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v2, 0x7f04011b

    const v3, 0x7f1103f2

    const v4, 0x7f1103f3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;-><init>(Landroid/content/Context;IIILjava/util/List;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mOffersOnlyMode:Z

    .line 43
    return-void
.end method

.method private retryExpand(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const-string v1, "retryExpand"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mExpandRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mExpandRetryCount:I

    .line 130
    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mExpandRetryCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 132
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 139
    :cond_0
    iput v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mExpandRetryCount:I

    goto :goto_0
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

    .line 283
    const/4 v0, 0x1

    .line 284
    .local v0, "shouldHide":Z
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 287
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 285
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const-string v0, "areAllItemsEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
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

    .line 95
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;-><init>()V

    return-object v0
.end method

.method public expand(I)V
    .locals 10
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

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 106
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 107
    .local v1, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    move-result-object v2

    .line 108
    .local v2, "expandedState":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->shouldHideOrderingWarning(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v3

    .line 111
    .local v3, "hideOrderingWarning":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 115
    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsFavoritingWithoutMobileOrdering()Z

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 116
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsSelectionWithoutMobileOrdering()Z

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 117
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v6, v8, v9}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v6

    .line 110
    invoke-static/range {v0 .. v6}, Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper;->configureStoreItem(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/app/storelocator/StoreItemViewState;ZZZLcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;)V

    .line 120
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->expand(I)V

    .line 125
    .end local v1    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    .end local v2    # "expandedState":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .end local v3    # "hideOrderingWarning":Z
    .end local v7    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->retryExpand(I)V

    goto :goto_0
.end method

.method public getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const-string v1, "getContentView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04011a

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-object p2
.end method

.method public getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const-string v1, "getTitleView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04011c

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 160
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 161
    .local v3, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    if-nez v3, :cond_0

    .line 162
    const-string v5, "ViewHolder missing in StoreLocator List getView"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    move-object v2, v4

    .line 229
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    invoke-static {v2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v5, "getView"

    invoke-static {p0, v5}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v2

    .line 165
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->populateFromView(Landroid/view/View;)V

    .line 166
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 168
    const-class v5, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    invoke-static {p2, v5, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 170
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 171
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 172
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSectionHeader()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 175
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreSubtitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreNickName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 189
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 199
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_2
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreDistanceLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsIcon()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f02018c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "dailyStoreHoursString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 211
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_3
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->isCurrentStoreSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f090130

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 218
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getChooseAnotherLocation()Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f090182

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 223
    :cond_3
    iget-boolean v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mOffersOnlyMode:Z

    if-eqz v5, :cond_4

    .line 224
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "dailyStoreHoursString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreTitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 183
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreSubtitleLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 191
    :cond_6
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 192
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 194
    :cond_7
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 213
    .restart local v0    # "dailyStoreHoursString":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
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

    .line 276
    return v4
.end method

.method public refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .prologue
    const/4 v8, 0x0

    const-string v0, "refreshContent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v8

    const/4 v4, 0x1

    aput-object p2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    move-result-object v2

    .line 236
    .local v2, "expandedState":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->shouldHideOrderingWarning(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v3

    .line 238
    .local v3, "hideOrderingWarning":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 242
    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsFavoritingWithoutMobileOrdering()Z

    move-result v4

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 243
    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->allowsSelectionWithoutMobileOrdering()Z

    move-result v5

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 244
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v1, v6, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v6

    move-object v1, p2

    .line 237
    invoke-static/range {v0 .. v6}, Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper;->configureStoreItem(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/app/storelocator/StoreItemViewState;ZZZLcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;)V

    .line 263
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOffersStatusIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getStoreHoursLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
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

    .line 46
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    instance-of v0, v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mIsOffer:Z

    .line 48
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

    .line 51
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 52
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

    .line 151
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mOffersOnlyMode:Z

    .line 152
    return-void
.end method

.method public setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "setSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 68
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 60
    return-void
.end method

.method public storesUpdated()V
    .locals 2

    .prologue
    const-string v0, "storesUpdated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->clear()V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->add(Ljava/lang/Object;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerListAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method
