.class public Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;
.super Ljava/lang/Object;
.source "OrderSummaryHeader.java"


# instance fields
.field private final mDisplayMessageContainer:Landroid/widget/LinearLayout;

.field private final mDisplayMessageContainerCash:Landroid/widget/LinearLayout;

.field private final mEDTContainer:Landroid/widget/LinearLayout;

.field private final mEstimatedDeliveryTime:Landroid/widget/TextView;

.field private final mEstimatedDeliveryTimeMessage:Landroid/widget/TextView;

.field private final mOrderDisplayMessage:Landroid/widget/TextView;

.field private final mOrderNumber:Landroid/widget/TextView;

.field private final mOrderPlaced:Landroid/widget/TextView;

.field private final mOrderPlacedMessage:Landroid/widget/TextView;

.field private final mOrderReceivedTime:Landroid/widget/TextView;

.field private final mTrackOrderButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const v0, 0x7f1104d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlaced:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f1104d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlacedMessage:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f1102ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderNumber:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f1104e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderDisplayMessage:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f1104de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mDisplayMessageContainerCash:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f1104e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mDisplayMessageContainer:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f1104d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEDTContainer:Landroid/widget/LinearLayout;

    .line 48
    const v0, 0x7f1104db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderReceivedTime:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f1104dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEstimatedDeliveryTimeMessage:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f1104dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEstimatedDeliveryTime:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f1104e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mTrackOrderButton:Landroid/widget/Button;

    .line 53
    return-void
.end method


# virtual methods
.method public getDisplayMessageContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getDisplayMessageContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mDisplayMessageContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getDisplayMessageContainerCash()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getDisplayMessageContainerCash"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mDisplayMessageContainerCash:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getEDTContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getEDTContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEDTContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getEstimatedDeliveryTime()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getEstimatedDeliveryTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEstimatedDeliveryTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEstimatedDeliveryTimeMessage()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getEstimatedDeliveryTimeMessage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mEstimatedDeliveryTimeMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOrderNumber()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOrderNumber"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOrderReceivedTime()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOrderReceivedTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderReceivedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTrackOrderButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getTrackOrderButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mTrackOrderButton:Landroid/widget/Button;

    return-object v0
.end method

.method public showLargeOrderAlert(ZLandroid/content/Context;Ljava/util/Date;)V
    .locals 7
    .param p1, "isDelivery"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orderDate"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "showLargeOrderAlert"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlaced:Landroid/widget/TextView;

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v2, 0x7f09061c

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "orderDisplayMsg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderDisplayMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlacedMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.confirmationNeededOrders.callCenterCallsUser"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlacedMessage:Landroid/widget/TextView;

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.confirmationNeededOrders.deliveryCallCenter"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlacedMessage:Landroid/widget/TextView;

    const v3, 0x7f0900be

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.confirmationNeededOrders.mcdonaldsCallCenter"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->mOrderPlacedMessage:Landroid/widget/TextView;

    const v3, 0x7f0900bc

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
