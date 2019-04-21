.class public Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfferGridViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;
    }
.end annotation


# instance fields
.field protected mAddedToOrderView:Landroid/view/View;

.field protected mExpirationTextView:Landroid/widget/TextView;

.field protected mFoodImageView:Landroid/widget/ImageView;

.field protected mFoodNameTextView:Landroid/widget/TextView;

.field protected mGridItem:Landroid/view/View;

.field private final mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;

.field protected mOfferTypeContainer:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "offerGridItemClickListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;

    .line 45
    const v0, 0x7f1104a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    .line 46
    const v0, 0x7f110136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f110424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mGridItem:Landroid/view/View;

    .line 49
    const v0, 0x7f1104a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f11049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mAddedToOrderView:Landroid/view/View;

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public static bind(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;ZLandroid/content/Context;)V
    .locals 11
    .param p0, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "isAddedToOrder"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.home.dashboard.viewholder.OfferGridViewHolder"

    const-string v7, "bind"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.offers.showPickupDeliveryFlag"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .local v3, "mShowPickUpDeliveryFlag":Z
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    .line 79
    .local v0, "isDeliveryOnly":Z
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x1

    .line 80
    .local v1, "isPickUpOnly":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const v6, 0x7f1104f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, "mIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const v6, 0x7f1104f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, "mText":Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 86
    const v5, 0x7f020129

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    const v5, 0x7f0901da

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .end local v0    # "isDeliveryOnly":Z
    .end local v1    # "isPickUpOnly":Z
    .end local v2    # "mIcon":Landroid/widget/ImageView;
    .end local v4    # "mText":Landroid/widget/TextView;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mAddedToOrderView:Landroid/view/View;

    if-eqz p2, :cond_6

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09034b

    invoke-virtual {p3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mGridItem:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 105
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 106
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    const v6, 0x7f020194

    .line 107
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 109
    return-void

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 79
    .restart local v0    # "isDeliveryOnly":Z
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 88
    .restart local v1    # "isPickUpOnly":Z
    .restart local v2    # "mIcon":Landroid/widget/ImageView;
    .restart local v4    # "mText":Landroid/widget/TextView;
    :cond_4
    if-eqz v1, :cond_1

    .line 89
    const v5, 0x7f020127

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const v5, 0x7f090630

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 93
    .end local v2    # "mIcon":Landroid/widget/ImageView;
    .end local v4    # "mText":Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 97
    .end local v0    # "isDeliveryOnly":Z
    .end local v1    # "isPickUpOnly":Z
    :cond_6
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public static create(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/dashboard/DashboardItem;",
            ">;",
            "Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .local p1, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/dashboard/DashboardItem;>;"
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.OfferGridViewHolder"

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

    .line 61
    const v2, 0x7f040161

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "offerViewHolder":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;

    invoke-direct {v2, p2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;)V

    .line 71
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

    .line 113
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "OfferItemPressed"

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logItemClick(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;->onGridItemClicked(I)V

    .line 118
    :cond_0
    return-void
.end method
