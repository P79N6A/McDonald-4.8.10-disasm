.class public Lcom/mcdonalds/app/msa/MsaActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "MsaActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected changeFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "screen"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "changeFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getContainerResource()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/msa/MsaActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/msa/MsaActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void
.end method

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

    .line 49
    const-string v0, "msa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;-><init>()V

    .line 56
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "MsaEditFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/msa/MsaEditFragment;-><init>()V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 66
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 25
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 28
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/msa/MsaActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/msa/MsaActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 31
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 32
    return-void

    .line 23
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
