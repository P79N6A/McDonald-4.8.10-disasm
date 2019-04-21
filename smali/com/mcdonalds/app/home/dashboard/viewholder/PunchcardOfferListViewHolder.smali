.class public Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PunchcardOfferListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;
    }
.end annotation


# instance fields
.field mAddedToOrderView:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mItemView:Landroid/view/View;

.field private final mNumberOfPunchesTextView:Landroid/widget/TextView;

.field private final mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;

.field private final mPunchNumberSubtitleTextView:Landroid/widget/TextView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "offerListItemClickListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mItemView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;

    .line 40
    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f110136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mTitle:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f1104a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f11050d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f11050c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f11049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mAddedToOrderView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;
    .param p2, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p3, "isAddedToOrder"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.home.dashboard.viewholder.PunchcardOfferListViewHolder"

    const-string v6, "bind"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v5, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mAddedToOrderView:Landroid/view/View;

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mSubtitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09034b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "totalPunch":I
    const/4 v0, 0x0

    .line 71
    .local v0, "currentPunch":I
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    :cond_1
    sub-int v2, v3, v0

    .line 80
    .local v2, "punchesLeft":I
    if-nez v0, :cond_3

    .line 81
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090714

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_1
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 99
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    const v5, 0x7f02024f

    .line 100
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 102
    return-void

    .line 65
    .end local v0    # "currentPunch":I
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "punchesLeft":I
    .end local v3    # "totalPunch":I
    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_0

    .line 84
    .restart local v0    # "currentPunch":I
    .restart local v2    # "punchesLeft":I
    .restart local v3    # "totalPunch":I
    :cond_3
    if-ne v0, v3, :cond_4

    .line 85
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 89
    :cond_4
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v5, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const v4, 0x7f090667

    .line 92
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_5
    const v4, 0x7f09066e

    .line 93
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
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

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.PunchcardOfferListViewHolder"

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

    .line 52
    const v2, 0x7f040184

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "offerListView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$1;

    invoke-direct {v2, p2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/ArrayList;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;)V

    .line 61
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

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->mOfferListItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferListViewHolder$OfferListItemClickListener;->onListItemClick(I)V

    .line 109
    :cond_0
    return-void
.end method
