.class public Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "LiteSignInActivity.java"


# static fields
.field public static ARG_ACCOUNT_TYPE:Ljava/lang/String;

.field public static ARG_AUTH_TYPE:Ljava/lang/String;

.field public static ARG_IS_ADDING_NEW_ACCOUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "account_type"

    sput-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->ARG_ACCOUNT_TYPE:Ljava/lang/String;

    .line 21
    const-string v0, "auth_type"

    sput-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->ARG_AUTH_TYPE:Ljava/lang/String;

    .line 22
    const-string v0, "new_account"

    sput-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->ARG_IS_ADDING_NEW_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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

    .line 50
    const-string v0, "gmalite_sign_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;-><init>()V

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "signin_change_password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;-><init>()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 43
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    return-void
.end method

.method protected shouldAutoSetParentIntent()Z
    .locals 2

    .prologue
    const-string v0, "shouldAutoSetParentIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x0

    return v0
.end method
