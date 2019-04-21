.class Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper;
.super Ljava/lang/Object;
.source "StoreItemConfigurationHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static configureStoreItem(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;Lcom/mcdonalds/app/storelocator/StoreItemViewState;ZZZLcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    .param p2, "state"    # Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .param p3, "hideOrderingWarning"    # Z
    .param p4, "allowFavoritingWithoutMobileOrdering"    # Z
    .param p5, "allowSelectingWithoutMobileOrdering"    # Z
    .param p6, "offerState"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    const-string v3, "com.mcdonalds.app.storelocator.StoreItemConfigurationHelper"

    const-string v4, "configureStoreItem"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object p6, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 21
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-eq p6, v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_PUNCHCARD_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne p6, v0, :cond_3

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedLabel()Landroid/widget/TextView;

    move-result-object v3

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne p6, v0, :cond_2

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_1
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne p6, v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOffersStatusIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :cond_1
    if-eqz p4, :cond_d

    .line 123
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-ne p2, v0, :cond_c

    .line 124
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    :goto_2
    if-nez p3, :cond_f

    .line 136
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :goto_3
    return-void

    .line 27
    :cond_2
    const v0, 0x7f09066a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemConfigurationHelper$1;->$SwitchMap$com$mcdonalds$app$storelocator$StoreItemViewState:[I

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 43
    :pswitch_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    if-nez p3, :cond_4

    if-eqz p5, :cond_6

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne p6, v0, :cond_5

    .line 48
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f090130

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz p3, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 51
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move v0, v2

    .line 54
    goto :goto_5

    .line 61
    :pswitch_1
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz p3, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    if-nez p3, :cond_8

    if-eqz p5, :cond_a

    .line 67
    :cond_8
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 64
    goto :goto_6

    .line 69
    :cond_a
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-ne p2, v0, :cond_b

    .line 84
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 87
    :cond_b
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 94
    :pswitch_3
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 103
    :pswitch_4
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNotAuthorizedContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getCurrentStoreContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 126
    :cond_c
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 129
    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 130
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 132
    :cond_e
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 137
    :cond_f
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-eq p2, v0, :cond_10

    .line 139
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 141
    :cond_10
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
