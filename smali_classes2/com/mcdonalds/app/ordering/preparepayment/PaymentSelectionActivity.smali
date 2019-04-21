.class public Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "PaymentSelectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    .line 52
    .local v2, "fragment":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;
    const/4 v9, -0x1

    if-ne p2, v9, :cond_2

    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, "isOneTimePayment":Z
    const/4 v5, 0x0

    .line 55
    .local v5, "jsonCardInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    const v9, 0xa733

    if-ne p1, v9, :cond_4

    .line 57
    if-eqz p3, :cond_0

    .line 58
    const-string v9, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 71
    :cond_0
    :goto_0
    if-eqz v4, :cond_d

    if-nez v5, :cond_1

    if-eqz v0, :cond_d

    .line 72
    :cond_1
    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->proceedWithOneTimePayment(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 102
    .end local v0    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v4    # "isOneTimePayment":Z
    .end local v5    # "jsonCardInfo":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 59
    .restart local v0    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .restart local v4    # "isOneTimePayment":Z
    .restart local v5    # "jsonCardInfo":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 61
    :cond_4
    const v9, 0xa737

    if-ne p1, v9, :cond_5

    .line 62
    if-eqz p3, :cond_0

    .line 63
    const-string v9, "one_time_payment"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 64
    const-string v9, "json_card_info"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 66
    :cond_5
    const v9, 0xa734

    if-ne p1, v9, :cond_0

    .line 67
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v9

    const-string v10, "EXTRA_ONE_TIME_PAYMENT_CARD_DATA"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 68
    .restart local v0    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    if-eqz v0, :cond_6

    const/4 v4, 0x1

    :goto_2
    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 75
    :cond_7
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 76
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v9, Ljava/util/HashMap;

    instance-of v10, v3, Lcom/google/gson/Gson;

    if-nez v10, :cond_8

    invoke-virtual {v3, v5, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_3
    check-cast v8, Ljava/util/Map;

    .line 77
    .local v8, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "ResultCode"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 78
    .local v7, "resultCodeDouble":Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 79
    const-string v9, "Data"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 81
    .local v1, "cardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    .line 82
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    .line 83
    .local v6, "oneTimeCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    const-string v9, "CardAlias"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setAlias(Ljava/lang/String;)V

    .line 84
    const-string v9, "CardExpiration"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setExpiration(Ljava/lang/String;)V

    .line 85
    const-string v9, "CardHolderName"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setHolderName(Ljava/lang/String;)V

    .line 86
    const-string v9, "CustomerPaymentMethodId"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v9, "CustomerPaymentMethodId"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4
    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIdentifier(Ljava/lang/Integer;)V

    .line 87
    const-string v9, "IsPreferred"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 88
    const-string v9, "IsExpired"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsValid(Ljava/lang/Boolean;)V

    .line 89
    const-string v9, "NickName"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 90
    const-string v9, "PaymentMethodId"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v9, "PaymentMethodId"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_6
    invoke-virtual {v6, v9}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setPaymentMethodId(Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->proceedWithOneTimePayment(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto/16 :goto_1

    .line 76
    .end local v1    # "cardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "oneTimeCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v7    # "resultCodeDouble":Ljava/lang/Double;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_8
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v5, v9}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    .line 86
    .restart local v1    # "cardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "oneTimeCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .restart local v7    # "resultCodeDouble":Ljava/lang/Double;
    .restart local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 88
    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 90
    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    .line 95
    .end local v1    # "cardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "oneTimeCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_1

    .line 99
    .end local v7    # "resultCodeDouble":Ljava/lang/Double;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->paymentsUpdated()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f0907b3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 39
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    return-void
.end method
