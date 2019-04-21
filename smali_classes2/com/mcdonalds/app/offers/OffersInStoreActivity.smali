.class public Lcom/mcdonalds/app/offers/OffersInStoreActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "OffersInStoreActivity.java"


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
    .line 16
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OffersInStoreActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 21
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OffersInStoreActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/offers/OffersInStoreActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    return-void
.end method
