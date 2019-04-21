.class Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;
.super Lcom/mcdonalds/app/ordering/ProductDetailsItem;
.source "BasketListItemViewHolder.java"


# instance fields
.field private final mDividerContainer:Landroid/view/View;

.field private final mEditButton:Landroid/widget/Button;

.field private final mEditContainer:Landroid/view/View;

.field private final mEnergyPriceContainer:Landroid/view/View;

.field private final mEnergyTotalView:Landroid/widget/TextView;

.field private final mErrorContainer:Landroid/view/View;

.field private final mErrorIconView:Landroid/widget/ImageView;

.field private final mErrorTextView:Landroid/widget/TextView;

.field private final mHeaderContainer:Landroid/view/View;

.field private final mHeaderIconView:Landroid/widget/ImageView;

.field private final mHeaderTextView:Landroid/widget/TextView;

.field private final mInfoButton:Landroid/widget/ImageButton;

.field private final mMakeItAMealButton:Landroid/widget/Button;

.field private final mPriceTotalView:Landroid/widget/TextView;

.field private final mRemoveButton:Landroid/widget/Button;

.field private final mSpacer:Landroid/view/View;

.field private final mTimeRestrictionWarning:Landroid/widget/TextView;

.field private final mTopPad:Landroid/view/View;

.field private final mUnAvailablePointsOfDistributionMessage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    const v0, 0x7f110132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f11010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mTopPad:Landroid/view/View;

    .line 43
    const v0, 0x7f11010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mErrorContainer:Landroid/view/View;

    .line 44
    const v0, 0x7f110110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mErrorTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f110111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mErrorIconView:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f110112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderContainer:Landroid/view/View;

    .line 48
    const v0, 0x7f11010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mDividerContainer:Landroid/view/View;

    .line 50
    const v0, 0x7f110113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f110114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderIconView:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f110117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mSpacer:Landroid/view/View;

    .line 53
    const v0, 0x7f110118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEnergyPriceContainer:Landroid/view/View;

    .line 54
    const v0, 0x7f110119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEnergyTotalView:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f11011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mPriceTotalView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f11011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEditContainer:Landroid/view/View;

    .line 57
    const v0, 0x7f11011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mRemoveButton:Landroid/widget/Button;

    .line 58
    const v0, 0x7f11011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEditButton:Landroid/widget/Button;

    .line 59
    const v0, 0x7f110116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mMakeItAMealButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f11013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mInfoButton:Landroid/widget/ImageButton;

    .line 62
    const v0, 0x7f110115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mUnAvailablePointsOfDistributionMessage:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f1100b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mTimeRestrictionWarning:Landroid/widget/TextView;

    .line 64
    return-void
.end method


# virtual methods
.method public getDividerContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getDividerContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mDividerContainer:Landroid/view/View;

    return-object v0
.end method

.method public getEditButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getEditButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEditContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getEditContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEditContainer:Landroid/view/View;

    return-object v0
.end method

.method public getEnergyPriceContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getEnergyPriceContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEnergyPriceContainer:Landroid/view/View;

    return-object v0
.end method

.method public getEnergyTotalView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getEnergyTotalView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mEnergyTotalView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getErrorContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getErrorContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mErrorContainer:Landroid/view/View;

    return-object v0
.end method

.method public getErrorTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getErrorTextView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeaderContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getHeaderContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderIconView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getHeaderIconView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getHeaderTextView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfoButton()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    const-string v0, "getInfoButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mInfoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMakeItAMealButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getMakeItAMealButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mMakeItAMealButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPriceTotalView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getPriceTotalView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mPriceTotalView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRemoveButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getRemoveButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mRemoveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getTimeRestrictionWarning()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTimeRestrictionWarning"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mTimeRestrictionWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopPad()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getTopPad"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mTopPad:Landroid/view/View;

    return-object v0
.end method

.method public getUnAvailablePODMessage()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getUnAvailablePODMessage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->mUnAvailablePointsOfDistributionMessage:Landroid/widget/TextView;

    return-object v0
.end method
