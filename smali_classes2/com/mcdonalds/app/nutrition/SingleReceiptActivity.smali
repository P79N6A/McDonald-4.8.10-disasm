.class public Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "SingleReceiptActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 31
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;->finish()V

    .line 33
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.ordering.showCartAfterOrderAgain"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;->navigateToBasket()V

    .line 38
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 22
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    return-void
.end method
