.class public Lcom/mcdonalds/app/ordering/basket/BasketActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "BasketActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .line 25
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    sget-object v1, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOrder()V

    .line 29
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshStoreInfoAndDeliveryFee()V

    .line 30
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->prepareEditMode()V

    .line 31
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 34
    :cond_0
    sget-object v1, Lcom/mcdonalds/app/offers/OfferFragment;->REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 39
    :cond_3
    const/16 v1, 0x27

    if-eq p2, v1, :cond_4

    const/16 v1, 0x3b67

    if-ne p2, v1, :cond_5

    .line 40
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->finish()V

    .line 43
    :cond_5
    const/16 v1, 0x31ba

    if-ne p1, v1, :cond_6

    .line 44
    if-ne p2, v2, :cond_6

    .line 45
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->removeUnavailableItemsComplete()V

    .line 49
    :cond_6
    const/16 v1, 0x28

    if-ne p1, v1, :cond_7

    .line 50
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOrder()V

    .line 51
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOrderMethodSelectionHeader()V

    .line 52
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshStoreInfoAndDeliveryFee()V

    .line 53
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->totalize()V

    .line 56
    :cond_7
    const/16 v1, 0x9a

    if-ne p1, v1, :cond_8

    .line 57
    if-ne p2, v2, :cond_9

    .line 58
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 66
    :cond_8
    :goto_0
    return-void

    .line 59
    :cond_9
    if-nez p2, :cond_a

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->preparePayment(Z)V

    goto :goto_0

    .line 61
    :cond_a
    const/16 v1, 0x64

    if-ne p1, v1, :cond_8

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->preparePayment(Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "onBackPressed"

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .line 85
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isEditMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->closeEdit(Landroid/view/MenuItem;)V

    .line 87
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->editDone()V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f0907ae

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 75
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/basket/BasketActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    return-void
.end method
