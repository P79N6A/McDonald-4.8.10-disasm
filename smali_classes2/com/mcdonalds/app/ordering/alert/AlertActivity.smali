.class public Lcom/mcdonalds/app/ordering/alert/AlertActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "AlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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

    .line 56
    const-string v0, "check_out_items_unavailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsUnavailableCheckoutAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsUnavailableCheckoutAlertFragment;-><init>()V

    .line 108
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string v0, "check_in_items_unavailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsUnavailableCheckinAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsUnavailableCheckinAlertFragment;-><init>()V

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "check_in_all_items_unavailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/AllItemsUnavailableCheckinAlertFragment;-><init>()V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "check_out_items_out_of_stock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkout/ItemsOutOfStockCheckoutAlertFragment;-><init>()V

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "check_out_pod_unavailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;-><init>()V

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "check_in_items_out_of_stock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsOutOfStockCheckinAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsOutOfStockCheckinAlertFragment;-><init>()V

    goto :goto_0

    .line 80
    :cond_5
    const-string v0, "check_in_items_time_restriction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsTimeRestrictionCheckinAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/ItemsTimeRestrictionCheckinAlertFragment;-><init>()V

    goto :goto_0

    .line 84
    :cond_6
    const-string v0, "check_in_price_different"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/PriceDifferentCheckInAlertFragment;-><init>()V

    goto :goto_0

    .line 88
    :cond_7
    const-string v0, "day_part_alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;-><init>()V

    goto :goto_0

    .line 92
    :cond_8
    const-string v0, "check_in_offers_not_valid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/OffersNotAvailableCheckinAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/OffersNotAvailableCheckinAlertFragment;-><init>()V

    goto :goto_0

    .line 96
    :cond_9
    const-string v0, "large_order_alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/LargeOrderAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderAlertFragment;-><init>()V

    goto/16 :goto_0

    .line 100
    :cond_a
    const-string v0, "large_order_call_alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;-><init>()V

    goto/16 :goto_0

    .line 104
    :cond_b
    const-string v0, "RestaurantMismatchFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    new-instance v0, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/alert/checkin/RestaurantMismatchFragment;-><init>()V

    goto/16 :goto_0

    .line 108
    :cond_c
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f0907a6

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 44
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 47
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/alert/AlertActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 51
    return-void

    .line 42
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
