.class public Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "StoreLocatorFiltersActivity.java"


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
    .line 18
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f0907c6

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 23
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 27
    return-void
.end method

.method public onNavigateUp()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-string v1, "onNavigateUp"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .line 35
    .local v0, "storeLocatorFiltersFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->performNewLocationSearch()V

    .line 39
    .end local v0    # "storeLocatorFiltersFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;->finish()V

    .line 44
    const/4 v1, 0x1

    return v1
.end method
