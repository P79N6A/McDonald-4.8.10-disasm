.class public Lcom/mcdonalds/app/account/EditAddressActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "EditAddressActivity.java"


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

    .line 40
    const-string v0, "easyaddrui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;-><init>()V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;-><init>()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f0907a1

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/account/EditAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/account/EditAddressActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 32
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/EditAddressActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditAddressActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    return-void

    .line 27
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 51
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "savedLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 54
    .end local v0    # "savedLanguage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method
