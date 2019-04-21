.class public Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "OrderMethodSelectorActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$OnDeliveryMethodChangeDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainerResource()I
    .locals 2

    .prologue
    const-string v0, "getContainerResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    const v0, 0x7f1100bd

    return v0
.end method

.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const v0, 0x7f040024

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    new-instance v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->onBackPressed(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onDestroy()V

    .line 74
    return-void
.end method

.method public onDialogNegativeClick(Landroid/support/v4/app/DialogFragment;)V
    .locals 4
    .param p1, "dialog"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    const/4 v3, 0x0

    const-string v1, "onDialogNegativeClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 99
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->changeState(Z)V

    .line 101
    .end local v0    # "fragment":Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    :cond_0
    return-void
.end method

.method public onDialogPositiveClick(Landroid/support/v4/app/DialogFragment;)V
    .locals 6
    .param p1, "dialog"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onDialogPositiveClick"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 87
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 88
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 89
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 92
    .local v0, "fragment":Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->changeState(Z)V

    .line 94
    .end local v0    # "fragment":Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    :cond_0
    return-void
.end method

.method protected shouldAutoSetParentIntent()Z
    .locals 2

    .prologue
    const-string v0, "shouldAutoSetParentIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    return v0
.end method
