.class public Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfferListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;
    }
.end annotation


# instance fields
.field mAddedToOrderView:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mItemView:Landroid/view/View;

.field private final mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "offerListItemClickListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mItemView:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;

    .line 38
    const v0, 0x7f1104a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f1104a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mTitle:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f1104a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f11049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mAddedToOrderView:Landroid/view/View;

    .line 42
    return-void
.end method

.method public static bind(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;ZLandroid/content/Context;)V
    .locals 8
    .param p0, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "isAddedToOrder"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.home.dashboard.viewholder.OfferListViewHolder"

    const-string v4, "bind"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mAddedToOrderView:Landroid/view/View;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mSubtitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09034b

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 68
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02024f

    .line 69
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 72
    return-void

    .line 61
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public static create(Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/home/dashboard/DashboardItem;",
            ">;",
            "Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .local p1, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/home/dashboard/DashboardItem;>;"
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.OfferListViewHolder"

    const-string v3, "create"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v6, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const v2, 0x7f040162

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "offerListView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$1;

    invoke-direct {v2, p2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/ArrayList;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;)V

    .line 57
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferListViewHolder$OfferListItemClickListener;->onListItemClick(I)V

    .line 79
    :cond_0
    return-void
.end method
