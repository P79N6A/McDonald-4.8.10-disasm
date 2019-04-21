.class public Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;
.super Ljava/lang/Object;
.source "DeliveryTimeHolder.java"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mDeliveryFee:Landroid/widget/TextView;

.field private mDeliveryFeeLabel:Landroid/widget/TextView;

.field private mDeliveryTimeView:Landroid/view/View;

.field private mDisclosureIcon:Landroid/widget/ImageView;

.field private mEstimatedArrival:Landroid/widget/TextView;

.field private mEstimatedArrivalLabel:Landroid/widget/TextView;

.field private mTimeLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mContainer:Landroid/view/View;

    .line 29
    const v0, 0x7f110170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDeliveryTimeView:Landroid/view/View;

    .line 31
    const v0, 0x7f110172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mTimeLabel:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f110173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDisclosureIcon:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f110175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mEstimatedArrivalLabel:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f110176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mEstimatedArrival:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f110127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDeliveryFeeLabel:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f11009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDeliveryFee:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getDeliveryFee()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDeliveryFee:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeliveryTimeView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getDeliveryTimeView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDeliveryTimeView:Landroid/view/View;

    return-object v0
.end method

.method public getDisclosureIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getDisclosureIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mDisclosureIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setDeliveryHeaderText(Landroid/text/Spanned;)V
    .locals 3
    .param p1, "headerText"    # Landroid/text/Spanned;

    .prologue
    const-string v0, "setDeliveryHeaderText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->mTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
