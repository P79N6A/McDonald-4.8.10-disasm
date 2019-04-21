.class public Lcom/mcdonalds/app/account/DeleteAccountActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "DeleteAccountActivity.java"


# instance fields
.field mCanExitActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountActivity;->mCanExitActivity:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountActivity;->mCanExitActivity:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onBackPressed()V

    .line 32
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/account/DeleteAccountFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/account/DeleteAccountActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 23
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 24
    return-void
.end method

.method public onNavigateUp()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-string v0, "onNavigateUp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountActivity;->mCanExitActivity:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onNavigateUp()Z

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCanExitActivity(Z)V
    .locals 4
    .param p1, "canExitActivity"    # Z

    .prologue
    const-string v0, "setCanExitActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/DeleteAccountActivity;->mCanExitActivity:Z

    .line 47
    return-void
.end method
