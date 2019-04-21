.class public Lcom/mcdonalds/app/firstload/SelectStoreActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "SelectStoreActivity.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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

    .line 51
    const-string v0, "store_locator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;-><init>()V

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;-><init>()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "fragment"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 31
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->getContainerResource()I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.mcdonalds.app.REMOVE_FIND_STORE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    new-instance v4, Lcom/mcdonalds/app/firstload/SelectStoreActivity$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/firstload/SelectStoreActivity$1;-><init>(Lcom/mcdonalds/app/firstload/SelectStoreActivity;)V

    iput-object v4, p0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void

    .line 26
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "screen":Ljava/lang/String;
    .end local v3    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onDestroy()V

    .line 62
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method
