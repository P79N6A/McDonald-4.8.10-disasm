.class public Lcom/mcdonalds/app/MainActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "MainActivity.java"


# instance fields
.field private validAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    return-void
.end method

.method private initValidAuthorities()V
    .locals 2

    .prologue
    const-string v0, "initValidAuthorities"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "store_locator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "account_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "menu_grid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "menu_grid_food"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "recents_grid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "favorites_grid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "start_order"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "start_order_delivery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "signout"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "sign_up"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "signin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "tutorial"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "register"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "web"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "about_mcd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "about_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "config_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "location_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "nutrition_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "nutrition_item"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "mail_resend"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "mail_validation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "gmalite_signin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "gmalite_sign_up"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "literesetpassword"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "litepolicyupdates"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "lite_account_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "liteverifyemail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "msa_not_logged_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    const-string v1, "msa_logged_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method private normalizeFragmentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const-string v1, "normalizeFragmentName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v1, p0, Lcom/mcdonalds/app/MainActivity;->validAuthorities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    const-string v1, "account_settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 474
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const-string p1, "signin"

    .line 495
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local p1    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 481
    .restart local p1    # "authority":Ljava/lang/String;
    :cond_1
    const-string v1, "nutritional_category"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 482
    const-string v1, "nutritionInfo"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    const-string p1, "nutrition_list"

    goto :goto_0

    .line 486
    :cond_2
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    const-string p1, "start_order"

    goto :goto_0

    .line 490
    :cond_3
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    const-string p1, "start_order_delivery"

    goto :goto_0

    .line 495
    :cond_4
    const-string p1, "dashboard"

    goto :goto_0
.end method

.method private openLink(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const-string v7, "openLink"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 309
    invoke-direct {p0, p3}, Lcom/mcdonalds/app/MainActivity;->startNutrition(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 310
    invoke-direct {p0, p3}, Lcom/mcdonalds/app/MainActivity;->showOffer(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 311
    invoke-direct {p0, p3}, Lcom/mcdonalds/app/MainActivity;->showWebLink(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 313
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "authority":Ljava/lang/String;
    const-string v7, "store_locator"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-nez v7, :cond_1

    .line 320
    const-class v7, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;)V

    .line 412
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_1
    const-string v7, "latest_order"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 327
    const-class v7, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string v7, "myvoice"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 330
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "kodo.app.mcdhk"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 331
    .local v4, "intentForPackage":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 332
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "market://details?id=kodo.app.mcdhk"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    .local v6, "viewIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    .line 336
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    :cond_4
    const v7, 0x7f090583

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 342
    .end local v4    # "intentForPackage":Landroid/content/Intent;
    .end local v6    # "viewIntent":Landroid/content/Intent;
    :cond_5
    const-string v7, "whats_more"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 343
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "language":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 345
    const-string v7, "link"

    const-string v8, "http://campaign.mcdonalds.com.hk/GMA/explore-tc.html"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_1
    const-string v7, "view_title"

    const v8, 0x7f0900f3

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-class v7, Lcom/mcdonalds/app/web/WebHamburgerActivity;

    const-string v8, "web"

    invoke-virtual {p0, v7, v8, p1}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 347
    :cond_6
    const-string v7, "link"

    const-string v8, "http://campaign.mcdonalds.com.hk/GMA/explore-en.html"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    .end local v5    # "language":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/MainActivity;->normalizeFragmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "fragmentName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_8

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 361
    :cond_8
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 362
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-nez v7, :cond_9

    const-string v7, "msa_logged_in"

    .line 363
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 365
    const-class v7, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v8, 0x69b

    invoke-virtual {p0, v7, v8}, Lcom/mcdonalds/app/MainActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 371
    :cond_9
    sget-object v7, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->ENDPOINTS:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 373
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 374
    if-nez p1, :cond_a

    .line 375
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 378
    .restart local p1    # "extras":Landroid/os/Bundle;
    :cond_a
    const-string v7, "Uri"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.home"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "home":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 382
    .local v2, "goingHome":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    if-nez v2, :cond_b

    .line 384
    const-string v7, "mcdmobileapp://"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v7, "interface.home"

    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v2    # "goingHome":Z
    .end local v3    # "home":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, v1, p1}, Lcom/mcdonalds/app/MainActivity;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 395
    :cond_c
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 396
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-nez v7, :cond_e

    const-string v7, "recents_grid"

    .line 397
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "favorites_grid"

    .line 398
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 400
    :cond_d
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "GO_TO_MENU_LINK"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-class v7, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v8, 0x4c7

    invoke-virtual {p0, v7, v8}, Lcom/mcdonalds/app/MainActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 405
    :cond_e
    const-class v7, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p0, v7, v1}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_f
    const-class v7, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p0, v7, v1}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showOffer(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "showOffer"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "offer_detail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 438
    .local v1, "uri":Landroid/net/Uri;
    const-string v4, "offerId"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "offerId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/mcdonalds/app/navigation/NavigationManager;->showOffer(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    .end local v0    # "offerId":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private showWebLink(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "showWebLink"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "external_link"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, "uri":Landroid/net/Uri;
    const-string v5, "url"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 457
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    const-string v4, "link"

    const-string v5, "http://www.mcdonalds.com/usmobile/en/your_questions/our_food.html?survey=no"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-class v4, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {p0, v4, v0}, Lcom/mcdonalds/app/MainActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 464
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :goto_1
    return v3

    .line 454
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 464
    goto :goto_1
.end method

.method private startNutrition(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-string v1, "startNutrition"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const-string v1, "nutritionInfo"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nutrition_item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 423
    .local v6, "uri":Landroid/net/Uri;
    const-string v1, "recipeId"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "recipeId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 425
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    move v0, v7

    .line 426
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

    .line 142
    const-string v0, "store_locator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;-><init>()V

    .line 232
    :goto_0
    return-object v0

    .line 146
    :cond_0
    const-string v0, "account_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lcom/mcdonalds/app/account/AccountProfileFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/account/AccountProfileFragment;-><init>()V

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "signout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/SignOutFragment;-><init>()V

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "sign_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;-><init>()V

    goto :goto_0

    .line 158
    :cond_3
    sget-object v0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;-><init>()V

    goto :goto_0

    .line 162
    :cond_4
    const-string v0, "signin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    new-instance v0, Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/SignInFragment;-><init>()V

    goto :goto_0

    .line 166
    :cond_5
    const-string v0, "tutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    new-instance v0, Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;-><init>()V

    goto :goto_0

    .line 170
    :cond_6
    const-string v0, "register"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    new-instance v0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;-><init>()V

    goto :goto_0

    .line 174
    :cond_7
    const-string v0, "web"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    new-instance v0, Lcom/mcdonalds/app/web/WebFragment;

    const v1, 0x7f0907d4

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/web/WebFragment;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_8
    const-string v0, "about_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    new-instance v0, Lcom/mcdonalds/app/ui/about/AboutAppFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;-><init>()V

    goto/16 :goto_0

    .line 182
    :cond_9
    const-string v0, "config_select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    new-instance v0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;-><init>()V

    goto/16 :goto_0

    .line 186
    :cond_a
    const-string v0, "location_select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    new-instance v0, Lcom/mcdonalds/app/ui/LocationSelectFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/LocationSelectFragment;-><init>()V

    goto/16 :goto_0

    .line 190
    :cond_b
    const-string v0, "nutrition_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;-><init>()V

    goto/16 :goto_0

    .line 194
    :cond_c
    const-string v0, "mail_resend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    new-instance v0, Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;-><init>()V

    goto/16 :goto_0

    .line 198
    :cond_d
    const-string v0, "mail_validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 199
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;-><init>()V

    goto/16 :goto_0

    .line 202
    :cond_e
    const-string v0, "about_mcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    new-instance v0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;-><init>()V

    goto/16 :goto_0

    .line 205
    :cond_f
    const-string v0, "gmalite_signin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;-><init>()V

    goto/16 :goto_0

    .line 208
    :cond_10
    const-string v0, "gmalite_sign_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 209
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;-><init>()V

    goto/16 :goto_0

    .line 211
    :cond_11
    sget-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;-><init>()V

    goto/16 :goto_0

    .line 214
    :cond_12
    const-string v0, "literesetpassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 215
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;-><init>()V

    goto/16 :goto_0

    .line 217
    :cond_13
    const-string v0, "litepolicyupdates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 218
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;-><init>()V

    goto/16 :goto_0

    .line 220
    :cond_14
    const-string v0, "lite_account_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 221
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;-><init>()V

    goto/16 :goto_0

    .line 223
    :cond_15
    const-string v0, "liteverifyemail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 224
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;-><init>()V

    goto/16 :goto_0

    .line 226
    :cond_16
    const-string v0, "msa_not_logged_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 227
    new-instance v0, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;-><init>()V

    goto/16 :goto_0

    .line 229
    :cond_17
    const-string v0, "msa_logged_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 230
    new-instance v0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;-><init>()V

    goto/16 :goto_0

    .line 232
    :cond_18
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;-><init>()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 252
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 255
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.home"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "home":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const-string v2, "dashboard"

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "fragment"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "screen":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/MainActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/MainActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 108
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 109
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getContainerResource()I

    move-result v5

    invoke-virtual {v4, v5, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 111
    invoke-direct {p0}, Lcom/mcdonalds/app/MainActivity;->initValidAuthorities()V

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/mcdonalds/app/MainActivity;->openLink(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Intent;)V

    .line 114
    return-void

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "screen":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 105
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onDestroy()V

    .line 132
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 133
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-static {}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackAppFinish()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v5, "onNewIntent"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 264
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 266
    const-string v5, "REFRESH_LAST_ORDER"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 270
    :cond_0
    const-string v5, "fragment"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "screen":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BUNDLE_OFFER_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 274
    .local v3, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/mcdonalds/app/MainActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .line 276
    .local v2, "fragment":Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->setPushOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 305
    .end local v2    # "fragment":Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .end local v3    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v4    # "screen":Ljava/lang/String;
    :goto_0
    return-void

    .line 281
    .restart local v4    # "screen":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.dashboard.newPromoWorkflow"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "GO_TO_OFFER"

    const-string v6, "GO_TO_OFFER"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v5, "extra_offer"

    const-string v6, "extra_offer"

    .line 289
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v5, "GO_TO_PRODUCT"

    const-string v6, "GO_TO_PRODUCT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    const-string v5, "PRODUCT_RECIPE_ID"

    const-string v6, "PRODUCT_RECIPE_ID"

    .line 295
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 294
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, v4, v0}, Lcom/mcdonalds/app/MainActivity;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 304
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "screen":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0, v1, v7, p1}, Lcom/mcdonalds/app/MainActivity;->openLink(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    .restart local v4    # "screen":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/MainActivity;->showFragment(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onResume()V

    .line 125
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setLastActive(J)V

    .line 126
    return-void
.end method

.method protected shouldAutoSetParentIntent()Z
    .locals 2

    .prologue
    const-string v0, "shouldAutoSetParentIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldNavigateUp()Z
    .locals 2

    .prologue
    const-string v0, "shouldNavigateUp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
