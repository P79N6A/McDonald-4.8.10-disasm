.class public Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "StoreNicknamingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 17
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;->getContainerResource()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 19
    return-void
.end method
