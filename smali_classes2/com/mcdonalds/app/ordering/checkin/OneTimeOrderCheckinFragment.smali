.class public Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;
.super Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
.source "OneTimeOrderCheckinFragment.java"


# instance fields
.field private mPaymentPrepared:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;-><init>()V

    .line 23
    return-void
.end method

.method private choosePayment()V
    .locals 6

    .prologue
    const-string v2, "choosePayment"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mCode:Ljava/lang/String;

    .line 61
    .local v0, "QRCode":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "qr_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/ordering/checkin/ChoosePaymentActivity;

    const-string v4, "choose_payment"

    const/16 v5, 0xff2

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 70
    return-void
.end method


# virtual methods
.method public getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const v0, 0x7f09089b

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 33
    const v1, 0x7f0400ef

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1100da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mMainView:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mMainView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_0
    const v1, 0x7f1100dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f1100de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mEatInButton:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mEatInButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f1100df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->setupTableServiceButton(Landroid/view/View;Landroid/view/View;)V

    .line 54
    :cond_0
    return-object v0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public preparePaymentAndCheckin()V
    .locals 2

    .prologue
    const-string v0, "preparePaymentAndCheckin"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mPaymentPrepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mPaymentPrepared:Z

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->choosePayment()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "reset"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mPaymentPrepared:Z

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mMainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
