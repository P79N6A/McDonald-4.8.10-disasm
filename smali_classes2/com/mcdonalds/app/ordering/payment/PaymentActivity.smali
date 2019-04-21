.class public Lcom/mcdonalds/app/ordering/payment/PaymentActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "PaymentActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/payment/PaymentView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;
    }
.end annotation


# instance fields
.field public binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

.field private initialized:Z

.field private mDataBindingComponent:Landroid/databinding/DataBindingComponent;

.field private mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 585
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$17;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$17;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mDataBindingComponent:Landroid/databinding/DataBindingComponent;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    return-object v0
.end method


# virtual methods
.method public backToBasket()V
    .locals 2

    .prologue
    const-string v0, "backToBasket"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public continueToBagCharges()V
    .locals 2

    .prologue
    const-string v0, "continueToBagCharges"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-class v0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    const/16 v1, 0x2a8c

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;I)V

    .line 246
    return-void
.end method

.method public continueToOrderSummary()V
    .locals 2

    .prologue
    const-string v0, "continueToOrderSummary"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    const-class v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryActivity;

    const-string v1, "order_summary"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public continueToTableServices()V
    .locals 2

    .prologue
    const-string v0, "continueToTableServices"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    const-class v0, Lcom/mcdonalds/app/ordering/checkin/TableServiceActivity;

    const/16 v1, 0x300f

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;I)V

    .line 241
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const-string v0, "finish"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->finish()V

    .line 458
    return-void
.end method

.method public getActivityForAlipay()Landroid/app/Activity;
    .locals 2

    .prologue
    const-string v0, "getActivityForAlipay"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    if-ne p2, v5, :cond_2

    .line 512
    sparse-switch p1, :sswitch_data_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 515
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "code":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setQRCodeScanned(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v0    # "code":Ljava/lang/String;
    :sswitch_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->paymentSelected()V

    goto :goto_0

    .line 524
    :sswitch_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->thirdPartyFinished()V

    goto :goto_0

    .line 528
    :sswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PaymentSelectionFragment.DATA_KEY"

    .line 529
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 531
    .local v3, "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->paymentSelected(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_0

    .line 536
    .end local v3    # "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :sswitch_4
    if-eqz p3, :cond_1

    .line 537
    sget-object v4, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 542
    .local v2, "productErrorCode":I
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->outOfStockErrorResolved(I)V

    goto :goto_0

    .line 539
    .end local v2    # "productErrorCode":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "productErrorCode":I
    goto :goto_1

    .line 546
    .end local v2    # "productErrorCode":I
    :sswitch_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->backToBasket()V

    goto :goto_0

    .line 550
    :sswitch_6
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->restaurantMismatchResolved()V

    goto :goto_0

    .line 554
    :sswitch_7
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->tableServicesFinished(Z)V

    goto :goto_0

    .line 558
    :sswitch_8
    const-string v4, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "jsonCardInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->paymentInfoEntered(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    .end local v1    # "jsonCardInfo":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x27

    if-ne p2, v4, :cond_3

    .line 564
    const-class v4, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 565
    :cond_3
    const/16 v4, 0x33

    if-ne p1, v4, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    goto :goto_0

    .line 568
    :cond_4
    const/16 v4, 0x300f

    if-ne p1, v4, :cond_5

    .line 569
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->tableServicesFinished(Z)V

    goto :goto_0

    .line 570
    :cond_5
    const/16 v4, 0xff4

    if-ne p1, v4, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    goto :goto_0

    .line 572
    :cond_6
    const/16 v4, 0xff7

    if-ne p1, v4, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->backToBasket()V

    .line 574
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    goto/16 :goto_0

    .line 575
    :cond_7
    const/16 v4, 0x16

    if-ne p1, v4, :cond_8

    .line 576
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->backToBasket()V

    .line 577
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    goto/16 :goto_0

    .line 578
    :cond_8
    const/16 v4, 0x3ca1

    if-ne p2, v4, :cond_9

    .line 579
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->handlePaymentRegistrationError()V

    goto/16 :goto_0

    .line 580
    :cond_9
    const v4, 0xa733

    if-ne p1, v4, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    goto/16 :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x33 -> :sswitch_0
        0xff1 -> :sswitch_3
        0xff2 -> :sswitch_1
        0xff4 -> :sswitch_2
        0xff7 -> :sswitch_6
        0x300f -> :sswitch_7
        0xa733 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f04002a

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mDataBindingComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, v2, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;ILandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    .line 84
    const v2, 0x7f0907af

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->setTitle(I)V

    .line 87
    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {v2, p0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/payment/PaymentView;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    const-string v2, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, "fromBagCharge":Z
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setComingFromBagCharges(Z)V

    .line 94
    .end local v1    # "fromBagCharge":Z
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->setPresenter(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    .line 96
    if-eqz p1, :cond_1

    .line 97
    const-string v2, "initialized"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->initialized:Z

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->initialized:Z

    if-nez v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->initialize()V

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v2, v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->eatinButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v2, v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->eatinButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$1;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v2, v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v2, v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$2;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v2, v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->tableServiceButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$3;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->onStart()V

    .line 129
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->initialized:Z

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->onStop()V

    .line 137
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "onNewIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 150
    const-string v2, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 151
    .local v1, "fromBagCharge":Z
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setComingFromBagCharges(Z)V

    .line 153
    .end local v1    # "fromBagCharge":Z
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->initialize()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 604
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 605
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->eatinButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->binding:Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 607
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v0, "initialized"

    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->initialized:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public openThirdPartyPaymentUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "openThirdPartyPaymentUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "payment_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-class v1, Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    const/16 v2, 0xff4

    invoke-virtual {p0, v1, v0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 467
    return-void
.end method

.method public requestCVV(I)V
    .locals 6
    .param p1, "maxLength"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "requestCVV"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "input":Landroid/widget/EditText;
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 252
    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 254
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090201

    .line 255
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0901f3

    .line 256
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$8;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;Landroid/widget/EditText;)V

    .line 259
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090145

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$7;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$7;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 265
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method public requestPassword()V
    .locals 4

    .prologue
    const-string v1, "requestPassword"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "input":Landroid/widget/EditText;
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 282
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090203

    .line 283
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0901f4

    .line 284
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$10;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;Landroid/widget/EditText;)V

    .line 287
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090145

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$9;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$9;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 293
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 301
    return-void
.end method

.method public requestPaymentInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "registerReturnURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v1, "requestPaymentInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    const-string v1, "EXTRA_REGISTER_RETURN_URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-class v1, Lcom/mcdonalds/app/ordering/PaymentProviderActivity;

    const v2, 0xa733

    invoke-virtual {p0, v1, v0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 505
    return-void
.end method

.method public scanQRCode()V
    .locals 4

    .prologue
    const-string v1, "scanQRCode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-class v1, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;

    const-string v2, "qrscan"

    const/16 v3, 0x33

    invoke-virtual {p0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 181
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 176
    .local v0, "cameraPermisionListener":Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x2

    const v3, 0x7f090624

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    goto :goto_0
.end method

.method public showActivityIndicator(I)V
    .locals 4
    .param p1, "messageResourceId"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "showActivityIndicator"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public showCashNotAcceptedAtCurbsideError()V
    .locals 3

    .prologue
    const-string v0, "showCashNotAcceptedAtCurbsideError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09019c

    .line 397
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09019d

    .line 398
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$15;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$15;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090145

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$14;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$14;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 407
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 416
    return-void
.end method

.method public showFatalError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "showFatalError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->showFatalError(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public showFatalError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "showFatalError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const v0, 0x7f09030d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090121

    .line 351
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$11;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$11;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 359
    return-void
.end method

.method public showInvalidQRCodeError()V
    .locals 3

    .prologue
    const-string v0, "showInvalidQRCodeError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0900b4

    .line 186
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09028a

    .line 187
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$5;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 198
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Invalid QR code"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public showInvalidRestaurantError()V
    .locals 3

    .prologue
    const-string v0, "showInvalidRestaurantError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0900b4

    .line 204
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090320

    .line 205
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$6;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 216
    return-void
.end method

.method public showLargeOrderAlert()V
    .locals 2

    .prologue
    const-string v0, "showLargeOrderAlert"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {p0}, Lcom/mcdonalds/app/util/AppUtils;->showLargeOrderAlert(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 472
    return-void
.end method

.method public showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V
    .locals 7
    .param p1, "errorType"    # I
    .param p2, "productErrorCode"    # I
    .param p5, "hidePositive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "problematicOfferCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "showOrderErrors"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 306
    const-string v1, ""

    .line 307
    .local v1, "fragmentName":Ljava/lang/String;
    const/16 v2, 0x15

    .line 308
    .local v2, "requestCode":I
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    sget-object v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    sget-object v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "problematicOfferCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    const-class v3, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 339
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 310
    .restart local p3    # "problematicProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "problematicOfferCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v1, "check_in_items_out_of_stock"

    .line 311
    goto :goto_0

    .line 313
    :pswitch_1
    const-string v1, "check_in_items_unavailable"

    .line 314
    goto :goto_0

    .line 316
    :pswitch_2
    const-string v1, "check_in_items_time_restriction"

    .line 317
    goto :goto_0

    .line 319
    :pswitch_3
    const-string v1, "check_in_offers_not_valid"

    .line 320
    goto :goto_0

    .line 322
    :pswitch_4
    const-string v1, "check_in_price_different"

    .line 323
    goto :goto_0

    .line 325
    :pswitch_5
    const-string v1, "check_in_all_items_unavailable"

    .line 326
    const/16 v2, 0x16

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showOrderNotReadyError()V
    .locals 3

    .prologue
    const-string v0, "showOrderNotReadyError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09030f

    .line 370
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090106

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$12;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$12;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 371
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setPositiveButtonText(ILandroid/view/View$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 377
    return-void
.end method

.method public showOrderNotReadyToAcceptError()V
    .locals 4

    .prologue
    const-string v1, "showOrderNotReadyToAcceptError"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09030f

    .line 382
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090104

    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$13;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$13;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 383
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setPositiveButtonText(ILandroid/view/View$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 391
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 392
    return-void
.end method

.method public showOrderUnavailableAtPODError()V
    .locals 2

    .prologue
    const-string v0, "showOrderUnavailableAtPODError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const-class v0, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v1, "check_out_pod_unavailable"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public showPaymentChooser(Ljava/lang/String;)V
    .locals 4
    .param p1, "qrCode"    # Ljava/lang/String;

    .prologue
    const-string v1, "showPaymentChooser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "qr_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-class v1, Lcom/mcdonalds/app/ordering/checkin/ChoosePaymentActivity;

    const-string v2, "choose_payment"

    const/16 v3, 0xff2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 429
    return-void
.end method

.method public showPaymentError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const-string v2, "showPaymentError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    new-instance v1, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$16;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$16;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V

    .line 487
    .local v1, "positiveBtn":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, p2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    .line 489
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 491
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 495
    return-void
.end method

.method public showPaymentSelection(Ljava/util/LinkedHashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentModes":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;>;"
    const/4 v4, 0x1

    const-string v1, "showPaymentSelection"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "FROM_ORDER_CHECKIN"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v1, "payment_types"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 437
    const-class v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;

    const-string v2, "select_payment"

    const/16 v3, 0xff1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 443
    return-void
.end method

.method public showRestaurantMismatchError()V
    .locals 3

    .prologue
    const-string v0, "showRestaurantMismatchError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const-class v0, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v1, "RestaurantMismatchFragment"

    const/16 v2, 0xff7

    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 236
    return-void
.end method

.method public stopActivityIndicator()V
    .locals 2

    .prologue
    const-string v0, "stopActivityIndicator"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 226
    return-void
.end method
