.class public Lcom/mcdonalds/app/account/ChangeGenderActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ChangeGenderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/account/ChangeGenderFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/ChangeGenderActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 20
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeGenderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeGenderActivity;->getContainerResource()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x1

    return v0
.end method
