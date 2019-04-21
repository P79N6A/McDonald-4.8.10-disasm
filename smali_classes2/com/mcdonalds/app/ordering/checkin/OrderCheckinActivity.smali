.class public Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "OrderCheckinActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method

.method private isValidFragment(Landroid/support/v4/app/Fragment;)Z
    .locals 4
    .param p1, "displayedFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isValidFragment"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    instance-of v2, p1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 158
    :cond_1
    return v0
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

    .line 52
    const-string v0, "ordercheckin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;-><init>()V

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v0, "one_time_order_checkin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;-><init>()V

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, "shouldFinishActivity":Z
    const/4 v0, 0x0

    .line 79
    .local v0, "classToLaunch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 81
    .local v2, "displayedFragment":Landroid/support/v4/app/Fragment;
    if-ne p2, v9, :cond_4

    .line 83
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->isValidFragment(Landroid/support/v4/app/Fragment;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v2

    .line 85
    check-cast v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .line 86
    .local v3, "fragment":Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    sparse-switch p1, :sswitch_data_0

    .line 144
    .end local v2    # "displayedFragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "fragment":Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->startActivity(Ljava/lang/Class;)V

    .line 148
    :cond_1
    if-eqz v7, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->finish()V

    .line 151
    :cond_2
    return-void

    .restart local v2    # "displayedFragment":Landroid/support/v4/app/Fragment;
    .restart local v3    # "fragment":Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    :sswitch_0
    move-object v4, v2

    .line 89
    check-cast v4, Lcom/mcdonalds/app/ordering/checkin/QRCodeListener;

    .line 90
    .local v4, "listener":Lcom/mcdonalds/app/ordering/checkin/QRCodeListener;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "result_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "code":Ljava/lang/String;
    invoke-interface {v4, v1}, Lcom/mcdonalds/app/ordering/checkin/QRCodeListener;->doneScanningCode(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "code":Ljava/lang/String;
    .end local v4    # "listener":Lcom/mcdonalds/app/ordering/checkin/QRCodeListener;
    :sswitch_1
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->resumeFromChoosePayment()V

    goto :goto_0

    .line 99
    :sswitch_2
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkin(Z)V

    goto :goto_0

    .line 103
    :sswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "PaymentSelectionFragment.DATA_KEY"

    .line 104
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 106
    .local v6, "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v3, v6}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->completeCheckIn(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_0

    .line 111
    .end local v6    # "selectedPayment":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :sswitch_4
    if-eqz p3, :cond_3

    .line 112
    sget-object v8, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, "productErrorCode":I
    :goto_1
    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->resumeFromAlert(I)V

    goto :goto_0

    .line 114
    .end local v5    # "productErrorCode":I
    :cond_3
    const/4 v5, -0x1

    .restart local v5    # "productErrorCode":I
    goto :goto_1

    .line 120
    .end local v5    # "productErrorCode":I
    :sswitch_5
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->resumeFromMismatch()V

    goto :goto_0

    .line 124
    :sswitch_6
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->totalizePayment()V

    goto :goto_0

    .line 128
    .end local v3    # "fragment":Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    :cond_4
    const/16 v8, 0x27

    if-ne p2, v8, :cond_5

    .line 129
    const-class v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    goto :goto_0

    .line 130
    :cond_5
    const/16 v8, 0x33

    if-ne p1, v8, :cond_6

    .line 132
    const/4 v7, 0x1

    goto :goto_0

    .line 133
    :cond_6
    const/16 v8, 0xff4

    if-ne p1, v8, :cond_7

    .line 134
    const/4 v7, 0x1

    goto :goto_0

    .line 135
    :cond_7
    const/16 v8, 0xff7

    if-ne p1, v8, :cond_8

    .line 136
    const/4 v7, 0x1

    .line 137
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    goto :goto_0

    .line 138
    :cond_8
    const/16 v8, 0xff2

    if-ne p1, v8, :cond_0

    .line 139
    instance-of v8, v2, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;

    if-eqz v8, :cond_0

    .line 140
    check-cast v2, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;

    .end local v2    # "displayedFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/checkin/OneTimeOrderCheckinFragment;->reset()V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_4
        0x33 -> :sswitch_0
        0xff1 -> :sswitch_3
        0xff2 -> :sswitch_1
        0xff4 -> :sswitch_2
        0xff7 -> :sswitch_5
        0x300f -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v3, 0x7f0907af

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 40
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 43
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    return-void

    .line 38
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

    .line 65
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ordering/IntentFragment;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/IntentFragment;

    .line 67
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/IntentFragment;
    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/IntentFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    .end local v0    # "fragment":Lcom/mcdonalds/app/ordering/IntentFragment;
    :cond_0
    return-void
.end method
