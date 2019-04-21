.class public Lcom/mcdonalds/app/customer/push/OffersRequestActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "OffersRequestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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

    .line 38
    const-string v0, "mail_validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;-><init>()V

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v0, "mail_resend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;-><init>()V

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;-><init>()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "fragment"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 30
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->getContainerResource()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 33
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 34
    return-void

    .line 25
    .end local v1    # "screen":Ljava/lang/String;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
