.class public Lcom/mcdonalds/app/customer/SignUpZipCodeActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "SignUpZipCodeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpZipCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 25
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpZipCodeActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/customer/SignUpZipCodeFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/customer/SignUpZipCodeFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/customer/SignUpZipCodeActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 29
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    return v0
.end method
