.class public Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
.super Ljava/lang/Object;
.source "BasketSubtotalItemViewHolder.java"


# instance fields
.field private mAlertIcon:Landroid/widget/ImageView;

.field private mDeliveryFeeAmount:Landroid/widget/TextView;

.field private mDeliveryFeeContainer:Landroid/view/View;

.field private mDeliveryFeeOfferContainer:Landroid/view/View;

.field private mDeliveryFeeOfferDiscountAmount:Landroid/widget/TextView;

.field private mDeliveryFeeOfferTitle:Landroid/widget/TextView;

.field private mEditContainer:Landroid/view/View;

.field private mNotAvailableWarning:Landroid/widget/TextView;

.field private mOfferName:Landroid/widget/TextView;

.field private mOfferUnavailableContainer:Landroid/view/View;

.field private mOfferWillApply:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSubtotalContainer:Landroid/view/View;

.field private mSubtotalEnergy:Landroid/widget/TextView;

.field private mSubtotalPrice:Landroid/widget/TextView;

.field private mTotalAmount:Landroid/widget/TextView;

.field private mTotalContainer:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeContainer:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeAmount:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferContainer:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferTitle:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferDiscountAmount:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1100a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalContainer:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalEnergy:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalPrice:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f11011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mEditContainer:Landroid/view/View;

    .line 49
    const v0, 0x7f11011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mRemoveButton:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferUnavailableContainer:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferName:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1100b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mAlertIcon:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mNotAvailableWarning:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1100ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mTotalContainer:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mTotalAmount:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferWillApply:Landroid/widget/TextView;

    .line 59
    return-void
.end method


# virtual methods
.method public getAlertIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getAlertIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mAlertIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDeliveryFeeAmount()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeAmount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeliveryFeeContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeContainer:Landroid/view/View;

    return-object v0
.end method

.method public getDeliveryFeeOfferContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeOfferContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferContainer:Landroid/view/View;

    return-object v0
.end method

.method public getDeliveryFeeOfferDiscountAmount()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeOfferDiscountAmount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferDiscountAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeliveryFeeOfferTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFeeOfferTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mDeliveryFeeOfferTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getEditContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mEditContainer:Landroid/view/View;

    return-object v0
.end method

.method public getNotAvailableWarning()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getNotAvailableWarning"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mNotAvailableWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOfferName()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOfferName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOfferUnavailableContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getOfferUnavailableContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferUnavailableContainer:Landroid/view/View;

    return-object v0
.end method

.method public getOfferWillApply()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOfferWillApply"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mOfferWillApply:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRemoveButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getRemoveButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mRemoveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSubtotalContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getSubtotalContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSubtotalEnergy()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getSubtotalEnergy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalEnergy:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubtotalPrice()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getSubtotalPrice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mSubtotalPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTotalAmount()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTotalAmount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mTotalAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTotalContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getTotalContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->mTotalContainer:Landroid/view/View;

    return-object v0
.end method
