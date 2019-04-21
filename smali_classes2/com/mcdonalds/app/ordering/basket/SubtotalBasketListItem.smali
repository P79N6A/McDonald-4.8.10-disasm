.class public Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
.super Lcom/mcdonalds/app/ordering/basket/BasketListItem;
.source "SubtotalBasketListItem.java"


# instance fields
.field private mDeliveryFee:D

.field private mDeliveryFeeDiscount:D

.field private mHideOfferUnavailableContainer:Z

.field private mIsDeliveryFeeOfferHidden:Z

.field private mIsDeliveryHidden:Z

.field private mIsNonProductOfferAvailable:Z

.field private mOfferName:Ljava/lang/String;

.field private mShowTotal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsNonProductOfferAvailable:Z

    .line 11
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mShowTotal:Z

    return-void
.end method


# virtual methods
.method public getDeliveryFee()D
    .locals 2

    .prologue
    const-string v0, "getDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mDeliveryFee:D

    return-wide v0
.end method

.method public getDeliveryFeeDiscount()D
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeDiscount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mDeliveryFeeDiscount:D

    return-wide v0
.end method

.method public getHideOfferUnavailableContainer()Z
    .locals 2

    .prologue
    const-string v0, "getHideOfferUnavailableContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mHideOfferUnavailableContainer:Z

    return v0
.end method

.method public getIsNonProductOfferAvailable()Z
    .locals 2

    .prologue
    const-string v0, "getIsNonProductOfferAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsNonProductOfferAvailable:Z

    return v0
.end method

.method public getOfferName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getOfferName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mOfferName:Ljava/lang/String;

    return-object v0
.end method

.method public isDeliveryFeeOfferHidden()Z
    .locals 2

    .prologue
    const-string v0, "isDeliveryFeeOfferHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsDeliveryFeeOfferHidden:Z

    return v0
.end method

.method public isDeliveryHidden()Z
    .locals 2

    .prologue
    const-string v0, "isDeliveryHidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsDeliveryHidden:Z

    return v0
.end method

.method public isShowTotal()Z
    .locals 2

    .prologue
    const-string v0, "isShowTotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mShowTotal:Z

    return v0
.end method

.method public isSubtotalItem()Z
    .locals 2

    .prologue
    const-string v0, "isSubtotalItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public setDeliveryFee(D)V
    .locals 5
    .param p1, "deliveryFee"    # D

    .prologue
    const-string v0, "setDeliveryFee"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mDeliveryFee:D

    .line 61
    return-void
.end method

.method public setDeliveryFeeDiscount(D)V
    .locals 5
    .param p1, "deliveryFeeDiscount"    # D

    .prologue
    const-string v0, "setDeliveryFeeDiscount"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mDeliveryFeeDiscount:D

    .line 69
    return-void
.end method

.method public setDeliveryFeeOfferHidden(Z)V
    .locals 4
    .param p1, "isDeliveryFeeOfferHidden"    # Z

    .prologue
    const-string v0, "setDeliveryFeeOfferHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsDeliveryFeeOfferHidden:Z

    .line 39
    return-void
.end method

.method public setDeliveryHidden(Z)V
    .locals 4
    .param p1, "isDeliveryHidden"    # Z

    .prologue
    const-string v0, "setDeliveryHidden"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsDeliveryHidden:Z

    .line 31
    return-void
.end method

.method public setHideOfferUnavailableContainer(Z)V
    .locals 4
    .param p1, "isOfferUnavailableHidden"    # Z

    .prologue
    const-string v0, "setHideOfferUnavailableContainer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mHideOfferUnavailableContainer:Z

    .line 53
    return-void
.end method

.method public setIsNonProductOfferAvailable(Z)V
    .locals 4
    .param p1, "isNonProductOfferAvailable"    # Z

    .prologue
    const-string v0, "setIsNonProductOfferAvailable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mIsNonProductOfferAvailable:Z

    .line 84
    return-void
.end method

.method public setOfferName(Ljava/lang/String;)V
    .locals 3
    .param p1, "offerName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setOfferName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mOfferName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setShowTotal(Z)V
    .locals 4
    .param p1, "showTotal"    # Z

    .prologue
    const-string v0, "setShowTotal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->mShowTotal:Z

    .line 43
    return-void
.end method
