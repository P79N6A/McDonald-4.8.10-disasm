.class public Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;,
        Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;

.field private mOrderPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

.field private mOrders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeAllClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 147
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mSeeAllClickListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-direct {v0, p1}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrderPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrders:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesAdapter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrders:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getCountBuffer()I
    .locals 2

    .prologue
    const-string v0, "getCountBuffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

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

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :try_start_0
    const-string v1, "utf8"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/util/AppUtils;->stringByAddingPercentEscapesUsingEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "escapedImageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 177
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 178
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "escapedImageUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "onMenuGridItemSelected"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;->onMenuGridItemClicked(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 164
    :cond_0
    return-void
.end method

.method private setItemTitle(Landroid/widget/TextView;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 6
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v3, "setItemTitle"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 135
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const v0, 0x7f0e005e

    .line 143
    .local v0, "color":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    return-void

    .line 140
    .end local v0    # "color":I
    :cond_0
    const v0, 0x7f0e0057

    .restart local v0    # "color":I
    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->getCountBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "getItemViewType"

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public getSpan(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const-string v1, "getSpan"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x2

    .line 213
    :cond_1
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    check-cast p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onBindViewHolder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->getItemViewType(I)I

    move-result v1

    .line 100
    .local v1, "type":I
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->orderPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 102
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->pagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/PagerIndicator;->setVisibility(I)V

    .line 103
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->seeAll:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->orderPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrderPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->pagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

    iget-object v3, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->orderPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 106
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->seeAll:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mSeeAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-ne v1, v6, :cond_0

    .line 109
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->getCountBuffer()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 110
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->setItemTitle(Landroid/widget/TextView;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 111
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->item_no_available:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 118
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p1, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const-string v3, "OrderPressed"

    invoke-static {v2, v3, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    packed-switch p2, :pswitch_data_0

    .line 91
    :pswitch_0
    const v2, 0x7f04012d

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "view":Landroid/view/View;
    :goto_0
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;

    invoke-direct {v2, p0, v1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Landroid/view/View;I)V

    return-object v2

    .line 83
    .end local v1    # "view":Landroid/view/View;
    :pswitch_1
    const v2, 0x7f04007b

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 87
    .end local v1    # "view":Landroid/view/View;
    :pswitch_2
    const v2, 0x7f04007c

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;)V
    .locals 3
    .param p1, "onMenuGridItemClickListener"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;

    .prologue
    const-string v0, "setOnMenuGridItemClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;

    .line 158
    return-void
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    const-string v0, "setOrders"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrders:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrderPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mOrders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->setOrders(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const-string v0, "setProducts"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local p1    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->mProducts:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
