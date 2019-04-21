.class public Lcom/mcdonalds/app/ordering/basket/BasketListItem;
.super Ljava/lang/Object;
.source "BasketListItem.java"


# instance fields
.field private mBasketItem:Ljava/lang/Object;

.field private mDividerHidden:Ljava/lang/Boolean;

.field private mEnergyTotal:Ljava/lang/String;

.field private mFooterHidden:Ljava/lang/Boolean;

.field private mHasError:Z

.field private mHeaderDetailsText:Ljava/lang/String;

.field private mHeaderHidden:Ljava/lang/Boolean;

.field private mHeaderIconHidden:Ljava/lang/Boolean;

.field private mHeaderText:Ljava/lang/String;

.field private mIconImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

.field private mIsMealErrorItem:Z

.field private mIsMealHeaderNonErrorWarningItem:Z

.field private mIsNonProductOffer:Z

.field private mIsOffer:Z

.field private mIsOfferDelivery:Z

.field private mIsOfferPickup:Z

.field private mItemInstructions:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemUplift:D

.field private mMakeItAMealHidden:Ljava/lang/Boolean;

.field private mNonProductOfferNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferPODErrorCode:I

.field private mOfferUnavailable:Z

.field private mOutOfStock:Z

.field mPositionInMeal:I

.field private mPriceChanged:Z

.field private mPriceTotal:Ljava/lang/String;

.field private mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

.field private mTimeRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPaddingHidden:Ljava/lang/Boolean;

.field private mUnavailable:Z

.field private mUnavailablePODMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mNonProductOfferNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBasketItem()Ljava/lang/Object;
    .locals 2

    .prologue
    const-string v0, "getBasketItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mBasketItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getDividerHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getDividerHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mDividerHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnergyTotal()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getEnergyTotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mEnergyTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getFooterHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mFooterHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeaderDetailsText()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getHeaderDetailsText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderDetailsText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getHeaderHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeaderIconHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getHeaderIconHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderIconHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getHeaderText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 2

    .prologue
    const-string v0, "getIconImage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIconImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getItemInstructions()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getItemInstructions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getItemName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemUplift()D
    .locals 2

    .prologue
    const-string v0, "getItemUplift"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemUplift:D

    return-wide v0
.end method

.method public getMakeItAMealHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getMakeItAMealHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mMakeItAMealHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNonProductOfferNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getNonProductOfferNames"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mNonProductOfferNames:Ljava/util/List;

    return-object v0
.end method

.method public getOfferPODErrorCode()I
    .locals 2

    .prologue
    const-string v0, "getOfferPODErrorCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOfferPODErrorCode:I

    return v0
.end method

.method public getPositionInMeal()I
    .locals 2

    .prologue
    const-string v0, "getPositionInMeal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPositionInMeal:I

    return v0
.end method

.method public getPriceTotal()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getPriceTotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPriceTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeRestrictions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getTimeRestrictions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mTimeRestrictions:Ljava/util/List;

    return-object v0
.end method

.method public getTopPaddingHidden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getTopPaddingHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mTopPaddingHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUnavailablePODMessage()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUnavailablePODMessage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mUnavailablePODMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const-string v0, "hasError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHasError:Z

    return v0
.end method

.method public isMealErrorItem()Z
    .locals 2

    .prologue
    const-string v0, "isMealErrorItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsMealErrorItem:Z

    return v0
.end method

.method public isMealHeaderNonErrorWarningItem()Z
    .locals 2

    .prologue
    const-string v0, "isMealHeaderNonErrorWarningItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsMealHeaderNonErrorWarningItem:Z

    return v0
.end method

.method public isNonProductOffer()Z
    .locals 2

    .prologue
    const-string v0, "isNonProductOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsNonProductOffer:Z

    return v0
.end method

.method public isOfferUnavailable()Z
    .locals 2

    .prologue
    const-string v0, "isOfferUnavailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOfferUnavailable:Z

    return v0
.end method

.method public isOutOfStock()Z
    .locals 2

    .prologue
    const-string v0, "isOutOfStock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOutOfStock:Z

    return v0
.end method

.method public isPriceChanged()Z
    .locals 2

    .prologue
    const-string v0, "isPriceChanged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPriceChanged:Z

    return v0
.end method

.method public isSubtotalItem()Z
    .locals 2

    .prologue
    const-string v0, "isSubtotalItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isUnavailable()Z
    .locals 2

    .prologue
    const-string v0, "isUnavailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mUnavailable:Z

    return v0
.end method

.method public setBasketItem(Ljava/lang/Object;)V
    .locals 3
    .param p1, "basketItem"    # Ljava/lang/Object;

    .prologue
    const-string v0, "setBasketItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mBasketItem:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setDividerHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "mDividerHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setDividerHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mDividerHidden:Ljava/lang/Boolean;

    .line 207
    return-void
.end method

.method public setEnergyTotal(Ljava/lang/String;)V
    .locals 3
    .param p1, "energyTotal"    # Ljava/lang/String;

    .prologue
    const-string v0, "setEnergyTotal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mEnergyTotal:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setFooterHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "footerHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setFooterHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mFooterHidden:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public setHasError(Z)V
    .locals 4
    .param p1, "mHasError"    # Z

    .prologue
    const-string v0, "setHasError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHasError:Z

    .line 231
    return-void
.end method

.method public setHeaderDetailsText(Ljava/lang/String;)V
    .locals 3
    .param p1, "headerText"    # Ljava/lang/String;

    .prologue
    const-string v0, "setHeaderDetailsText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderDetailsText:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHeaderHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "headerHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setHeaderHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderHidden:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public setHeaderIconHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "headerIconHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setHeaderIconHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderIconHidden:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 3
    .param p1, "headerText"    # Ljava/lang/String;

    .prologue
    const-string v0, "setHeaderText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mHeaderText:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 3
    .param p1, "iconImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    const-string v0, "setIconImage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIconImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 199
    return-void
.end method

.method public setIsOfferDelivery(Z)V
    .locals 4
    .param p1, "isDelivery"    # Z

    .prologue
    const-string v0, "setIsOfferDelivery"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsOfferDelivery:Z

    .line 287
    return-void
.end method

.method public setItemInstructions(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemInstructions"    # Ljava/lang/String;

    .prologue
    const-string v0, "setItemInstructions"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemInstructions:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setItemName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setItemUplift(D)V
    .locals 5
    .param p1, "itemUplift"    # D

    .prologue
    const-string v0, "setItemUplift"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mItemUplift:D

    .line 159
    return-void
.end method

.method public setMakeItAMealHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "makeItAMealHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setMakeItAMealHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mMakeItAMealHidden:Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public setMealErrorItem(Z)V
    .locals 4
    .param p1, "mealErrorItem"    # Z

    .prologue
    const-string v0, "setMealErrorItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsMealErrorItem:Z

    .line 327
    return-void
.end method

.method public setMealHeaderNonErrorWarningItem(Z)V
    .locals 4
    .param p1, "mealHeaderNonErrorWarningItem"    # Z

    .prologue
    const-string v0, "setMealHeaderNonErrorWarningItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsMealHeaderNonErrorWarningItem:Z

    .line 335
    return-void
.end method

.method public setNonProductOfferNames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nonProductOfferNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setNonProductOfferNames"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mNonProductOfferNames:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setOfferIsNonProduct(Z)V
    .locals 4
    .param p1, "isNonProduct"    # Z

    .prologue
    const-string v0, "setOfferIsNonProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsNonProductOffer:Z

    .line 299
    return-void
.end method

.method public setOfferIsPickup(Z)V
    .locals 4
    .param p1, "isPickup"    # Z

    .prologue
    const-string v0, "setOfferIsPickup"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsOfferPickup:Z

    .line 295
    return-void
.end method

.method public setOfferPODErrorCode(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    const-string v0, "setOfferPODErrorCode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iput p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOfferPODErrorCode:I

    .line 311
    return-void
.end method

.method public setOfferPriceChanged(Z)V
    .locals 4
    .param p1, "mIsOffer"    # Z

    .prologue
    const-string v0, "setOfferPriceChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mIsOffer:Z

    .line 319
    return-void
.end method

.method public setOfferUnavailable(Z)V
    .locals 4
    .param p1, "unavailable"    # Z

    .prologue
    const-string v0, "setOfferUnavailable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOfferUnavailable:Z

    .line 247
    return-void
.end method

.method public setOutOfStock(Z)V
    .locals 4
    .param p1, "mOutOfStock"    # Z

    .prologue
    const-string v0, "setOutOfStock"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mOutOfStock:Z

    .line 239
    return-void
.end method

.method public setPositionInMeal(I)V
    .locals 4
    .param p1, "positionInMeal"    # I

    .prologue
    const-string v0, "setPositionInMeal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iput p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPositionInMeal:I

    .line 343
    return-void
.end method

.method public setPriceChanged(Z)V
    .locals 4
    .param p1, "priceChanged"    # Z

    .prologue
    const-string v0, "setPriceChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPriceChanged:Z

    .line 263
    return-void
.end method

.method public setPriceTotal(Ljava/lang/String;)V
    .locals 3
    .param p1, "priceTotal"    # Ljava/lang/String;

    .prologue
    const-string v0, "setPriceTotal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mPriceTotal:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setTimeRestriction(Lcom/mcdonalds/sdk/modules/models/TimeRestriction;)V
    .locals 3
    .param p1, "mTimeRestriction"    # Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .prologue
    const-string v0, "setTimeRestriction"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 271
    return-void
.end method

.method public setTimeRestrictions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mTimeRestrictions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/TimeRestriction;>;"
    const-string v0, "setTimeRestrictions"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mTimeRestrictions:Ljava/util/List;

    .line 279
    return-void
.end method

.method public setTopPaddingHidden(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "topPaddingHidden"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setTopPaddingHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mTopPaddingHidden:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public setUnavailable(Z)V
    .locals 4
    .param p1, "mUnavailable"    # Z

    .prologue
    const-string v0, "setUnavailable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mUnavailable:Z

    .line 255
    return-void
.end method

.method public setUnavailablePODMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setUnavailablePODMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->mUnavailablePODMessage:Ljava/lang/String;

    .line 223
    return-void
.end method
