.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;
.super Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;
.source "MenuGridExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter",
        "<",
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;",
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private filterFlag:Z

.field private mCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesExpandable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCountExp:I

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOfferCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;

.field private mRecipeMapExpandable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;-><init>()V

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mFavoriteCodes:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOfferCodes:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;)Ljava/util/Map;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mRecipeMapExpandable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    return-void
.end method

.method private checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "checkOrderMtd"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    .line 273
    .local v0, "isDeliveryOrder":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 274
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 274
    goto :goto_0
.end method

.method private loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f02017e

    const/4 v3, 0x0

    const-string v1, "loadImage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    :try_start_0
    const-string v1, "utf8"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/util/AppUtils;->stringByAddingPercentEscapesUsingEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "escapedImageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 287
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 289
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 290
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "escapedImageUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "categoryId"    # I

    .prologue
    const-string v0, "onMenuGridItemSelected"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;->onMenuGridItemClicked(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchEvents()V
    .locals 5

    .prologue
    const-string v1, "dispatchEvents"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "category":Ljava/lang/String;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v4, "/order"

    .line 223
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "On Scroll"

    .line 225
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 230
    .end local v0    # "category":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 231
    return-void
.end method

.method public getSpan(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const-string v2, "getSpan"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->getItemViewType(I)I

    move-result v0

    .line 153
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    .line 154
    const/4 v1, 0x2

    .line 156
    :cond_0
    return v1
.end method

.method public onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;ILjava/lang/Object;)V
    .locals 7
    .param p1, "childViewHolder"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;
    .param p2, "position"    # I
    .param p3, "childListItem"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v1, "onBindChildViewHolder"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p3

    .line 94
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 95
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/ordering/AdvertisableMenuUtils;->setItemTitle(Landroid/content/Context;Landroid/widget/TextView;Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 96
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 100
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;Lcom/mcdonalds/sdk/modules/models/Product;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/AdvertisableMenuUtils;->isFavorite(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->favorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOfferCodes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->offer:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_1
    return-void

    .line 125
    :cond_0
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->favorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->offer:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;ILjava/lang/Object;)V
    .locals 4

    .prologue
    const-string v0, "onBindChildViewHolder"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    check-cast p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public onBindParentViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;)V
    .locals 5
    .param p1, "parentViewHolder"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;
    .param p2, "position"    # I
    .param p3, "parentListItem"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .prologue
    const/4 v4, 0x0

    const-string v0, "onBindParentViewHolder"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getChildItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->mParentImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 89
    iget-object v0, p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->itemView:Landroid/view/View;

    const-string v1, "ProductSectionButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onBindParentViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;)V
    .locals 4

    .prologue
    const-string v0, "onBindParentViewHolder"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    check-cast p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onBindParentViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;)V

    return-void
.end method

.method public onCreateChildViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;
    .locals 4
    .param p1, "childViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateChildViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;
    .locals 3

    .prologue
    const-string v0, "onCreateChildViewHolder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onCreateChildViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateParentViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;
    .locals 4
    .param p1, "parentViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040188

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateParentViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;
    .locals 3

    .prologue
    const-string v0, "onCreateParentViewHolder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onCreateParentViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public refreshOffersFlags(Ljava/util/List;)V
    .locals 10
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
    const-string v5, "refreshOffersFlags"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOfferCodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 246
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    invoke-static {v0}, Lcom/mcdonalds/app/util/OfferUtils;->checkStore(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    if-eqz v4, :cond_0

    .line 251
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 252
    .local v1, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    if-eqz v3, :cond_1

    .line 254
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 255
    .local v2, "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOfferCodes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v2    # "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .end local v3    # "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    .end local v4    # "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->notifyDataSetChanged()V

    .line 263
    return-void
.end method

.method public setFilterFlag(Z)V
    .locals 4
    .param p1, "filterFlag"    # Z

    .prologue
    const-string v0, "setFilterFlag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->filterFlag:Z

    .line 303
    return-void
.end method

.method public setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;)V
    .locals 3
    .param p1, "onMenuGridItemClickListener"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;

    .prologue
    const-string v0, "setOnMenuGridItemClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;

    .line 149
    return-void
.end method

.method public setProductMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v4, 0x0

    const-string v2, "setProductMap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    .line 161
    iput v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCount:I

    .line 163
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCategories:Landroid/util/SparseArray;

    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 166
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 168
    .local v1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCategories:Landroid/util/SparseArray;

    iget v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCount:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    iget v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCount:I

    goto :goto_0

    .line 173
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v1    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setProductMapExpandable(Ljava/util/Map;)V

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

.method public setProductMapExpandable(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v8, 0x0

    const-string v5, "setProductMapExpandable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mRecipeMapExpandable:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 181
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mRecipeMapExpandable:Ljava/util/Map;

    .line 184
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "categoryExpandablesList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 187
    .local v0, "cat":Lcom/mcdonalds/sdk/modules/models/Category;
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;-><init>()V

    .line 188
    .local v2, "categoryExpandable":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setCategory(Lcom/mcdonalds/sdk/modules/models/Category;)V

    .line 189
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setChildItemList(Ljava/util/List;)V

    .line 190
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->filterFlag:Z

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setExpanded(Z)V

    .line 191
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mRecipeMapExpandable:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "cat":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v2    # "categoryExpandable":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    :cond_1
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->filterFlag:Z

    invoke-super {p0, v3, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->setmParentItemList(Ljava/util/List;Z)V

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    .line 199
    iput v8, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCountExp:I

    .line 201
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCategories:Landroid/util/SparseArray;

    .line 202
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCategoriesExpandable:Landroid/util/SparseArray;

    .line 203
    if-eqz p1, :cond_2

    .line 204
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 205
    .local v1, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mEvents:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 208
    .local v4, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;-><init>()V

    .line 209
    .restart local v2    # "categoryExpandable":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setCategory(Lcom/mcdonalds/sdk/modules/models/Category;)V

    .line 210
    iget-boolean v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->filterFlag:Z

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setExpanded(Z)V

    .line 211
    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setChildItemList(Ljava/util/List;)V

    .line 212
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCategoriesExpandable:Landroid/util/SparseArray;

    iget v7, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCountExp:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCountExp:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mCountExp:I

    goto :goto_1

    .line 216
    .end local v1    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v2    # "categoryExpandable":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .end local v4    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->notifyDataSetChanged()V

    .line 217
    return-void
.end method

.method public updateFavorites(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const-string v2, "updateFavorites"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 236
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 237
    .local v1, "favoriteProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v1    # "favoriteProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method
