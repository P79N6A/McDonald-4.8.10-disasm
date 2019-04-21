.class public Lcom/mcdonalds/app/account/ProfileUpdateActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ProfileUpdateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method

.method private updateFragment()V
    .locals 5

    .prologue
    const-string v3, "updateFragment"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 84
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 87
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->getContainerResource()I

    move-result v3

    .line 88
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    return-void

    .line 83
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

    .line 33
    sget-object v0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;-><init>()V

    .line 69
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;-><init>()V

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;-><init>()V

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "reset_password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    new-instance v0, Lcom/mcdonalds/app/account/ResetPasswordFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;-><init>()V

    goto :goto_0

    .line 49
    :cond_3
    const-string v0, "mail_validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;-><init>()V

    goto :goto_0

    .line 53
    :cond_4
    const-string v0, "mobile_take_over"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    new-instance v0, Lcom/mcdonalds/app/account/MobileTakeOverFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/MobileTakeOverFragment;-><init>()V

    goto :goto_0

    .line 57
    :cond_5
    const-string v0, "email_take_over"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    new-instance v0, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;-><init>()V

    goto :goto_0

    .line 61
    :cond_6
    const-string v0, "reset_password_confirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    new-instance v0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;-><init>()V

    goto :goto_0

    .line 65
    :cond_7
    const-string v0, "mobile_verify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    new-instance v0, Lcom/mcdonalds/app/customer/MobileVerifyFragmet;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/MobileVerifyFragmet;-><init>()V

    goto :goto_0

    .line 69
    :cond_8
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->updateFragment()V

    .line 23
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->setIntent(Landroid/content/Intent;)V

    .line 28
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ProfileUpdateActivity;->updateFragment()V

    .line 29
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
