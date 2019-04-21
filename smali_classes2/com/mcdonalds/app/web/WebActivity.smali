.class public Lcom/mcdonalds/app/web/WebActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "WebActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const-string v2, "onBackPressed"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 45
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/mcdonalds/app/web/WebFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 46
    check-cast v1, Lcom/mcdonalds/app/web/WebFragment;

    .line 47
    .local v1, "webFragment":Lcom/mcdonalds/app/web/WebFragment;
    invoke-virtual {v1}, Lcom/mcdonalds/app/web/WebFragment;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/mcdonalds/app/web/WebFragment;->goBack()V

    .line 54
    .end local v1    # "webFragment":Lcom/mcdonalds/app/web/WebFragment;
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 22
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/web/WebFragment;

    const v3, 0x7f0907d4

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/web/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/web/WebFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/web/WebActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onResume()V

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 31
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "savedLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 34
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

    .line 38
    const/4 v0, 0x0

    return v0
.end method
