.class public Lcom/mcdonalds/app/ordering/ProductChooserActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ProductChooserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    const v3, 0xb128

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;

    .line 41
    .local v0, "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    if-eqz v0, :cond_0

    .line 42
    packed-switch p2, :pswitch_data_0

    .line 60
    .end local v0    # "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    :cond_0
    :goto_0
    const v3, 0xfba4

    if-ne p1, v3, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;

    .line 63
    .restart local v0    # "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    if-eqz v0, :cond_1

    .line 65
    sparse-switch p2, :sswitch_data_0

    .line 93
    .end local v0    # "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    :cond_1
    :goto_1
    return-void

    .line 45
    .restart local v0    # "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 51
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_2
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->updateCustomizationText(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 49
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_2

    .line 67
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    .line 69
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 73
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_3
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->updateChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_1

    .line 71
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_3

    .line 77
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 83
    .restart local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_4
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->updateChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 84
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->doneAction()V

    goto :goto_1

    .line 81
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "RESULT_PRODUCT"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_4

    .line 88
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :sswitch_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->updateChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto/16 :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_2
        0xfba5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;

    .line 113
    .local v0, "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->doneAction()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "ARG_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 28
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getContainerResource()I

    move-result v2

    new-instance v3, Lcom/mcdonalds/app/ordering/ProductChooserFragment;

    invoke-direct {v3}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;-><init>()V

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 31
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 32
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

    nop

    nop

    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductChooserActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/ProductChooserFragment;

    .line 99
    .local v0, "displayedFragment":Lcom/mcdonalds/app/ordering/ProductChooserFragment;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 101
    :pswitch_0
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
