.class public Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;,
        Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$ViewType;
    }
.end annotation


# instance fields
.field containsRemoveFromBasketView:Z

.field private final mAlertViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

.field private mContainsOfferSelector:Z

.field private mContainsOffersSubsectionHeader:Z

.field private mContainsSectionHeader:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrderOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

.field private final mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/home/dashboard/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeliveryOffers:Z

.field private mForceOfferTabSelection:Z

.field private mHomeListItemPointer:I

.field private mIsDeliveryOffers:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNearbyOffers:Z

.field private final mNoGPSViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

.field private final mNoOffersViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

.field private final mNoRestaurantsNearbyViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

.field private final mNoStoreViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

.field private mSelectorView:Landroid/view/View;

.field private final mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p3, "nearbyOffers"    # Z

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNearbyOffers:Z

    .line 128
    iput v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    .line 132
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v1, 0xa

    const-string v2, "NO_OFFERS"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoOffersViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 133
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v1, 0x10

    const-string v2, "NO_GPS"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoGPSViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 134
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v1, 0x11

    const-string v2, "NO_GPS"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoRestaurantsNearbyViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 135
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v1, 0x12

    const-string v2, "ALERT"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mAlertViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 136
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v1, 0x13

    const-string v2, "NO_STORE"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoStoreViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 694
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    .line 140
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 142
    iput-boolean p3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNearbyOffers:Z

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 145
    return-void
.end method

.method private findIndexForNewOffer(Z)I
    .locals 7
    .param p1, "isGridItem"    # Z

    .prologue
    const-string v3, "findIndexForNewOffer"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 569
    .local v1, "index":I
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 571
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 575
    .local v2, "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOffersGridItem(Lcom/mcdonalds/app/home/dashboard/DashboardItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 577
    :cond_0
    move v1, v0

    .line 601
    .end local v2    # "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 603
    return v1

    .line 575
    .restart local v2    # "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_2
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOffersListItem(Lcom/mcdonalds/app/home/dashboard/DashboardItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    :cond_3
    if-eqz p1, :cond_4

    .line 585
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 586
    move v1, v0

    .line 587
    goto :goto_1

    .line 592
    :cond_4
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 593
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    if-eqz v3, :cond_5

    .line 594
    move v1, v0

    .line 595
    goto :goto_1

    .line 569
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private isOfferAppliedToOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Z
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v2, "isOfferAppliedToOrder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    const/4 v1, 0x0

    .line 917
    .local v1, "isApplied":Z
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 918
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 919
    .local v0, "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    const/4 v1, 0x1

    goto :goto_0

    .line 924
    .end local v0    # "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    return v1
.end method

.method private isOffersGridItem(Lcom/mcdonalds/app/home/dashboard/DashboardItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isOffersGridItem"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 609
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 608
    :cond_1
    return v0
.end method

.method private isOffersListItem(Lcom/mcdonalds/app/home/dashboard/DashboardItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isOffersListItem"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 615
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 614
    :cond_1
    return v0
.end method


# virtual methods
.method public addAlertItem(Z)V
    .locals 8
    .param p1, "verified"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "addAlertItem"

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 760
    .local v2, "shouldVerifyEmail":Z
    if-eqz v2, :cond_1

    .line 761
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const-string v4, "config"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 762
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "email_verification_alert"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 763
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mAlertViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mAlertViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 766
    .local v0, "index":I
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 768
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 772
    .end local v0    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mAlertViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 773
    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 776
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const-string v1, "addHeaderView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-direct {v0, v3, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 752
    .local v0, "headerViewItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 754
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 755
    return-void
.end method

.method public addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 5
    .param p1, "homeListItem"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "addHomeListItem"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 781
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/app/home/HomeListItem;>;"
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iput v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 786
    iget v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 788
    iget v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mHomeListItemPointer:I

    .line 789
    return-void
.end method

.method public addNoGPSView()V
    .locals 3

    .prologue
    const-string v1, "addNoGPSView"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoGPSViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoGPSViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 450
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoGPSViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 452
    return-void
.end method

.method public addNoOffersView()V
    .locals 2

    .prologue
    const-string v0, "addNoOffersView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeNoOffersView()V

    .line 410
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoOffersViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 412
    return-void
.end method

.method public addNoRestaurantsNearbyView()V
    .locals 3

    .prologue
    const-string v1, "addNoRestaurantsNearbyView"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoRestaurantsNearbyViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoRestaurantsNearbyViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 459
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 464
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoRestaurantsNearbyViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 466
    return-void
.end method

.method public addNoSelectedStoreView(Z)V
    .locals 4
    .param p1, "isDeliveryOffers"    # Z

    .prologue
    const-string v0, "addNoSelectedStoreView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mIsDeliveryOffers:Z

    .line 427
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeNoSelectedStoreView()V

    .line 428
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoStoreViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 430
    return-void
.end method

.method public addNotSubscribedToOffersView()V
    .locals 4

    .prologue
    const-string v0, "addNotSubscribedToOffersView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v2, 0xc

    const-string v3, "Not subscribed"

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 394
    return-void
.end method

.method public addOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Z)V
    .locals 6
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "isGridItem"    # Z

    .prologue
    const-string v2, "addOffer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    if-eqz p2, :cond_2

    const/4 v2, 0x4

    :goto_0
    invoke-direct {v0, v2, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 548
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isFullPunchCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    :cond_0
    if-eqz p2, :cond_3

    const/16 v2, 0xd

    :goto_1
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->setViewType(I)V

    .line 556
    :cond_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->findIndexForNewOffer(Z)I

    move-result v1

    .line 558
    .local v1, "index":I
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 559
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 560
    return-void

    .line 543
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v1    # "index":I
    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    .line 549
    .restart local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_3
    const/16 v2, 0xe

    goto :goto_1
.end method

.method public addOfferSelectorView()V
    .locals 14

    .prologue
    const v13, 0x7f1104ad

    const/4 v12, 0x0

    const/4 v11, 0x1

    const v10, 0x7f1104ac

    const/16 v9, 0x8

    const-string v6, "addOfferSelectorView"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOfferSelector:Z

    if-nez v6, :cond_b

    .line 472
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040165

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    .line 473
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNearbyOffers:Z

    if-nez v6, :cond_0

    .line 474
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.showDeliveryOnlyTab"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 475
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 476
    .local v4, "radio":Landroid/widget/RadioButton;
    invoke-virtual {v4, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 488
    .end local v4    # "radio":Landroid/widget/RadioButton;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.showDeliveryOnlyTab"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 489
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.hidenearyouofferstab"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 495
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104ab

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104aa

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.showPickUpTab"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 501
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104ae

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.offersTextCurrentStore"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "tabName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 512
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 513
    invoke-static {v7, v5}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 512
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_4
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-direct {v0, v9, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 517
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 518
    .local v2, "index":I
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 521
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 522
    move v2, v1

    .line 520
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v5    # "tabName":Ljava/lang/String;
    :cond_6
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDeliveryOffers:Z

    if-eqz v6, :cond_7

    .line 480
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    const v7, 0x7f1104b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 484
    .local v3, "r":Landroid/widget/RadioButton;
    :goto_2
    invoke-virtual {v3, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 482
    .end local v3    # "r":Landroid/widget/RadioButton;
    :cond_7
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .restart local v3    # "r":Landroid/widget/RadioButton;
    goto :goto_2

    .line 526
    .end local v3    # "r":Landroid/widget/RadioButton;
    .restart local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v5    # "tabName":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 527
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_9

    .line 528
    move v2, v1

    .line 526
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 533
    .end local v1    # "i":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 534
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 535
    iput-boolean v11, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOfferSelector:Z

    .line 537
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 539
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    .end local v2    # "index":I
    .end local v5    # "tabName":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public addOffersSubsectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V
    .locals 8
    .param p1, "mcdListSectionHeaderModel"    # Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string v3, "addOffersSubsectionHeader"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-direct {v0, v7, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 811
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;>;"
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOffersSubsectionHeader:Z

    if-nez v3, :cond_1

    .line 812
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    iput-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOffersSubsectionHeader:Z

    .line 814
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 820
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 821
    .local v2, "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 822
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 823
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 824
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 819
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public addRemoveFromBasketView(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 7
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v6, 0x1

    const-string v3, "addRemoveFromBasketView"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    if-nez v3, :cond_2

    .line 700
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/16 v3, 0xf

    invoke-direct {v0, v3, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 701
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const/4 v2, 0x0

    .line 702
    .local v2, "index":I
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 706
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 707
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    move v2, v1

    .line 704
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 714
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 715
    iput-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    .line 717
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 719
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Z)V
    .locals 5
    .param p1, "mcdListSectionHeaderModel"    # Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    .param p2, "selector"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v1, "addSectionHeader"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 795
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;>;"
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsSectionHeader:Z

    if-nez v1, :cond_0

    .line 797
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsSectionHeader:Z

    .line 798
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    .line 801
    if-eqz p2, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addOfferSelectorView()V

    .line 805
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "clear"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsSectionHeader:Z

    .line 399
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOffersSubsectionHeader:Z

    .line 400
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOfferSelector:Z

    .line 401
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    .line 402
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemViewType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    const-string v4, "onBindViewHolder"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 257
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->getItemViewType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 378
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 264
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_1
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/HomeListItem;

    .line 264
    invoke-static {v5, p1, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;Lcom/mcdonalds/app/home/HomeListItem;)V

    goto :goto_0

    .line 273
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_2
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v4, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;)V

    goto :goto_0

    .line 278
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_3
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 278
    invoke-static {v5, p1, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V

    goto :goto_0

    .line 288
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_4
    iget-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mForceOfferTabSelection:Z

    if-eqz v4, :cond_0

    .line 289
    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNearbyOffers:Z

    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDeliveryOffers:Z

    invoke-static {p1, v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->forceTabSelection(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;ZZ)V

    .line 291
    iput-boolean v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mForceOfferTabSelection:Z

    goto :goto_0

    .line 297
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_5
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 298
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;

    .line 301
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOfferAppliedToOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 298
    invoke-static {p1, v1, v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->bind(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;ZLandroid/content/Context;)V

    goto :goto_0

    .line 309
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_6
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .local v0, "listItemOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    move-object v4, p1

    .line 310
    check-cast v4, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;

    .line 313
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOfferAppliedToOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {v4, v0, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->bind(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;ZLandroid/content/Context;)V

    .line 317
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "OtherOfferItemPressedPressed"

    invoke-static {v4, v5, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 324
    .end local v0    # "listItemOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :pswitch_7
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v4, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;)V

    goto/16 :goto_0

    .line 332
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_8
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v4, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;)V

    goto/16 :goto_0

    .line 340
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_9
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 341
    .local v2, "punchcardGridOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;

    .line 344
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOfferAppliedToOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v5

    .line 341
    invoke-static {v4, p1, v2, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;Z)V

    goto/16 :goto_0

    .line 351
    .end local v2    # "punchcardGridOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_a
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 352
    .local v3, "punchcardListOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;

    .line 356
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->isOfferAppliedToOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v6

    .line 352
    invoke-static {v5, v4, v3, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;Z)V

    .line 359
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "OtherOfferItemPressedPressed"

    invoke-static {v4, v5, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 365
    .end local v3    # "punchcardListOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :pswitch_b
    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 365
    invoke-static {p1, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->bind(Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    goto/16 :goto_0

    .line 373
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_c
    check-cast p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mIsDeliveryOffers:Z

    invoke-static {p1, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;->bind(Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;Z)V

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "onCreateViewHolder"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v5

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    packed-switch p2, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-object v3

    .line 191
    :pswitch_1
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/HeaderPagerViewHolder;

    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/HeaderPagerViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    .restart local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 195
    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 198
    goto :goto_0

    .line 200
    :pswitch_4
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 201
    goto :goto_0

    .line 203
    :pswitch_5
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mSelectorView:Landroid/view/View;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->create(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 204
    goto :goto_0

    .line 206
    :pswitch_6
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->create(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 207
    goto :goto_0

    .line 209
    :pswitch_7
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->create(Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 210
    goto :goto_0

    .line 212
    :pswitch_8
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/ProgressBarViewHolder;

    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/ProgressBarViewHolder;-><init>(Landroid/view/View;)V

    .line 213
    .restart local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0

    .line 215
    :pswitch_9
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 216
    goto :goto_0

    .line 218
    :pswitch_a
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 219
    goto :goto_0

    .line 221
    :pswitch_b
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoGPSViewHolder;->create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 222
    goto :goto_0

    .line 224
    :pswitch_c
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->create(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 225
    goto/16 :goto_0

    .line 227
    :pswitch_d
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->create(Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 228
    goto/16 :goto_0

    .line 230
    :pswitch_e
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;

    move-result-object v3

    .line 231
    goto/16 :goto_0

    .line 233
    :pswitch_f
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoRestaurantsNearbyViewHolder;->create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_10
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 237
    .local v0, "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 238
    .local v1, "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 239
    .local v2, "phoneVerification":Ljava/lang/Boolean;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    .line 241
    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v6

    if-ne v6, v9, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 244
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/lang/Boolean;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 245
    goto/16 :goto_0

    .line 247
    .end local v0    # "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v2    # "phoneVerification":Ljava/lang/Boolean;
    :pswitch_11
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-static {v4, v5}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public removeAlertView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "removeAlertView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 745
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 747
    :cond_0
    return-void
.end method

.method public removeAllOffers(Z)V
    .locals 10
    .param p1, "removeHeader"    # Z

    .prologue
    const/4 v9, 0x0

    const-string v6, "removeAllOffers"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    const/4 v3, -0x1

    .line 627
    .local v3, "offersStartIndex":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v0, "dashboardItemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/home/dashboard/DashboardItem;>;"
    const/4 v4, 0x0

    .line 629
    .local v4, "selectorToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    const/4 v1, 0x0

    .line 630
    .local v1, "headerToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    const/4 v5, 0x0

    .line 632
    .local v5, "subsectionHeaderToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 634
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v6, :cond_2

    .line 636
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 637
    move v3, v2

    .line 640
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    if-eqz v6, :cond_4

    .line 644
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0907e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    invoke-virtual {v6}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 647
    if-eqz p1, :cond_1

    .line 648
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headerToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    check-cast v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 649
    .restart local v1    # "headerToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    iput-boolean v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsSectionHeader:Z

    goto :goto_1

    .line 655
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "subsectionHeaderToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    check-cast v5, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 656
    .restart local v5    # "subsectionHeaderToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    iput-boolean v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOffersSubsectionHeader:Z

    goto :goto_1

    .line 659
    :cond_4
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 660
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 662
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "selectorToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    check-cast v4, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 663
    .restart local v4    # "selectorToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    iput-boolean v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContainsOfferSelector:Z

    goto :goto_1

    .line 665
    :cond_5
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 666
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v6}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeRemoveFromBasketView()V

    goto/16 :goto_1

    .line 672
    :cond_6
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    if-eqz p1, :cond_9

    .line 677
    if-eqz v1, :cond_7

    .line 678
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    :cond_7
    if-eqz v4, :cond_8

    .line 682
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    :cond_8
    if-eqz v5, :cond_9

    .line 686
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 691
    :cond_9
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 692
    return-void
.end method

.method public removeAppliedOfferBadge(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 9
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const-string v6, "removeAppliedOfferBadge"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    const/4 v2, 0x0

    .line 931
    .local v2, "dashboardItemToUpdate":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const/4 v3, -0x1

    .line 932
    .local v3, "dashboardItemToUpdateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 934
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 936
    .local v1, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v6, :cond_0

    .line 937
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 938
    move-object v2, v1

    .line 939
    move v3, v4

    .line 932
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 943
    .end local v1    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_1
    const/4 v5, -0x1

    .line 944
    .local v5, "indexToRemove":I
    if-eqz v2, :cond_4

    .line 945
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 946
    .local v0, "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 947
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    .line 951
    .end local v0    # "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 952
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 953
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    .line 956
    :cond_4
    return-void
.end method

.method public removeNoOffersView()V
    .locals 3

    .prologue
    const-string v1, "removeNoOffersView"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoOffersViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoOffersViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 419
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 423
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public removeNoSelectedStoreView()V
    .locals 3

    .prologue
    const-string v1, "removeNoSelectedStoreView"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoStoreViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mNoStoreViewItem:Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 435
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 436
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 438
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public removeRemoveFromBasketView()V
    .locals 4

    .prologue
    const-string v2, "removeRemoveFromBasketView"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    const/4 v1, -0x1

    .line 724
    .local v1, "index":I
    iget-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    if-eqz v2, :cond_2

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 729
    move v1, v0

    .line 726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 735
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 736
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->containsRemoveFromBasketView:Z

    .line 737
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 740
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setCurrentOrderOffers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "currentOrderOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const-string v0, "setCurrentOrderOffers"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mCurrentOrderOffers:Ljava/util/List;

    .line 913
    return-void
.end method

.method public setCurrentStoreSubtitle(Ljava/lang/String;)V
    .locals 5
    .param p1, "currentStoreName"    # Ljava/lang/String;

    .prologue
    const-string v1, "setCurrentStoreSubtitle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 177
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/home/HomeListItem;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListItem;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090385

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListItem;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/home/HomeListItem;->setSubTitle(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 184
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_1
    return-void
.end method

.method public setDashboardListener(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V
    .locals 3
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .prologue
    const-string v0, "setDashboardListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .line 833
    return-void
.end method

.method public setLoginState(Z)V
    .locals 9
    .param p1, "isLoggedIn"    # Z

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const-string v4, "setLoginState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    if-eqz p1, :cond_3

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "dashboardItemToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    const/4 v3, 0x0

    .line 153
    .local v3, "indexOfRemovedItem":I
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 155
    .local v0, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 156
    move-object v2, v0

    .line 157
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 161
    .end local v0    # "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_1
    if-eqz v2, :cond_2

    .line 162
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 173
    .end local v2    # "dashboardItemToRemove":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    .end local v3    # "indexOfRemovedItem":I
    :cond_2
    :goto_1
    return-void

    .line 167
    :cond_3
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v8, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 168
    .local v1, "dashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemInserted(I)V

    goto :goto_1
.end method

.method public setOfferTabSelection(Z)V
    .locals 5
    .param p1, "deliveryOffers"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "setOfferTabSelection"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDeliveryOffers:Z

    .line 960
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mForceOfferTabSelection:Z

    .line 961
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 962
    return-void
.end method

.method public showProgressSpinner(Z)V
    .locals 13
    .param p1, "shouldShow"    # Z

    .prologue
    const/16 v12, 0xb

    const-string v8, "showProgressSpinner"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040182

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 839
    .local v7, "progressBarView":Landroid/view/View;
    new-instance v5, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-direct {v5, v12, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;-><init>(ILjava/lang/Object;)V

    .line 840
    .local v5, "progressBarDashboardItem":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 842
    .local v6, "progressBarDisplayed":Z
    const/4 v0, 0x0

    .line 843
    .local v0, "index":I
    const/4 v4, 0x0

    .line 844
    .local v4, "notSubscribedItemIndex":I
    const/4 v3, 0x0

    .line 845
    .local v3, "noOffersItemIndex":I
    const/4 v2, 0x0

    .line 847
    .local v2, "noGpsItemIndex":I
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 849
    .local v1, "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getViewType()I

    move-result v9

    if-ne v9, v12, :cond_3

    .line 851
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 853
    if-nez p1, :cond_2

    .line 855
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 856
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 905
    .end local v1    # "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_1
    :goto_1
    return-void

    .line 861
    .restart local v1    # "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Not subscribed"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 865
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "NO_OFFERS"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 869
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 871
    :cond_5
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "NO_GPS"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 873
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 877
    .end local v1    # "item":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    :cond_6
    if-nez v6, :cond_a

    if-eqz p1, :cond_a

    .line 879
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    if-eqz v4, :cond_7

    .line 882
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 883
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 886
    :cond_7
    if-eqz v3, :cond_8

    .line 888
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 889
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 892
    :cond_8
    if-eqz v2, :cond_9

    .line 894
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 895
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    .line 898
    :cond_9
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 900
    :cond_a
    if-eqz v4, :cond_1

    .line 902
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 903
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->notifyItemRemoved(I)V

    goto :goto_1
.end method
