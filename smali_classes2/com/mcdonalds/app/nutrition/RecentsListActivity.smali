.class public Lcom/mcdonalds/app/nutrition/RecentsListActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "RecentsListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f0907b8

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 18
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/nutrition/RecentsListFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/nutrition/RecentsListFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 21
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    return-void
.end method
