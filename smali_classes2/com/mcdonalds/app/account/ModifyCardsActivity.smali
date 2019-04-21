.class public Lcom/mcdonalds/app/account/ModifyCardsActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ModifyCardsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 22
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 25
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f0907a9

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 34
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 44
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "savedLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 47
    .end local v0    # "savedLanguage":Ljava/lang/String;
    :cond_0
    return-void
.end method
