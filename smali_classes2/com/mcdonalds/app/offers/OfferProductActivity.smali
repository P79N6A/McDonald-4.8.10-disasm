.class public Lcom/mcdonalds/app/offers/OfferProductActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "OfferProductActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    const v2, 0xb128

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/offers/OfferProductFragment;

    .line 51
    .local v0, "displayedFragment":Lcom/mcdonalds/app/offers/OfferProductFragment;
    if-eqz v0, :cond_0

    .line 52
    packed-switch p2, :pswitch_data_0

    .line 71
    .end local v0    # "displayedFragment":Lcom/mcdonalds/app/offers/OfferProductFragment;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v0    # "displayedFragment":Lcom/mcdonalds/app/offers/OfferProductFragment;
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 62
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->updateCustomizationText(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 59
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 27
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/offers/OfferProductActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v1, "onOptionsItemSelected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/offers/OfferProductFragment;

    .line 37
    .local v0, "offerProductFragment":Lcom/mcdonalds/app/offers/OfferProductFragment;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 41
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
