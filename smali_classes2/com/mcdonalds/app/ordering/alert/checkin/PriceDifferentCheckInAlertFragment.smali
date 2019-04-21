.class public Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;
.source "PriceDifferentCheckInAlertFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;-><init>()V

    return-void
.end method

.method private getOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getOrderResponse"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private hasPriceChanged()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const-string v5, "hasPriceChanged"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 61
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 62
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 63
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 64
    .local v2, "totalizeTotalValue":D
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 66
    .local v0, "paymentTotalValue":D
    sub-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    const/4 v4, 0x1

    .line 68
    .end local v0    # "paymentTotalValue":D
    .end local v2    # "totalizeTotalValue":D
    :cond_0
    return v4
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const v0, 0x7f04009c

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x178b

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 35
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f11027c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "newPriceAlert":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getOutOfStockAndUnavailableProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->hasPriceChanged()Z

    move-result v5

    if-nez v5, :cond_1

    .line 38
    const v5, 0x7f0900b6

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    const v5, 0x7f11027d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "newPriceView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v3

    .line 46
    .local v3, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 47
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "newTotal":Ljava/lang/String;
    const v5, 0x7f090579

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    .end local v2    # "newTotal":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 54
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mBundle:Landroid/os/Bundle;

    sget-object v6, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    return-object v4

    .line 40
    .end local v1    # "newPriceView":Landroid/widget/TextView;
    .end local v3    # "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    :cond_1
    const v5, 0x7f090776

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPositiveButtonClicked()V
    .locals 3

    .prologue
    const-string v1, "onPositiveButtonClicked"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeBeforeCheckin(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 82
    return-void
.end method
