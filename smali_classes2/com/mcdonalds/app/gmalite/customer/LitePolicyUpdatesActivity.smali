.class public Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "LitePolicyUpdatesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    return-void
.end method

.method protected shouldAutoSetParentIntent()Z
    .locals 2

    .prologue
    const-string v0, "shouldAutoSetParentIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldNavigateUp()Z
    .locals 2

    .prologue
    const-string v0, "shouldNavigateUp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x0

    return v0
.end method
