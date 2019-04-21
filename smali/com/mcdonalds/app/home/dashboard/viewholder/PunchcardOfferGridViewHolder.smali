.class public Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PunchcardOfferGridViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;
    }
.end annotation


# instance fields
.field protected mAddedToOrderView:Landroid/view/View;

.field protected mExpirationTextView:Landroid/widget/TextView;

.field protected mFoodImageView:Landroid/widget/ImageView;

.field protected mFoodNameTextView:Landroid/widget/TextView;

.field protected mGridItem:Landroid/view/View;

.field private final mNumberOfPunchesTextView:Landroid/widget/TextView;

.field private final mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;

.field protected mOfferTypeContainer:Landroid/view/View;

.field private final mPunchNumberSubtitleTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "offerGridItemClickListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;

    .line 46
    const v0, 0x7f1104a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    .line 47
    const v0, 0x7f110136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f110424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mGridItem:Landroid/view/View;

    .line 50
    const v0, 0x7f1104a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f11050d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f11050c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f11049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mAddedToOrderView:Landroid/view/View;

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;Lcom/mcdonalds/sdk/modules/models/Offer;Z)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;
    .param p2, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p3, "isAddedToOrder"    # Z

    .prologue
    const/4 v9, 0x0

    const-string v10, "com.mcdonalds.app.home.dashboard.viewholder.PunchcardOfferGridViewHolder"

    const-string v11, "bind"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    const/4 v13, 0x3

    new-instance v14, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.offers.showPickupDeliveryFlag"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    .line 76
    .local v5, "mShowPickUpDeliveryFlag":Z
    if-eqz v5, :cond_1

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v2, 0x1

    .line 78
    .local v2, "isDeliveryOnly":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v3, 0x1

    .line 79
    .local v3, "isPickUpOnly":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_7

    .line 80
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 81
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const v10, 0x7f1104f3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "mIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const v10, 0x7f1104f4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, "mText":Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 84
    const v9, 0x7f020129

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    const v9, 0x7f0901da

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .end local v2    # "isDeliveryOnly":Z
    .end local v3    # "isPickUpOnly":Z
    .end local v4    # "mIcon":Landroid/widget/ImageView;
    .end local v6    # "mText":Landroid/widget/TextView;
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mAddedToOrderView:Landroid/view/View;

    if-eqz p3, :cond_8

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f09034b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v8, 0x0

    .line 100
    .local v8, "totalPunch":I
    const/4 v1, 0x0

    .line 101
    .local v1, "currentPunch":I
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 105
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    :cond_3
    sub-int v7, v8, v1

    .line 110
    .local v7, "punchesLeft":I
    if-nez v1, :cond_9

    .line 112
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090714

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mGridItem:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v9

    sget-object v10, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 136
    invoke-virtual {v9, v10}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v9

    const v10, 0x7f020194

    .line 137
    invoke-virtual {v9, v10}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {v9, v10}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 139
    return-void

    .line 77
    .end local v1    # "currentPunch":I
    .end local v7    # "punchesLeft":I
    .end local v8    # "totalPunch":I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 78
    .restart local v2    # "isDeliveryOnly":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 86
    .restart local v3    # "isPickUpOnly":Z
    .restart local v4    # "mIcon":Landroid/widget/ImageView;
    .restart local v6    # "mText":Landroid/widget/TextView;
    :cond_6
    if-eqz v3, :cond_1

    .line 87
    const v9, 0x7f020127

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    const v9, 0x7f090630

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 91
    .end local v4    # "mIcon":Landroid/widget/ImageView;
    .end local v6    # "mText":Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferTypeContainer:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 95
    .end local v2    # "isDeliveryOnly":Z
    .end local v3    # "isPickUpOnly":Z
    :cond_8
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 116
    .restart local v1    # "currentPunch":I
    .restart local v7    # "punchesLeft":I
    .restart local v8    # "totalPunch":I
    :cond_9
    if-lt v1, v8, :cond_a

    .line 118
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090172

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e005e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 124
    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    if-ne v7, v9, :cond_b

    const v9, 0x7f090667

    .line 128
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 127
    :goto_5
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 128
    :cond_b
    const v9, 0x7f09066e

    .line 129
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5
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

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.PunchcardOfferGridViewHolder"

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

    .line 62
    const v2, 0x7f040183

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "offerViewHolder":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$1;

    invoke-direct {v2, p2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;)V

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

    .line 144
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "PunchCardOfferItemPressed"

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logItemClick(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->mOfferGridItemClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/PunchcardOfferGridViewHolder$OfferGridItemClickListener;->onGridItemClicked(I)V

    .line 149
    :cond_0
    return-void
.end method
