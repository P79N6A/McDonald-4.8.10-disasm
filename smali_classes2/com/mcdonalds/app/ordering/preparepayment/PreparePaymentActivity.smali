.class public Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "PreparePaymentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "screen"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "getScreenFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const-string v0, "prepare_payment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;-><init>()V

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "prepare_one_time_payment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;-><init>()V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x27

    const/4 v4, -0x1

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;

    .line 60
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;
    const/16 v3, 0xff1

    if-ne p1, v3, :cond_2

    if-ne p2, v4, :cond_2

    .line 63
    const-string v3, "Cash"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->cashAsPayment()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PaymentSelectionFragment.DATA_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 70
    .local v1, "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_0

    .line 72
    .end local v1    # "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_2
    if-ne p2, v5, :cond_3

    .line 73
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->finish()V

    goto :goto_0

    .line 75
    :cond_3
    const/16 v3, 0x25

    if-ne p1, v3, :cond_0

    if-ne p2, v4, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 78
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 31
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 34
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 37
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 38
    return-void

    .line 29
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ordering/IntentFragment;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/IntentFragment;

    .line 90
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/IntentFragment;
    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/IntentFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    .end local v0    # "fragment":Lcom/mcdonalds/app/ordering/IntentFragment;
    :cond_0
    return-void
.end method
