.class public Lcom/mcdonalds/app/home/HomeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;,
        Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;,
        Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;,
        Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;,
        Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;,
        Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final OFFERS_COLUMNS:I

.field private mAppliedOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasOffers:Z

.field private mHomeListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/HomeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

.field private mLocationDisabled:Ljava/lang/Boolean;

.field private mLoggedIn:Z

.field private mNoOffersView:Landroid/view/View;

.field private mNotLoggedInView:Landroid/view/View;

.field private mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

.field private mOfferItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshing:Ljava/lang/Boolean;

.field private mSelectedOffersTypeID:I

.field private mSubscribedToOffers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/ui/URLNavigationFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/mcdonalds/app/ui/URLNavigationFragment;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->OFFERS_COLUMNS:I

    .line 65
    iput-boolean v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mRefreshing:Ljava/lang/Boolean;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLocationDisabled:Ljava/lang/Boolean;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSelectedOffersTypeID:I

    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    .line 81
    check-cast p2, Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

    .end local p2    # "fragment":Lcom/mcdonalds/app/ui/URLNavigationFragment;
    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mListener:Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

    .line 82
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNotLoggedInView:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-direct {v0}, Lcom/mcdonalds/app/home/HomeListObservable;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/home/HomeListAdapter;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/home/HomeListAdapter;)Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mListener:Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/home/HomeListAdapter;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iput p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSelectedOffersTypeID:I

    return p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/home/HomeListAdapter;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/home/HomeListAdapter;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mRefreshing:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/home/HomeListAdapter;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHasOffers:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/home/HomeListAdapter;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeListAdapter"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSubscribedToOffers:Z

    return v0
.end method

.method private getAppliedOfferView(ILandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const-string v1, "getAppliedOfferView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 314
    new-instance v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V

    .line 315
    .local v0, "appliedOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    :goto_0
    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodSubtitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f09034b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mRemoveFromBasket:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/home/HomeListAdapter$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$1;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    .line 332
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 333
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 334
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 337
    :cond_1
    return-object p2

    .line 317
    .end local v0    # "appliedOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;

    .restart local v0    # "appliedOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;
    goto/16 :goto_0
.end method

.method private getHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v3, "getHeaderView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    move-object v0, p2

    .line 404
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040187

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    .line 407
    .local v1, "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    const v3, 0x7f1100bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    .line 408
    const v3, 0x7f11050e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 414
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 415
    .local v2, "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 416
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->isImageVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getImageResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 429
    :goto_2
    return-object v0

    .line 411
    .end local v1    # "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    .end local v2    # "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;

    .restart local v1    # "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    goto :goto_0

    .line 419
    .restart local v2    # "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    :cond_2
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getHomeItemView(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const-string v3, "getHomeItemView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    move-object v2, p2

    .line 344
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 345
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0401a2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 346
    new-instance v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V

    .line 347
    .local v0, "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListItem;

    .line 353
    .local v1, "item":Lcom/mcdonalds/app/home/HomeListItem;
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getIconImageResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcdmobileapp://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02024f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    :goto_1
    return-object v2

    .line 349
    .end local v0    # "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    .end local v1    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;

    .restart local v0    # "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    goto :goto_0

    .line 361
    .restart local v1    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_1
    iget-object v3, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private getNoOffersView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "getNoOffersView"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    if-nez v2, :cond_1

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040045

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    .line 580
    new-instance v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    invoke-direct {v0, p0, v2}, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V

    .line 581
    .local v0, "noOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;
    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 588
    :goto_0
    new-instance v1, Lcom/mcdonalds/app/home/HomeListAdapter$6;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/home/HomeListAdapter$6;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;)V

    .line 609
    .local v1, "observer":Ljava/util/Observer;
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListObservable;->deleteObservers()V

    .line 610
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/home/HomeListObservable;->addObserver(Ljava/util/Observer;)V

    .line 611
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    return-object v2

    .line 585
    .end local v0    # "noOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;
    .end local v1    # "observer":Ljava/util/Observer;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    .restart local v0    # "noOfferViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;
    goto :goto_0
.end method

.method private getNotSignedInView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v5, "getNotSignedInView"

    invoke-static {p0, v5, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040191

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 616
    .local v1, "notSignedInView":Landroid/view/View;
    const v5, 0x7f11011e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 617
    .local v2, "registerPrompt":Landroid/widget/TextView;
    const v5, 0x7f110518

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 618
    .local v3, "registerTextView":Landroid/widget/TextView;
    const v5, 0x7f110517

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 620
    .local v4, "signInTextView":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.dashboard.offersTextGuest"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    .local v0, "guestTextKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    new-instance v5, Lcom/mcdonalds/app/home/HomeListAdapter$7;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$7;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    new-instance v5, Lcom/mcdonalds/app/home/HomeListAdapter$8;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$8;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    return-object v1
.end method

.method private getOfferGridRowView(ILandroid/view/View;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const-string v12, "getOfferGridRowView"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p2, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    move-object/from16 v10, p2

    .line 477
    .local v10, "offerRowView":Landroid/view/View;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;

    if-nez v12, :cond_3

    .line 478
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 479
    .local v8, "offerGridRowLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v9, v12, v13}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 481
    .local v9, "offerGridRowLayoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    const/4 v12, 0x2

    new-array v7, v12, [Landroid/view/View;

    .line 484
    .local v7, "offerGridItems":[Landroid/view/View;
    const/4 v12, 0x2

    new-array v11, v12, [Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;

    .line 486
    .local v11, "offerViewHolders":[Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v12, 0x2

    if-ge v2, v12, :cond_1

    .line 487
    new-instance v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    aput-object v12, v11, v2

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040161

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    aput-object v12, v7, v2

    .line 489
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v12

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v1, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 490
    .local v1, "gridParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v5

    .line 491
    .local v5, "margin":I
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 492
    aget-object v12, v7, v2

    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    aget-object v13, v11, v2

    aget-object v12, v7, v2

    const v14, 0x7f110136

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    .line 495
    aget-object v13, v11, v2

    aget-object v12, v7, v2

    const v14, 0x7f110437

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodSubtitleTextView:Landroid/widget/TextView;

    .line 496
    aget-object v13, v11, v2

    aget-object v12, v7, v2

    const v14, 0x7f110063

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 497
    aget-object v13, v11, v2

    aget-object v12, v7, v2

    const v14, 0x7f110424

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mGridItem:Landroid/widget/LinearLayout;

    .line 498
    aget-object v13, v11, v2

    aget-object v12, v7, v2

    const v14, 0x7f1104a4

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    .line 499
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mGridItem:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    aget-object v12, v7, v2

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 504
    .end local v1    # "gridParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "margin":I
    :cond_1
    move-object v10, v8

    .line 505
    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    .end local v2    # "i":I
    .end local v7    # "offerGridItems":[Landroid/view/View;
    .end local v8    # "offerGridRowLayout":Landroid/widget/LinearLayout;
    .end local v9    # "offerGridRowLayoutParams":Landroid/widget/AbsListView$LayoutParams;
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/4 v12, 0x2

    if-ge v2, v12, :cond_4

    .line 511
    invoke-virtual/range {p0 .. p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/widget/offers/GridRowModel;

    .line 512
    .local v4, "item":Lcom/mcdonalds/app/widget/offers/GridRowModel;
    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/offers/GridRowModel;->getOffers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 513
    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/offers/GridRowModel;->getOffers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 515
    .local v6, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    if-eqz v6, :cond_2

    .line 516
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSubtitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f09034b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mGridItem:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v12

    .line 523
    invoke-virtual {v12, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v12

    sget-object v13, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 524
    invoke-virtual {v12, v13}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v12

    const v13, 0x7f02024f

    .line 525
    invoke-virtual {v12, v13}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v12

    aget-object v13, v11, v2

    iget-object v13, v13, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 526
    invoke-virtual {v12, v13}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 528
    aget-object v12, v11, v2

    iget-object v12, v12, Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;->mGridItem:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/mcdonalds/app/home/HomeListAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/mcdonalds/app/home/HomeListAdapter$4;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Lcom/mcdonalds/sdk/modules/models/Offer;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    .end local v3    # "imageUrl":Ljava/lang/String;
    .end local v6    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 507
    .end local v2    # "i":I
    .end local v4    # "item":Lcom/mcdonalds/app/widget/offers/GridRowModel;
    .end local v11    # "offerViewHolders":[Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;

    move-object v11, v12

    check-cast v11, [Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;

    .restart local v11    # "offerViewHolders":[Lcom/mcdonalds/app/home/HomeListAdapter$OfferViewHolder;
    goto/16 :goto_1

    .line 537
    .restart local v2    # "i":I
    :cond_4
    return-object v10
.end method

.method private getOfferListRowView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const-string v4, "getOfferListRowView"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    move-object v3, p2

    .line 544
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 545
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040162

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 546
    new-instance v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V

    .line 547
    .local v0, "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    const v4, 0x7f1104a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 548
    const v4, 0x7f1104a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 549
    const v4, 0x7f1104a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 554
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/offers/ListRowModel;

    .line 555
    .local v2, "item":Lcom/mcdonalds/app/widget/offers/ListRowModel;
    iget-object v4, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/ListRowModel;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v4, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f09034b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/ListRowModel;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/ListRowModel;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "imageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 560
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 561
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    const v5, 0x7f02024f

    .line 562
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 563
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 565
    new-instance v4, Lcom/mcdonalds/app/home/HomeListAdapter$5;

    invoke-direct {v4, p0, v2}, Lcom/mcdonalds/app/home/HomeListAdapter$5;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;Lcom/mcdonalds/app/widget/offers/ListRowModel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 573
    return-object v3

    .line 551
    .end local v0    # "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "item":Lcom/mcdonalds/app/widget/offers/ListRowModel;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;

    .restart local v0    # "homeItemViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
    goto :goto_0
.end method

.method private getOfferSelectorView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v3, "getOfferSelectorView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    if-nez p2, :cond_0

    .line 434
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040165

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 437
    :cond_0
    const v3, 0x7f1104a9

    .line 438
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 440
    .local v1, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 441
    iget v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSelectedOffersTypeID:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 442
    iget v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSelectedOffersTypeID:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 443
    :cond_1
    new-instance v3, Lcom/mcdonalds/app/home/HomeListAdapter$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$2;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 451
    const v3, 0x7f1104b1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 452
    .local v0, "locationPanel":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLocationDisabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    const v3, 0x7f1104b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 458
    .local v2, "settingsButton":Landroid/widget/Button;
    new-instance v3, Lcom/mcdonalds/app/home/HomeListAdapter$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$3;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    .end local v2    # "settingsButton":Landroid/widget/Button;
    :goto_0
    return-object p2

    .line 466
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private getOffersHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v3, "getOffersHeaderView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    move-object v0, p2

    .line 371
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040187

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;-><init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V

    .line 374
    .local v1, "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    const v3, 0x7f1100bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    .line 375
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 376
    const v3, 0x7f11050e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 382
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 383
    .local v2, "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->isImageVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getImageResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 397
    :goto_2
    return-object v0

    .line 379
    .end local v1    # "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    .end local v2    # "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;

    .restart local v1    # "headerViewHolder":Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
    goto :goto_0

    .line 387
    .restart local v2    # "item":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    :cond_2
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v3, v1, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public addAppliedOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 3
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const-string v0, "addAppliedOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 3
    .param p1, "homeListItem"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const-string v0, "addHomeListItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public addListOffers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v1, "addListOffers"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    if-eqz p1, :cond_0

    .line 650
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 651
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    new-instance v3, Lcom/mcdonalds/app/widget/offers/ListRowModel;

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/widget/offers/ListRowModel;-><init>(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    return-void
.end method

.method public addOffersGridSection(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "section":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v0, "addOffersGridSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->initRowList(Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public addOffersListSection(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Ljava/util/List;)V
    .locals 3
    .param p1, "sectionHeaderModel"    # Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "section":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v0, "addOffersListSection"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->addListOffers(Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public addOffersTypeSelector()V
    .locals 2

    .prologue
    const-string v0, "addOffersTypeSelector"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/app/widget/offers/SelectorRowModel;

    invoke-direct {v1}, Lcom/mcdonalds/app/widget/offers/SelectorRowModel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V
    .locals 3
    .param p1, "sectionHeaderModel"    # Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .prologue
    const-string v0, "addSectionHeader"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public clearAppliedOffers()V
    .locals 2

    .prologue
    const-string v0, "clearAppliedOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    return-void
.end method

.method public clearOffers()V
    .locals 2

    .prologue
    const-string v0, "clearOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const-string v2, "getCount"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    .local v0, "count":I
    iget-boolean v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 233
    .local v1, "hasAppliedOffers":Z
    :goto_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v2, :cond_3

    .line 235
    iget-boolean v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHasOffers:Z

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 238
    if-eqz v1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_0
    :goto_1
    return v0

    .line 231
    .end local v1    # "hasAppliedOffers":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    .restart local v1    # "hasAppliedOffers":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getHomeListItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/HomeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getHomeListItems"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "getItem"

    new-array v4, v0, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    .local v0, "hasAppliedOffers":Z
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 257
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 274
    :goto_1
    return-object v2

    .end local v0    # "hasAppliedOffers":Z
    :cond_0
    move v0, v2

    .line 254
    goto :goto_0

    .line 259
    .restart local v0    # "hasAppliedOffers":Z
    :cond_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v3, :cond_5

    .line 260
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHasOffers:Z

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, p1, v3

    .line 262
    .local v1, "index":I
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 263
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 265
    :cond_2
    if-eqz v0, :cond_3

    .line 266
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 268
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 271
    .end local v1    # "index":I
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNoOffersView:Landroid/view/View;

    goto :goto_1

    .line 274
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mNotLoggedInView:Landroid/view/View;

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, "getItemViewType"

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 175
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mAppliedOffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v5

    .line 176
    .local v1, "hasAppliedOffers":Z
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int v0, v6, v7

    .line 177
    .local v0, "appliedOffersIndex":I
    const/4 v4, 0x0

    .line 178
    .local v4, "ret":I
    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 179
    const/4 v4, 0x0

    .line 213
    :goto_0
    return v4

    .line 181
    :cond_1
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    if-eqz v6, :cond_5

    .line 182
    if-eqz v1, :cond_2

    if-lt p1, v0, :cond_2

    .line 183
    const/4 v4, 0x4

    goto :goto_0

    .line 185
    :cond_2
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHasOffers:Z

    if-eqz v6, :cond_4

    .line 187
    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v2, p1, v6

    .line 188
    .local v2, "index":I
    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;

    .line 189
    .local v3, "model":Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
    sget-object v6, Lcom/mcdonalds/app/home/HomeListAdapter$9;->$SwitchMap$com$mcdonalds$app$widget$offers$OfferHomeItemModel$RowType:[I

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;->getItemType()Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    if-nez v2, :cond_3

    move v4, v5

    .line 193
    :goto_1
    goto :goto_0

    .line 191
    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    .line 195
    :pswitch_1
    const/4 v4, 0x6

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    const/4 v4, 0x2

    .line 199
    goto :goto_0

    .line 201
    :pswitch_3
    const/4 v4, 0x5

    goto :goto_0

    .line 205
    .end local v2    # "index":I
    .end local v3    # "model":Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
    :cond_4
    const/16 v4, 0x8

    goto :goto_0

    .line 209
    :cond_5
    const/4 v4, 0x7

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 306
    :goto_0
    invoke-static {v0, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v0

    .line 288
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getHomeItemView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getOffersHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getOfferGridRowView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getAppliedOfferView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getOfferListRowView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeListAdapter;->getOfferSelectorView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_7
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeListAdapter;->getNotSignedInView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_8
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeListAdapter;->getNoOffersView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/16 v0, 0x9

    return v0
.end method

.method public initRowList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v1, "initRowList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 640
    add-int/lit8 v1, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 641
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    new-instance v2, Lcom/mcdonalds/app/widget/offers/GridRowModel;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/widget/offers/GridRowModel;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    new-instance v2, Lcom/mcdonalds/app/widget/offers/GridRowModel;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/widget/offers/GridRowModel;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 646
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "isEmpty"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isEnabled"

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 165
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 170
    :pswitch_0
    return v0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeHomeListItem(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const-string v2, "removeHomeListItem"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v1, "homeListItemCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListItem;

    .line 146
    .local v0, "homeListItem":Lcom/mcdonalds/app/home/HomeListItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHomeListItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0    # "homeListItem":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_1
    return-void
.end method

.method public setHasOffers(Z)V
    .locals 5
    .param p1, "hasOffers"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "setHasOffers"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mOfferItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mHasOffers:Z

    .line 663
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListObservable;->setChanged()V

    .line 664
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListObservable;->notifyObservers()V

    .line 665
    return-void

    :cond_0
    move v0, v1

    .line 662
    goto :goto_0
.end method

.method public setLocationDisabled(Z)V
    .locals 4
    .param p1, "locationDisabled"    # Z

    .prologue
    const-string v0, "setLocationDisabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLocationDisabled:Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 4
    .param p1, "loggedIn"    # Z

    .prologue
    const-string v0, "setLoggedIn"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mLoggedIn:Z

    .line 658
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    .line 659
    return-void
.end method

.method public setOffersTypeSelectorSelected(I)V
    .locals 4
    .param p1, "ID"    # I

    .prologue
    const-string v0, "setOffersTypeSelectorSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iput p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSelectedOffersTypeID:I

    .line 128
    return-void
.end method

.method public setRefreshing(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "refreshing"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setRefreshing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mRefreshing:Ljava/lang/Boolean;

    .line 669
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListObservable;->setChanged()V

    .line 670
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mObservable:Lcom/mcdonalds/app/home/HomeListObservable;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListObservable;->notifyObservers()V

    .line 671
    return-void
.end method

.method public setSubscribedToOffers(Z)V
    .locals 4
    .param p1, "subscribedToOffers"    # Z

    .prologue
    const-string v0, "setSubscribedToOffers"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter;->mSubscribedToOffers:Z

    .line 95
    return-void
.end method
