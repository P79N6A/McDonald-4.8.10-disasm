.class Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
.super Ljava/lang/Object;
.source "StoreItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;


# instance fields
.field private mAddFavoritesButton:Landroid/widget/Button;

.field private mChooseAnotherLocation:Landroid/widget/Button;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentView:Landroid/view/View;

.field private mCurrentStoreContainer:Landroid/view/View;

.field private mCurrentStoreLabel:Landroid/widget/TextView;

.field private mExpandableContent:Landroid/view/View;

.field private mFavoritesContainer:Landroid/view/View;

.field private mHasBeenPopulated:Z

.field private mInfoButton:Landroid/widget/ImageView;

.field private mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mMyMcDonaldsContainer:Landroid/view/View;

.field private mMyMcDonaldsIcon:Landroid/widget/ImageView;

.field private mMyMcDonaldsLabel:Landroid/widget/TextView;

.field private mNickName:Landroid/widget/TextView;

.field private mNickNameLabel:Landroid/widget/TextView;

.field private mNonHeaderContent:Landroid/view/View;

.field private mNotAuthorizedContainer:Landroid/widget/LinearLayout;

.field private mNotAuthorizedLabel:Landroid/widget/TextView;

.field private mOffersStatusIcon:Landroid/widget/ImageView;

.field private mOrderHere:Landroid/widget/Button;

.field private mRemoveFromFavorites:Landroid/widget/Button;

.field private mSaveToFavoritesButton:Landroid/widget/Button;

.field private mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

.field private mSectionHeader:Landroid/view/View;

.field private mSectionHeaderLabel:Landroid/widget/TextView;

.field private mSectionIconView:Landroid/widget/ImageView;

.field private mSelectStoreButton:Landroid/widget/TextView;

.field private mSkipButton:Landroid/widget/Button;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mStoreDistanceLabel:Landroid/widget/TextView;

.field private mStoreHoursLabel:Landroid/widget/TextView;

.field private mStoreSubtitleLabel:Landroid/widget/TextView;

.field private mStoreTitleLabel:Landroid/widget/TextView;

.field private mTitleParent:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mHasBeenPopulated:Z

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V
    .locals 1
    .param p1, "itemListener"    # Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mHasBeenPopulated:Z

    .line 84
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 85
    return-void
.end method

.method private configureItemListeners()V
    .locals 2

    .prologue
    const-string v0, "configureItemListeners"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreSubtitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getInfoButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getAddFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSkipButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getChooseAnotherLocation()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getInfoButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "InfoButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreTitleLabel:Landroid/widget/TextView;

    const-string v1, "InfoButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreSubtitleLabel:Landroid/widget/TextView;

    const-string v1, "InfoButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    const-string v1, "SelectAsCurrentStoreButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getAddFavoritesButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getAddFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mAddFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getChooseAnotherLocation()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getChooseAnotherLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mChooseAnotherLocation:Landroid/widget/Button;

    return-object v0
.end method

.method public getContentParent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const-string v0, "getContentParent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getContentView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentStoreContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getCurrentStoreContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mCurrentStoreContainer:Landroid/view/View;

    return-object v0
.end method

.method public getFavoritesContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getFavoritesContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mFavoritesContainer:Landroid/view/View;

    return-object v0
.end method

.method public getInfoButton()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getInfoButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mInfoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMyMcDonaldsContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getMyMcDonaldsContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mMyMcDonaldsContainer:Landroid/view/View;

    return-object v0
.end method

.method public getMyMcDonaldsIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getMyMcDonaldsIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mMyMcDonaldsIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNickName()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getNickName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNickName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNotAuthorizedContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getNotAuthorizedContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNotAuthorizedContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNotAuthorizedLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getNotAuthorizedLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNotAuthorizedLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOffersStatusIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getOffersStatusIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mOffersStatusIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOrderHere()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getOrderHere"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mOrderHere:Landroid/widget/Button;

    return-object v0
.end method

.method public getRemoveFromFavorites()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getRemoveFromFavorites"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mRemoveFromFavorites:Landroid/widget/Button;

    return-object v0
.end method

.method public getSaveToFavoritesButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSaveToFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSectionHeader()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getSectionHeader"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionHeader:Landroid/view/View;

    return-object v0
.end method

.method public getSectionHeaderLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getSectionHeaderLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionHeaderLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSectionIconView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getSectionIconView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSelectStoreButton()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getSelectStoreButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSelectStoreButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSkipButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSkipButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSkipButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getStoreDistanceLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getStoreDistanceLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreDistanceLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStoreHoursLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getStoreHoursLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreHoursLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStoreSubtitleLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getStoreSubtitleLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreSubtitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStoreTitleLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getStoreTitleLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreTitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const-string v0, "getTitleParent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mTitleParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getTitleView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public hasBeenPopulated()Z
    .locals 2

    .prologue
    const-string v0, "hasBeenPopulated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mHasBeenPopulated:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSelectStoreButton()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->eatHereClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getMyMcDonaldsContainer()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->myMcDonaldsClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->saveToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getAddFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->addToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getInfoButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreTitleLabel:Landroid/widget/TextView;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreSubtitleLabel:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->infoClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getSkipButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->skipClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_0

    .line 175
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getOrderHere()Landroid/widget/Button;

    move-result-object v0

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getChooseAnotherLocation()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->placeOrderClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto/16 :goto_0

    .line 177
    :cond_9
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getFavoritesContainer()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->nicknameClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto/16 :goto_0

    .line 179
    :cond_a
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getRemoveFromFavorites()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->removeFromFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto/16 :goto_0
.end method

.method public populateFromView(Landroid/view/View;)V
    .locals 4
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "populateFromView"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mHasBeenPopulated:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 91
    :cond_0
    const v0, 0x7f1103f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionHeader:Landroid/view/View;

    .line 92
    const v0, 0x7f1103f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionHeaderLabel:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f1103f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSectionIconView:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f11053b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNonHeaderContent:Landroid/view/View;

    .line 96
    const v0, 0x7f1103e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mExpandableContent:Landroid/view/View;

    .line 98
    const v0, 0x7f1103f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreTitleLabel:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f1103fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreSubtitleLabel:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1103fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mMyMcDonaldsContainer:Landroid/view/View;

    .line 102
    const v0, 0x7f1103fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mMyMcDonaldsLabel:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f1103fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mMyMcDonaldsIcon:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f1103dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSelectStoreButton:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f11053f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNotAuthorizedContainer:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f110540

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNotAuthorizedLabel:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f11013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mInfoButton:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f1103d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreHoursLabel:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f1103d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStoreDistanceLabel:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1103ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mFavoritesContainer:Landroid/view/View;

    .line 116
    const v0, 0x7f1103ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNickNameLabel:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f1103ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mNickName:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f1103f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSkipButton:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    const v0, 0x7f1103f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mAddFavoritesButton:Landroid/widget/Button;

    .line 122
    const v0, 0x7f1103e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mCurrentStoreContainer:Landroid/view/View;

    .line 123
    const v0, 0x7f1103e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    .line 124
    const v0, 0x7f1103e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mOrderHere:Landroid/widget/Button;

    .line 125
    const v0, 0x7f1103eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mCurrentStoreLabel:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f1103ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mRemoveFromFavorites:Landroid/widget/Button;

    .line 127
    const v0, 0x7f1103e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mChooseAnotherLocation:Landroid/widget/Button;

    .line 129
    const v0, 0x7f11053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mOffersStatusIcon:Landroid/widget/ImageView;

    .line 131
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->configureItemListeners()V

    .line 133
    iput-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mHasBeenPopulated:Z

    goto/16 :goto_0
.end method

.method public setContentParent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "setContentParent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mContentParent:Landroid/view/ViewGroup;

    .line 202
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const-string v0, "setContentView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mContentView:Landroid/view/View;

    .line 222
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

    .line 157
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 158
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

    .line 229
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 230
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

    .line 233
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 234
    return-void
.end method

.method public setTitleParent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "setTitleParent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mTitleParent:Landroid/view/ViewGroup;

    .line 192
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 3
    .param p1, "titleView"    # Landroid/view/View;

    .prologue
    const-string v0, "setTitleView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->mTitleView:Landroid/view/View;

    .line 212
    return-void
.end method
